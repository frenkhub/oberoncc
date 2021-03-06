module Skel where


	import Abs
	import ErrM
	type Result = Err String

	failure :: Show a => a -> Result
	failure x = Bad $ "Undefined case: " ++ show x

	transId :: Id -> Result
	transId x = case x of
	  Id str  -> failure x


	transModule :: Module -> Result
	transModule x = case x of
	  Module id0 decs ini id  -> failure x


	transDec :: Dec -> Result
	transDec x = case x of
	  Fun id par rettp decs ini  -> failure x
	  Var ids type'  -> failure x
	  Con id exp  -> failure x


	transPar :: Par -> Result
	transPar x = case x of
	  ParYes secs  -> failure x
	  ParNo  -> failure x


	transSec :: Sec -> Result
	transSec x = case x of
	  Val ids type'  -> failure x
	  Res ids type'  -> failure x


	transRetTp :: RetTp -> Result
	transRetTp x = case x of
	  RetTpYes type'  -> failure x
	  RetTpNo  -> failure x


	transIni :: Ini -> Result
	transIni x = case x of
	  IniYes stms  -> failure x
	  IniNo  -> failure x


	transStm :: Stm -> Result
	transStm x = case x of
	  Decl dec  -> failure x
	  Ass exp0 exp  -> failure x
	  Call id arg  -> failure x
	  Break  -> failure x
	  Ret retexp  -> failure x
	  GoOn  -> failure x
	  While exp stms  -> failure x
	  Repeat stms exp  -> failure x
	  Loop stms  -> failure x
	  Case exp branchs el  -> failure x
	  If exp stms elifs el  -> failure x


	transRetExp :: RetExp -> Result
	transRetExp x = case x of
	  RetExpYes exp  -> failure x
	  RetExpNo  -> failure x


	transArg :: Arg -> Result
	transArg x = case x of
	  ArgYes exps  -> failure x
	  ArgNo  -> failure x


	transBranch :: Branch -> Result
	transBranch x = case x of
	  Branch exp stms  -> failure x


	transElIf :: ElIf -> Result
	transElIf x = case x of
	  ElIf exp stms  -> failure x


	transEl :: El -> Result
	transEl x = case x of
	  ElYes stms  -> failure x
	  ElNo  -> failure x


	transType :: Type -> Result
	transType x = case x of
	  Tint  -> failure x
	  Tbool  -> failure x
	  Tchar  -> failure x
	  Tstring  -> failure x
	  Tarray exp type'  -> failure x
	  Tpointer type'  -> failure x
	  Treal  -> failure x
	  Tvoid  -> failure x


	transExp :: Exp -> Result
	transExp x = case x of
	  Equ exp0 exp  -> failure x
	  Neq exp0 exp  -> failure x
	  Lt exp0 exp  -> failure x
	  LtE exp0 exp  -> failure x
	  Gt exp0 exp  -> failure x
	  GtE exp0 exp  -> failure x
	  Add exp0 exp  -> failure x
	  Sub exp0 exp  -> failure x
	  Or exp0 exp  -> failure x
	  DivI exp0 exp  -> failure x
	  Mod exp0 exp  -> failure x
	  Mul exp0 exp  -> failure x
	  Div exp0 exp  -> failure x
	  And exp0 exp  -> failure x
	  Not exp  -> failure x
	  Neg exp  -> failure x
	  Dref exp  -> failure x
	  TRUE  -> failure x
	  FALSE  -> failure x
	  INT n  -> failure x
	  REAL d  -> failure x
	  CHAR c  -> failure x
	  STRING str  -> failure x
	  ID id  -> failure x
	  ARR id exps  -> failure x
	  CALL id exps  -> failure x



