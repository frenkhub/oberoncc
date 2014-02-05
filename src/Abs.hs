
module Abs where


	newtype Id = Id ((Int,Int),String) deriving (Eq,Ord,Show)

	data Module =
		Module Id [Stm] Id
		deriving (Eq,Ord,Show)

	data Pass =
			ByV
		|	ByVR
		deriving (Eq,Ord,Show)

	data Stm =
		Fun Id [(Pass, Id, Type)] Type [Stm]
		| Var [(Id, Type)]
		| Const Id Exp
		| Assign Exp Exp
		| Call Id [Exp]
		| Break
		| Return (Maybe Exp)
		| GoOn
		| While Exp [Stm]
		| Repeat [Stm] Exp
		| Loop [Stm]
		| Case Exp [(Exp, [Stm])] (Maybe [Stm])
		| If [(Exp, [Stm])] (Maybe [Stm])
		deriving (Eq,Ord,Show)

	data Type =
		Tint
		| Tbool
		| Tchar
		| Tstring
		| Tarray Exp Type
		| Tpointer Type
		| Treal
		| Tvoid
		| Tnotvoid
		deriving (Eq,Ord,Show)

	data Exp =
		Bin String Exp Exp
		|	Una String Exp
		| TRUE
		| FALSE
		| INT Integer
		| REAL Double
		| CHAR Char
		| STRING String
		| ID Id
		| ARR Id [Exp]
		| CALL Id [Exp]
		deriving (Eq,Ord,Show)

