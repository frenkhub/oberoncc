{-# OPTIONS -fno-warn-incomplete-patterns #-}
module PrintgOberon where

-- pretty-printer generated by the BNF converter

import AbsgOberon
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : "," :ts -> showString t . space "," . rend i ts
    t  : ")" :ts -> showString t . showChar ')' . rend i ts
    t  : "]" :ts -> showString t . showChar ']' . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else (' ':s))

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: [a] -> Doc
  prtList = concatD . map (prt 0)

instance Print a => Print [a] where
  prt _ = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)



instance Print Id where
  prt _ (Id (_,i)) = doc (showString ( i))
  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])



instance Print Module where
  prt i e = case e of
   Module id0 decs ini id -> prPrec i 0 (concatD [doc (showString "MODULE") , prt 0 id0 , doc (showString ";") , prt 0 decs , prt 0 ini , doc (showString "END") , prt 0 id , doc (showString ".")])


instance Print Dec where
  prt i e = case e of
   Fun id par rettp decs ini -> prPrec i 0 (concatD [doc (showString "PROCEDURE") , prt 0 id , prt 0 par , prt 0 rettp , doc (showString ";") , prt 0 decs , prt 0 ini , doc (showString "END")])
   Var ids type' -> prPrec i 0 (concatD [doc (showString "VAR") , prt 0 ids , doc (showString ":") , prt 0 type'])
   Con id exp -> prPrec i 0 (concatD [doc (showString "CONST") , prt 0 id , doc (showString "=") , prt 0 exp])

  prtList es = case es of
   [] -> (concatD [])
   x:xs -> (concatD [prt 0 x , doc (showString ";") , prt 0 xs])

instance Print Par where
  prt i e = case e of
   ParYes secs -> prPrec i 0 (concatD [doc (showString "(") , prt 0 secs , doc (showString ")")])
   ParNo  -> prPrec i 0 (concatD [])


instance Print Sec where
  prt i e = case e of
   Val ids type' -> prPrec i 0 (concatD [prt 0 ids , doc (showString ":") , prt 0 type'])
   Res ids type' -> prPrec i 0 (concatD [doc (showString "VAR") , prt 0 ids , doc (showString ":") , prt 0 type'])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ";") , prt 0 xs])

instance Print RetTp where
  prt i e = case e of
   RetTpYes type' -> prPrec i 0 (concatD [doc (showString ":") , prt 0 type'])
   RetTpNo  -> prPrec i 0 (concatD [])


instance Print Ini where
  prt i e = case e of
   IniYes stms -> prPrec i 0 (concatD [doc (showString "BEGIN") , prt 0 stms])
   IniNo  -> prPrec i 0 (concatD [])


instance Print Stm where
  prt i e = case e of
   Decl dec -> prPrec i 0 (concatD [prt 0 dec])
   Ass exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString ":=") , prt 0 exp])
   Call id arg -> prPrec i 0 (concatD [prt 0 id , prt 0 arg])
   Break  -> prPrec i 0 (concatD [doc (showString "EXIT")])
   Ret retexp -> prPrec i 0 (concatD [doc (showString "RETURN") , prt 0 retexp])
   GoOn  -> prPrec i 0 (concatD [doc (showString "CONTINUE")])
   While exp stms -> prPrec i 0 (concatD [doc (showString "WHILE") , prt 0 exp , doc (showString "DO") , prt 0 stms , doc (showString "END")])
   Repeat stms exp -> prPrec i 0 (concatD [doc (showString "REPEAT") , prt 0 stms , doc (showString "UNTIL") , prt 0 exp])
   Loop stms -> prPrec i 0 (concatD [doc (showString "LOOP") , prt 0 stms , doc (showString "END")])
   Case exp branchs el -> prPrec i 0 (concatD [doc (showString "CASE") , prt 0 exp , doc (showString "OF") , prt 0 branchs , prt 0 el , doc (showString "END")])
   If exp stms elifs el -> prPrec i 0 (concatD [doc (showString "IF") , prt 0 exp , doc (showString "THEN") , prt 0 stms , prt 0 elifs , prt 0 el , doc (showString "END")])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ";") , prt 0 xs])

instance Print RetExp where
  prt i e = case e of
   RetExpYes exp -> prPrec i 0 (concatD [prt 0 exp])
   RetExpNo  -> prPrec i 0 (concatD [])


instance Print Arg where
  prt i e = case e of
   ArgYes exps -> prPrec i 0 (concatD [doc (showString "(") , prt 0 exps , doc (showString ")")])
   ArgNo  -> prPrec i 0 (concatD [])


instance Print Branch where
  prt i e = case e of
   Branch exp stms -> prPrec i 0 (concatD [prt 0 exp , doc (showString ":") , prt 0 stms])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString "|") , prt 0 xs])

instance Print ElIf where
  prt i e = case e of
   ElIf exp stms -> prPrec i 0 (concatD [doc (showString "ELSEIF") , prt 0 exp , doc (showString "THEN") , prt 0 stms])

  prtList es = case es of
   [] -> (concatD [])
   x:xs -> (concatD [prt 0 x , prt 0 xs])

instance Print El where
  prt i e = case e of
   ElYes stms -> prPrec i 0 (concatD [doc (showString "ELSE") , prt 0 stms])
   ElNo  -> prPrec i 0 (concatD [])


instance Print Type where
  prt i e = case e of
   Tint  -> prPrec i 0 (concatD [doc (showString "INTEGER")])
   Tbool  -> prPrec i 0 (concatD [doc (showString "BOOLEAN")])
   Tchar  -> prPrec i 0 (concatD [doc (showString "CHAR")])
   Tstring  -> prPrec i 0 (concatD [doc (showString "STRING")])
   Tarray exp type' -> prPrec i 0 (concatD [doc (showString "ARRAY") , prt 0 exp , doc (showString "OF") , prt 0 type'])
   Tpointer type' -> prPrec i 0 (concatD [doc (showString "POINTER TO") , prt 0 type'])
   Treal  -> prPrec i 0 (concatD [doc (showString "REAL")])
   Tvoid  -> prPrec i 0 (concatD [doc (showString "Tvoid")])


instance Print Exp where
  prt i e = case e of
   Equ exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString "=") , prt 1 exp])
   Neq exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString "#") , prt 1 exp])
   Lt exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString "<") , prt 1 exp])
   LtE exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString "<=") , prt 1 exp])
   Gt exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString ">") , prt 1 exp])
   GtE exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString ">=") , prt 1 exp])
   Add exp0 exp -> prPrec i 1 (concatD [prt 1 exp0 , doc (showString "+") , prt 2 exp])
   Sub exp0 exp -> prPrec i 1 (concatD [prt 1 exp0 , doc (showString "-") , prt 2 exp])
   Or exp0 exp -> prPrec i 1 (concatD [prt 1 exp0 , doc (showString "OR") , prt 2 exp])
   DivI exp0 exp -> prPrec i 2 (concatD [prt 2 exp0 , doc (showString "DIV") , prt 3 exp])
   Mod exp0 exp -> prPrec i 2 (concatD [prt 2 exp0 , doc (showString "MOD") , prt 3 exp])
   Mul exp0 exp -> prPrec i 2 (concatD [prt 2 exp0 , doc (showString "*") , prt 3 exp])
   Div exp0 exp -> prPrec i 2 (concatD [prt 2 exp0 , doc (showString "/") , prt 3 exp])
   And exp0 exp -> prPrec i 2 (concatD [prt 2 exp0 , doc (showString "&") , prt 3 exp])
   Not exp -> prPrec i 3 (concatD [doc (showString "~") , prt 3 exp])
   Neg exp -> prPrec i 3 (concatD [doc (showString "-") , prt 3 exp])
   Dref exp -> prPrec i 4 (concatD [prt 4 exp , doc (showString "^")])
   TRUE  -> prPrec i 5 (concatD [doc (showString "FALSE")])
   FALSE  -> prPrec i 5 (concatD [doc (showString "TRUE")])
   INT n -> prPrec i 5 (concatD [prt 0 n])
   REAL d -> prPrec i 5 (concatD [prt 0 d])
   CHAR c -> prPrec i 5 (concatD [prt 0 c])
   STRING str -> prPrec i 5 (concatD [prt 0 str])
   ID id -> prPrec i 5 (concatD [prt 0 id])
   ARR id exps -> prPrec i 5 (concatD [prt 0 id , doc (showString "[") , prt 0 exps , doc (showString "]")])
   CALL id exps -> prPrec i 5 (concatD [prt 0 id , doc (showString "(") , prt 0 exps , doc (showString ")")])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])


