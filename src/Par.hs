{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Par where
import Abs
import Lex
import ErrM

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 (Integer)
	| HappyAbsSyn5 (Double)
	| HappyAbsSyn6 (Char)
	| HappyAbsSyn7 (String)
	| HappyAbsSyn8 (Id)
	| HappyAbsSyn9 (Module)
	| HappyAbsSyn10 ([Stm])
	| HappyAbsSyn11 (Stm)
	| HappyAbsSyn12 ([(Pass, Id, Type)])
	| HappyAbsSyn13 ([[(Pass, Id, Type)]])
	| HappyAbsSyn15 ([Id])
	| HappyAbsSyn16 (Type)
	| HappyAbsSyn20 (Maybe Exp)
	| HappyAbsSyn21 ([Exp])
	| HappyAbsSyn22 ((Exp, [Stm]))
	| HappyAbsSyn23 ([(Exp, [Stm])])
	| HappyAbsSyn24 ((Exp,[Stm]))
	| HappyAbsSyn25 (Maybe [Stm])
	| HappyAbsSyn26 ([(Exp,[Stm])])
	| HappyAbsSyn28 (Exp)

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107,
 action_108,
 action_109,
 action_110,
 action_111,
 action_112,
 action_113,
 action_114,
 action_115,
 action_116,
 action_117,
 action_118,
 action_119,
 action_120,
 action_121,
 action_122,
 action_123,
 action_124,
 action_125,
 action_126,
 action_127,
 action_128,
 action_129,
 action_130,
 action_131,
 action_132,
 action_133,
 action_134,
 action_135,
 action_136,
 action_137,
 action_138,
 action_139,
 action_140,
 action_141,
 action_142,
 action_143,
 action_144,
 action_145,
 action_146,
 action_147,
 action_148,
 action_149,
 action_150,
 action_151,
 action_152,
 action_153,
 action_154,
 action_155,
 action_156,
 action_157,
 action_158,
 action_159,
 action_160,
 action_161,
 action_162,
 action_163,
 action_164,
 action_165,
 action_166,
 action_167,
 action_168,
 action_169,
 action_170,
 action_171,
 action_172,
 action_173 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyReduce_1,
 happyReduce_2,
 happyReduce_3,
 happyReduce_4,
 happyReduce_5,
 happyReduce_6,
 happyReduce_7,
 happyReduce_8,
 happyReduce_9,
 happyReduce_10,
 happyReduce_11,
 happyReduce_12,
 happyReduce_13,
 happyReduce_14,
 happyReduce_15,
 happyReduce_16,
 happyReduce_17,
 happyReduce_18,
 happyReduce_19,
 happyReduce_20,
 happyReduce_21,
 happyReduce_22,
 happyReduce_23,
 happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
 happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45,
 happyReduce_46,
 happyReduce_47,
 happyReduce_48,
 happyReduce_49,
 happyReduce_50,
 happyReduce_51,
 happyReduce_52,
 happyReduce_53,
 happyReduce_54,
 happyReduce_55,
 happyReduce_56,
 happyReduce_57,
 happyReduce_58,
 happyReduce_59,
 happyReduce_60,
 happyReduce_61,
 happyReduce_62,
 happyReduce_63,
 happyReduce_64,
 happyReduce_65,
 happyReduce_66,
 happyReduce_67,
 happyReduce_68,
 happyReduce_69,
 happyReduce_70,
 happyReduce_71,
 happyReduce_72,
 happyReduce_73,
 happyReduce_74,
 happyReduce_75,
 happyReduce_76,
 happyReduce_77,
 happyReduce_78,
 happyReduce_79,
 happyReduce_80,
 happyReduce_81,
 happyReduce_82,
 happyReduce_83,
 happyReduce_84,
 happyReduce_85,
 happyReduce_86,
 happyReduce_87,
 happyReduce_88,
 happyReduce_89 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

action_0 (71) = happyShift action_4
action_0 (9) = happyGoto action_3
action_0 _ = happyFail

action_1 (91) = happyShift action_2
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (97) = happyAccept
action_3 _ = happyFail

action_4 (95) = happyShift action_6
action_4 (8) = happyGoto action_5
action_4 _ = happyFail

action_5 (47) = happyShift action_7
action_5 _ = happyFail

action_6 _ = happyReduce_5

action_7 (10) = happyGoto action_8
action_7 _ = happyReduce_7

action_8 (54) = happyShift action_11
action_8 (58) = happyShift action_12
action_8 (75) = happyShift action_13
action_8 (84) = happyShift action_14
action_8 (11) = happyGoto action_9
action_8 (17) = happyGoto action_10
action_8 _ = happyReduce_23

action_9 (47) = happyShift action_48
action_9 _ = happyFail

action_10 (64) = happyShift action_47
action_10 _ = happyFail

action_11 (37) = happyShift action_32
action_11 (56) = happyShift action_33
action_11 (59) = happyShift action_34
action_11 (65) = happyShift action_35
action_11 (66) = happyShift action_36
action_11 (67) = happyShift action_37
action_11 (69) = happyShift action_38
action_11 (77) = happyShift action_39
action_11 (78) = happyShift action_40
action_11 (81) = happyShift action_41
action_11 (85) = happyShift action_42
action_11 (90) = happyShift action_43
action_11 (91) = happyShift action_2
action_11 (92) = happyShift action_44
action_11 (93) = happyShift action_45
action_11 (94) = happyShift action_46
action_11 (95) = happyShift action_6
action_11 (4) = happyGoto action_19
action_11 (5) = happyGoto action_20
action_11 (6) = happyGoto action_21
action_11 (7) = happyGoto action_22
action_11 (8) = happyGoto action_23
action_11 (18) = happyGoto action_24
action_11 (19) = happyGoto action_25
action_11 (28) = happyGoto action_26
action_11 (29) = happyGoto action_27
action_11 (30) = happyGoto action_28
action_11 (31) = happyGoto action_29
action_11 (32) = happyGoto action_30
action_11 (33) = happyGoto action_31
action_11 _ = happyFail

action_12 (95) = happyShift action_6
action_12 (8) = happyGoto action_18
action_12 _ = happyFail

action_13 (95) = happyShift action_6
action_13 (8) = happyGoto action_17
action_13 _ = happyFail

action_14 (95) = happyShift action_6
action_14 (8) = happyGoto action_15
action_14 (15) = happyGoto action_16
action_14 _ = happyFail

action_15 (41) = happyShift action_84
action_15 _ = happyReduce_18

action_16 (45) = happyShift action_83
action_16 _ = happyFail

action_17 (37) = happyShift action_82
action_17 (12) = happyGoto action_81
action_17 _ = happyReduce_13

action_18 (50) = happyShift action_80
action_18 _ = happyFail

action_19 _ = happyReduce_79

action_20 _ = happyReduce_80

action_21 _ = happyReduce_81

action_22 _ = happyReduce_82

action_23 (37) = happyShift action_78
action_23 (47) = happyReduce_39
action_23 (62) = happyReduce_39
action_23 (63) = happyReduce_39
action_23 (64) = happyReduce_39
action_23 (83) = happyReduce_39
action_23 (86) = happyShift action_79
action_23 (89) = happyReduce_39
action_23 (21) = happyGoto action_77
action_23 _ = happyReduce_83

action_24 _ = happyReduce_22

action_25 (47) = happyShift action_76
action_25 _ = happyReduce_24

action_26 (35) = happyShift action_69
action_26 (46) = happyShift action_70
action_26 (48) = happyShift action_71
action_26 (49) = happyShift action_72
action_26 (50) = happyShift action_73
action_26 (51) = happyShift action_74
action_26 (52) = happyShift action_75
action_26 _ = happyFail

action_27 (40) = happyShift action_66
action_27 (42) = happyShift action_67
action_27 (73) = happyShift action_68
action_27 _ = happyReduce_62

action_28 (36) = happyShift action_61
action_28 (39) = happyShift action_62
action_28 (44) = happyShift action_63
action_28 (60) = happyShift action_64
action_28 (70) = happyShift action_65
action_28 _ = happyReduce_66

action_29 _ = happyReduce_72

action_30 (88) = happyShift action_60
action_30 _ = happyReduce_74

action_31 _ = happyReduce_76

action_32 (37) = happyShift action_32
action_32 (66) = happyShift action_36
action_32 (81) = happyShift action_41
action_32 (90) = happyShift action_43
action_32 (91) = happyShift action_2
action_32 (92) = happyShift action_44
action_32 (93) = happyShift action_45
action_32 (94) = happyShift action_46
action_32 (95) = happyShift action_6
action_32 (4) = happyGoto action_19
action_32 (5) = happyGoto action_20
action_32 (6) = happyGoto action_21
action_32 (7) = happyGoto action_22
action_32 (8) = happyGoto action_50
action_32 (28) = happyGoto action_59
action_32 (29) = happyGoto action_27
action_32 (30) = happyGoto action_28
action_32 (31) = happyGoto action_29
action_32 (32) = happyGoto action_30
action_32 (33) = happyGoto action_31
action_32 _ = happyFail

action_33 (37) = happyShift action_32
action_33 (66) = happyShift action_36
action_33 (81) = happyShift action_41
action_33 (90) = happyShift action_43
action_33 (91) = happyShift action_2
action_33 (92) = happyShift action_44
action_33 (93) = happyShift action_45
action_33 (94) = happyShift action_46
action_33 (95) = happyShift action_6
action_33 (4) = happyGoto action_19
action_33 (5) = happyGoto action_20
action_33 (6) = happyGoto action_21
action_33 (7) = happyGoto action_22
action_33 (8) = happyGoto action_50
action_33 (28) = happyGoto action_58
action_33 (29) = happyGoto action_27
action_33 (30) = happyGoto action_28
action_33 (31) = happyGoto action_29
action_33 (32) = happyGoto action_30
action_33 (33) = happyGoto action_31
action_33 _ = happyFail

action_34 _ = happyReduce_30

action_35 _ = happyReduce_28

action_36 _ = happyReduce_77

action_37 (37) = happyShift action_32
action_37 (66) = happyShift action_36
action_37 (81) = happyShift action_41
action_37 (90) = happyShift action_43
action_37 (91) = happyShift action_2
action_37 (92) = happyShift action_44
action_37 (93) = happyShift action_45
action_37 (94) = happyShift action_46
action_37 (95) = happyShift action_6
action_37 (4) = happyGoto action_19
action_37 (5) = happyGoto action_20
action_37 (6) = happyGoto action_21
action_37 (7) = happyGoto action_22
action_37 (8) = happyGoto action_50
action_37 (28) = happyGoto action_57
action_37 (29) = happyGoto action_27
action_37 (30) = happyGoto action_28
action_37 (31) = happyGoto action_29
action_37 (32) = happyGoto action_30
action_37 (33) = happyGoto action_31
action_37 _ = happyFail

action_38 (37) = happyShift action_32
action_38 (56) = happyShift action_33
action_38 (59) = happyShift action_34
action_38 (65) = happyShift action_35
action_38 (66) = happyShift action_36
action_38 (67) = happyShift action_37
action_38 (69) = happyShift action_38
action_38 (77) = happyShift action_39
action_38 (78) = happyShift action_40
action_38 (81) = happyShift action_41
action_38 (85) = happyShift action_42
action_38 (90) = happyShift action_43
action_38 (91) = happyShift action_2
action_38 (92) = happyShift action_44
action_38 (93) = happyShift action_45
action_38 (94) = happyShift action_46
action_38 (95) = happyShift action_6
action_38 (4) = happyGoto action_19
action_38 (5) = happyGoto action_20
action_38 (6) = happyGoto action_21
action_38 (7) = happyGoto action_22
action_38 (8) = happyGoto action_23
action_38 (18) = happyGoto action_56
action_38 (19) = happyGoto action_25
action_38 (28) = happyGoto action_26
action_38 (29) = happyGoto action_27
action_38 (30) = happyGoto action_28
action_38 (31) = happyGoto action_29
action_38 (32) = happyGoto action_30
action_38 (33) = happyGoto action_31
action_38 _ = happyFail

action_39 (37) = happyShift action_32
action_39 (56) = happyShift action_33
action_39 (59) = happyShift action_34
action_39 (65) = happyShift action_35
action_39 (66) = happyShift action_36
action_39 (67) = happyShift action_37
action_39 (69) = happyShift action_38
action_39 (77) = happyShift action_39
action_39 (78) = happyShift action_40
action_39 (81) = happyShift action_41
action_39 (85) = happyShift action_42
action_39 (90) = happyShift action_43
action_39 (91) = happyShift action_2
action_39 (92) = happyShift action_44
action_39 (93) = happyShift action_45
action_39 (94) = happyShift action_46
action_39 (95) = happyShift action_6
action_39 (4) = happyGoto action_19
action_39 (5) = happyGoto action_20
action_39 (6) = happyGoto action_21
action_39 (7) = happyGoto action_22
action_39 (8) = happyGoto action_23
action_39 (18) = happyGoto action_55
action_39 (19) = happyGoto action_25
action_39 (28) = happyGoto action_26
action_39 (29) = happyGoto action_27
action_39 (30) = happyGoto action_28
action_39 (31) = happyGoto action_29
action_39 (32) = happyGoto action_30
action_39 (33) = happyGoto action_31
action_39 _ = happyFail

action_40 (37) = happyShift action_32
action_40 (66) = happyShift action_36
action_40 (81) = happyShift action_41
action_40 (90) = happyShift action_43
action_40 (91) = happyShift action_2
action_40 (92) = happyShift action_44
action_40 (93) = happyShift action_45
action_40 (94) = happyShift action_46
action_40 (95) = happyShift action_6
action_40 (4) = happyGoto action_19
action_40 (5) = happyGoto action_20
action_40 (6) = happyGoto action_21
action_40 (7) = happyGoto action_22
action_40 (8) = happyGoto action_50
action_40 (20) = happyGoto action_53
action_40 (28) = happyGoto action_54
action_40 (29) = happyGoto action_27
action_40 (30) = happyGoto action_28
action_40 (31) = happyGoto action_29
action_40 (32) = happyGoto action_30
action_40 (33) = happyGoto action_31
action_40 _ = happyReduce_37

action_41 _ = happyReduce_78

action_42 (37) = happyShift action_32
action_42 (66) = happyShift action_36
action_42 (81) = happyShift action_41
action_42 (90) = happyShift action_43
action_42 (91) = happyShift action_2
action_42 (92) = happyShift action_44
action_42 (93) = happyShift action_45
action_42 (94) = happyShift action_46
action_42 (95) = happyShift action_6
action_42 (4) = happyGoto action_19
action_42 (5) = happyGoto action_20
action_42 (6) = happyGoto action_21
action_42 (7) = happyGoto action_22
action_42 (8) = happyGoto action_50
action_42 (28) = happyGoto action_52
action_42 (29) = happyGoto action_27
action_42 (30) = happyGoto action_28
action_42 (31) = happyGoto action_29
action_42 (32) = happyGoto action_30
action_42 (33) = happyGoto action_31
action_42 _ = happyFail

action_43 (37) = happyShift action_32
action_43 (66) = happyShift action_36
action_43 (81) = happyShift action_41
action_43 (90) = happyShift action_43
action_43 (91) = happyShift action_2
action_43 (92) = happyShift action_44
action_43 (93) = happyShift action_45
action_43 (94) = happyShift action_46
action_43 (95) = happyShift action_6
action_43 (4) = happyGoto action_19
action_43 (5) = happyGoto action_20
action_43 (6) = happyGoto action_21
action_43 (7) = happyGoto action_22
action_43 (8) = happyGoto action_50
action_43 (31) = happyGoto action_51
action_43 (32) = happyGoto action_30
action_43 (33) = happyGoto action_31
action_43 _ = happyFail

action_44 _ = happyReduce_2

action_45 _ = happyReduce_3

action_46 _ = happyReduce_4

action_47 (95) = happyShift action_6
action_47 (8) = happyGoto action_49
action_47 _ = happyFail

action_48 _ = happyReduce_8

action_49 (43) = happyShift action_127
action_49 _ = happyFail

action_50 (37) = happyShift action_126
action_50 (86) = happyShift action_79
action_50 _ = happyReduce_83

action_51 _ = happyReduce_73

action_52 (35) = happyShift action_69
action_52 (48) = happyShift action_71
action_52 (49) = happyShift action_72
action_52 (50) = happyShift action_73
action_52 (51) = happyShift action_74
action_52 (52) = happyShift action_75
action_52 (61) = happyShift action_125
action_52 _ = happyFail

action_53 _ = happyReduce_29

action_54 (35) = happyShift action_69
action_54 (48) = happyShift action_71
action_54 (49) = happyShift action_72
action_54 (50) = happyShift action_73
action_54 (51) = happyShift action_74
action_54 (52) = happyShift action_75
action_54 _ = happyReduce_36

action_55 (83) = happyShift action_124
action_55 _ = happyFail

action_56 (64) = happyShift action_123
action_56 _ = happyFail

action_57 (35) = happyShift action_69
action_57 (48) = happyShift action_71
action_57 (49) = happyShift action_72
action_57 (50) = happyShift action_73
action_57 (51) = happyShift action_74
action_57 (52) = happyShift action_75
action_57 (80) = happyShift action_122
action_57 _ = happyFail

action_58 (35) = happyShift action_69
action_58 (48) = happyShift action_71
action_58 (49) = happyShift action_72
action_58 (50) = happyShift action_73
action_58 (51) = happyShift action_74
action_58 (52) = happyShift action_75
action_58 (72) = happyShift action_121
action_58 _ = happyFail

action_59 (35) = happyShift action_69
action_59 (38) = happyShift action_120
action_59 (48) = happyShift action_71
action_59 (49) = happyShift action_72
action_59 (50) = happyShift action_73
action_59 (51) = happyShift action_74
action_59 (52) = happyShift action_75
action_59 _ = happyFail

action_60 _ = happyReduce_75

action_61 (37) = happyShift action_32
action_61 (66) = happyShift action_36
action_61 (81) = happyShift action_41
action_61 (90) = happyShift action_43
action_61 (91) = happyShift action_2
action_61 (92) = happyShift action_44
action_61 (93) = happyShift action_45
action_61 (94) = happyShift action_46
action_61 (95) = happyShift action_6
action_61 (4) = happyGoto action_19
action_61 (5) = happyGoto action_20
action_61 (6) = happyGoto action_21
action_61 (7) = happyGoto action_22
action_61 (8) = happyGoto action_50
action_61 (31) = happyGoto action_119
action_61 (32) = happyGoto action_30
action_61 (33) = happyGoto action_31
action_61 _ = happyFail

action_62 (37) = happyShift action_32
action_62 (66) = happyShift action_36
action_62 (81) = happyShift action_41
action_62 (90) = happyShift action_43
action_62 (91) = happyShift action_2
action_62 (92) = happyShift action_44
action_62 (93) = happyShift action_45
action_62 (94) = happyShift action_46
action_62 (95) = happyShift action_6
action_62 (4) = happyGoto action_19
action_62 (5) = happyGoto action_20
action_62 (6) = happyGoto action_21
action_62 (7) = happyGoto action_22
action_62 (8) = happyGoto action_50
action_62 (31) = happyGoto action_118
action_62 (32) = happyGoto action_30
action_62 (33) = happyGoto action_31
action_62 _ = happyFail

action_63 (37) = happyShift action_32
action_63 (66) = happyShift action_36
action_63 (81) = happyShift action_41
action_63 (90) = happyShift action_43
action_63 (91) = happyShift action_2
action_63 (92) = happyShift action_44
action_63 (93) = happyShift action_45
action_63 (94) = happyShift action_46
action_63 (95) = happyShift action_6
action_63 (4) = happyGoto action_19
action_63 (5) = happyGoto action_20
action_63 (6) = happyGoto action_21
action_63 (7) = happyGoto action_22
action_63 (8) = happyGoto action_50
action_63 (31) = happyGoto action_117
action_63 (32) = happyGoto action_30
action_63 (33) = happyGoto action_31
action_63 _ = happyFail

action_64 (37) = happyShift action_32
action_64 (66) = happyShift action_36
action_64 (81) = happyShift action_41
action_64 (90) = happyShift action_43
action_64 (91) = happyShift action_2
action_64 (92) = happyShift action_44
action_64 (93) = happyShift action_45
action_64 (94) = happyShift action_46
action_64 (95) = happyShift action_6
action_64 (4) = happyGoto action_19
action_64 (5) = happyGoto action_20
action_64 (6) = happyGoto action_21
action_64 (7) = happyGoto action_22
action_64 (8) = happyGoto action_50
action_64 (31) = happyGoto action_116
action_64 (32) = happyGoto action_30
action_64 (33) = happyGoto action_31
action_64 _ = happyFail

action_65 (37) = happyShift action_32
action_65 (66) = happyShift action_36
action_65 (81) = happyShift action_41
action_65 (90) = happyShift action_43
action_65 (91) = happyShift action_2
action_65 (92) = happyShift action_44
action_65 (93) = happyShift action_45
action_65 (94) = happyShift action_46
action_65 (95) = happyShift action_6
action_65 (4) = happyGoto action_19
action_65 (5) = happyGoto action_20
action_65 (6) = happyGoto action_21
action_65 (7) = happyGoto action_22
action_65 (8) = happyGoto action_50
action_65 (31) = happyGoto action_115
action_65 (32) = happyGoto action_30
action_65 (33) = happyGoto action_31
action_65 _ = happyFail

action_66 (37) = happyShift action_32
action_66 (66) = happyShift action_36
action_66 (81) = happyShift action_41
action_66 (90) = happyShift action_43
action_66 (91) = happyShift action_2
action_66 (92) = happyShift action_44
action_66 (93) = happyShift action_45
action_66 (94) = happyShift action_46
action_66 (95) = happyShift action_6
action_66 (4) = happyGoto action_19
action_66 (5) = happyGoto action_20
action_66 (6) = happyGoto action_21
action_66 (7) = happyGoto action_22
action_66 (8) = happyGoto action_50
action_66 (30) = happyGoto action_114
action_66 (31) = happyGoto action_29
action_66 (32) = happyGoto action_30
action_66 (33) = happyGoto action_31
action_66 _ = happyFail

action_67 (37) = happyShift action_32
action_67 (66) = happyShift action_36
action_67 (81) = happyShift action_41
action_67 (90) = happyShift action_43
action_67 (91) = happyShift action_2
action_67 (92) = happyShift action_44
action_67 (93) = happyShift action_45
action_67 (94) = happyShift action_46
action_67 (95) = happyShift action_6
action_67 (4) = happyGoto action_19
action_67 (5) = happyGoto action_20
action_67 (6) = happyGoto action_21
action_67 (7) = happyGoto action_22
action_67 (8) = happyGoto action_50
action_67 (30) = happyGoto action_113
action_67 (31) = happyGoto action_29
action_67 (32) = happyGoto action_30
action_67 (33) = happyGoto action_31
action_67 _ = happyFail

action_68 (37) = happyShift action_32
action_68 (66) = happyShift action_36
action_68 (81) = happyShift action_41
action_68 (90) = happyShift action_43
action_68 (91) = happyShift action_2
action_68 (92) = happyShift action_44
action_68 (93) = happyShift action_45
action_68 (94) = happyShift action_46
action_68 (95) = happyShift action_6
action_68 (4) = happyGoto action_19
action_68 (5) = happyGoto action_20
action_68 (6) = happyGoto action_21
action_68 (7) = happyGoto action_22
action_68 (8) = happyGoto action_50
action_68 (30) = happyGoto action_112
action_68 (31) = happyGoto action_29
action_68 (32) = happyGoto action_30
action_68 (33) = happyGoto action_31
action_68 _ = happyFail

action_69 (37) = happyShift action_32
action_69 (66) = happyShift action_36
action_69 (81) = happyShift action_41
action_69 (90) = happyShift action_43
action_69 (91) = happyShift action_2
action_69 (92) = happyShift action_44
action_69 (93) = happyShift action_45
action_69 (94) = happyShift action_46
action_69 (95) = happyShift action_6
action_69 (4) = happyGoto action_19
action_69 (5) = happyGoto action_20
action_69 (6) = happyGoto action_21
action_69 (7) = happyGoto action_22
action_69 (8) = happyGoto action_50
action_69 (29) = happyGoto action_111
action_69 (30) = happyGoto action_28
action_69 (31) = happyGoto action_29
action_69 (32) = happyGoto action_30
action_69 (33) = happyGoto action_31
action_69 _ = happyFail

action_70 (37) = happyShift action_32
action_70 (66) = happyShift action_36
action_70 (81) = happyShift action_41
action_70 (90) = happyShift action_43
action_70 (91) = happyShift action_2
action_70 (92) = happyShift action_44
action_70 (93) = happyShift action_45
action_70 (94) = happyShift action_46
action_70 (95) = happyShift action_6
action_70 (4) = happyGoto action_19
action_70 (5) = happyGoto action_20
action_70 (6) = happyGoto action_21
action_70 (7) = happyGoto action_22
action_70 (8) = happyGoto action_50
action_70 (28) = happyGoto action_110
action_70 (29) = happyGoto action_27
action_70 (30) = happyGoto action_28
action_70 (31) = happyGoto action_29
action_70 (32) = happyGoto action_30
action_70 (33) = happyGoto action_31
action_70 _ = happyFail

action_71 (37) = happyShift action_32
action_71 (66) = happyShift action_36
action_71 (81) = happyShift action_41
action_71 (90) = happyShift action_43
action_71 (91) = happyShift action_2
action_71 (92) = happyShift action_44
action_71 (93) = happyShift action_45
action_71 (94) = happyShift action_46
action_71 (95) = happyShift action_6
action_71 (4) = happyGoto action_19
action_71 (5) = happyGoto action_20
action_71 (6) = happyGoto action_21
action_71 (7) = happyGoto action_22
action_71 (8) = happyGoto action_50
action_71 (29) = happyGoto action_109
action_71 (30) = happyGoto action_28
action_71 (31) = happyGoto action_29
action_71 (32) = happyGoto action_30
action_71 (33) = happyGoto action_31
action_71 _ = happyFail

action_72 (37) = happyShift action_32
action_72 (66) = happyShift action_36
action_72 (81) = happyShift action_41
action_72 (90) = happyShift action_43
action_72 (91) = happyShift action_2
action_72 (92) = happyShift action_44
action_72 (93) = happyShift action_45
action_72 (94) = happyShift action_46
action_72 (95) = happyShift action_6
action_72 (4) = happyGoto action_19
action_72 (5) = happyGoto action_20
action_72 (6) = happyGoto action_21
action_72 (7) = happyGoto action_22
action_72 (8) = happyGoto action_50
action_72 (29) = happyGoto action_108
action_72 (30) = happyGoto action_28
action_72 (31) = happyGoto action_29
action_72 (32) = happyGoto action_30
action_72 (33) = happyGoto action_31
action_72 _ = happyFail

action_73 (37) = happyShift action_32
action_73 (66) = happyShift action_36
action_73 (81) = happyShift action_41
action_73 (90) = happyShift action_43
action_73 (91) = happyShift action_2
action_73 (92) = happyShift action_44
action_73 (93) = happyShift action_45
action_73 (94) = happyShift action_46
action_73 (95) = happyShift action_6
action_73 (4) = happyGoto action_19
action_73 (5) = happyGoto action_20
action_73 (6) = happyGoto action_21
action_73 (7) = happyGoto action_22
action_73 (8) = happyGoto action_50
action_73 (29) = happyGoto action_107
action_73 (30) = happyGoto action_28
action_73 (31) = happyGoto action_29
action_73 (32) = happyGoto action_30
action_73 (33) = happyGoto action_31
action_73 _ = happyFail

action_74 (37) = happyShift action_32
action_74 (66) = happyShift action_36
action_74 (81) = happyShift action_41
action_74 (90) = happyShift action_43
action_74 (91) = happyShift action_2
action_74 (92) = happyShift action_44
action_74 (93) = happyShift action_45
action_74 (94) = happyShift action_46
action_74 (95) = happyShift action_6
action_74 (4) = happyGoto action_19
action_74 (5) = happyGoto action_20
action_74 (6) = happyGoto action_21
action_74 (7) = happyGoto action_22
action_74 (8) = happyGoto action_50
action_74 (29) = happyGoto action_106
action_74 (30) = happyGoto action_28
action_74 (31) = happyGoto action_29
action_74 (32) = happyGoto action_30
action_74 (33) = happyGoto action_31
action_74 _ = happyFail

action_75 (37) = happyShift action_32
action_75 (66) = happyShift action_36
action_75 (81) = happyShift action_41
action_75 (90) = happyShift action_43
action_75 (91) = happyShift action_2
action_75 (92) = happyShift action_44
action_75 (93) = happyShift action_45
action_75 (94) = happyShift action_46
action_75 (95) = happyShift action_6
action_75 (4) = happyGoto action_19
action_75 (5) = happyGoto action_20
action_75 (6) = happyGoto action_21
action_75 (7) = happyGoto action_22
action_75 (8) = happyGoto action_50
action_75 (29) = happyGoto action_105
action_75 (30) = happyGoto action_28
action_75 (31) = happyGoto action_29
action_75 (32) = happyGoto action_30
action_75 (33) = happyGoto action_31
action_75 _ = happyFail

action_76 (37) = happyShift action_32
action_76 (56) = happyShift action_33
action_76 (59) = happyShift action_34
action_76 (65) = happyShift action_35
action_76 (66) = happyShift action_36
action_76 (67) = happyShift action_37
action_76 (69) = happyShift action_38
action_76 (77) = happyShift action_39
action_76 (78) = happyShift action_40
action_76 (81) = happyShift action_41
action_76 (85) = happyShift action_42
action_76 (90) = happyShift action_43
action_76 (91) = happyShift action_2
action_76 (92) = happyShift action_44
action_76 (93) = happyShift action_45
action_76 (94) = happyShift action_46
action_76 (95) = happyShift action_6
action_76 (4) = happyGoto action_19
action_76 (5) = happyGoto action_20
action_76 (6) = happyGoto action_21
action_76 (7) = happyGoto action_22
action_76 (8) = happyGoto action_23
action_76 (18) = happyGoto action_104
action_76 (19) = happyGoto action_25
action_76 (28) = happyGoto action_26
action_76 (29) = happyGoto action_27
action_76 (30) = happyGoto action_28
action_76 (31) = happyGoto action_29
action_76 (32) = happyGoto action_30
action_76 (33) = happyGoto action_31
action_76 _ = happyFail

action_77 _ = happyReduce_27

action_78 (37) = happyShift action_32
action_78 (66) = happyShift action_36
action_78 (81) = happyShift action_41
action_78 (90) = happyShift action_43
action_78 (91) = happyShift action_2
action_78 (92) = happyShift action_44
action_78 (93) = happyShift action_45
action_78 (94) = happyShift action_46
action_78 (95) = happyShift action_6
action_78 (4) = happyGoto action_19
action_78 (5) = happyGoto action_20
action_78 (6) = happyGoto action_21
action_78 (7) = happyGoto action_22
action_78 (8) = happyGoto action_50
action_78 (28) = happyGoto action_101
action_78 (29) = happyGoto action_27
action_78 (30) = happyGoto action_28
action_78 (31) = happyGoto action_29
action_78 (32) = happyGoto action_30
action_78 (33) = happyGoto action_31
action_78 (34) = happyGoto action_103
action_78 _ = happyReduce_87

action_79 (37) = happyShift action_32
action_79 (66) = happyShift action_36
action_79 (81) = happyShift action_41
action_79 (90) = happyShift action_43
action_79 (91) = happyShift action_2
action_79 (92) = happyShift action_44
action_79 (93) = happyShift action_45
action_79 (94) = happyShift action_46
action_79 (95) = happyShift action_6
action_79 (4) = happyGoto action_19
action_79 (5) = happyGoto action_20
action_79 (6) = happyGoto action_21
action_79 (7) = happyGoto action_22
action_79 (8) = happyGoto action_50
action_79 (28) = happyGoto action_101
action_79 (29) = happyGoto action_27
action_79 (30) = happyGoto action_28
action_79 (31) = happyGoto action_29
action_79 (32) = happyGoto action_30
action_79 (33) = happyGoto action_31
action_79 (34) = happyGoto action_102
action_79 _ = happyReduce_87

action_80 (37) = happyShift action_32
action_80 (66) = happyShift action_36
action_80 (81) = happyShift action_41
action_80 (90) = happyShift action_43
action_80 (91) = happyShift action_2
action_80 (92) = happyShift action_44
action_80 (93) = happyShift action_45
action_80 (94) = happyShift action_46
action_80 (95) = happyShift action_6
action_80 (4) = happyGoto action_19
action_80 (5) = happyGoto action_20
action_80 (6) = happyGoto action_21
action_80 (7) = happyGoto action_22
action_80 (8) = happyGoto action_50
action_80 (28) = happyGoto action_100
action_80 (29) = happyGoto action_27
action_80 (30) = happyGoto action_28
action_80 (31) = happyGoto action_29
action_80 (32) = happyGoto action_30
action_80 (33) = happyGoto action_31
action_80 _ = happyFail

action_81 (45) = happyShift action_99
action_81 (16) = happyGoto action_98
action_81 _ = happyReduce_21

action_82 (84) = happyShift action_97
action_82 (95) = happyShift action_6
action_82 (8) = happyGoto action_15
action_82 (13) = happyGoto action_94
action_82 (14) = happyGoto action_95
action_82 (15) = happyGoto action_96
action_82 _ = happyFail

action_83 (53) = happyShift action_87
action_83 (55) = happyShift action_88
action_83 (57) = happyShift action_89
action_83 (68) = happyShift action_90
action_83 (74) = happyShift action_91
action_83 (76) = happyShift action_92
action_83 (79) = happyShift action_93
action_83 (27) = happyGoto action_86
action_83 _ = happyFail

action_84 (95) = happyShift action_6
action_84 (8) = happyGoto action_15
action_84 (15) = happyGoto action_85
action_84 _ = happyFail

action_85 _ = happyReduce_19

action_86 _ = happyReduce_10

action_87 (37) = happyShift action_32
action_87 (66) = happyShift action_36
action_87 (81) = happyShift action_41
action_87 (90) = happyShift action_43
action_87 (91) = happyShift action_2
action_87 (92) = happyShift action_44
action_87 (93) = happyShift action_45
action_87 (94) = happyShift action_46
action_87 (95) = happyShift action_6
action_87 (4) = happyGoto action_19
action_87 (5) = happyGoto action_20
action_87 (6) = happyGoto action_21
action_87 (7) = happyGoto action_22
action_87 (8) = happyGoto action_50
action_87 (28) = happyGoto action_145
action_87 (29) = happyGoto action_27
action_87 (30) = happyGoto action_28
action_87 (31) = happyGoto action_29
action_87 (32) = happyGoto action_30
action_87 (33) = happyGoto action_31
action_87 _ = happyFail

action_88 _ = happyReduce_50

action_89 _ = happyReduce_51

action_90 _ = happyReduce_49

action_91 (53) = happyShift action_87
action_91 (55) = happyShift action_88
action_91 (57) = happyShift action_89
action_91 (68) = happyShift action_90
action_91 (74) = happyShift action_91
action_91 (76) = happyShift action_92
action_91 (79) = happyShift action_93
action_91 (27) = happyGoto action_144
action_91 _ = happyFail

action_92 _ = happyReduce_55

action_93 _ = happyReduce_52

action_94 (38) = happyShift action_143
action_94 _ = happyFail

action_95 (47) = happyShift action_142
action_95 _ = happyReduce_14

action_96 (45) = happyShift action_141
action_96 _ = happyFail

action_97 (95) = happyShift action_6
action_97 (8) = happyGoto action_15
action_97 (15) = happyGoto action_140
action_97 _ = happyFail

action_98 (47) = happyShift action_139
action_98 _ = happyFail

action_99 (53) = happyShift action_87
action_99 (55) = happyShift action_88
action_99 (57) = happyShift action_89
action_99 (68) = happyShift action_90
action_99 (74) = happyShift action_91
action_99 (76) = happyShift action_92
action_99 (79) = happyShift action_93
action_99 (27) = happyGoto action_138
action_99 _ = happyFail

action_100 (35) = happyShift action_69
action_100 (48) = happyShift action_71
action_100 (49) = happyShift action_72
action_100 (50) = happyShift action_73
action_100 (51) = happyShift action_74
action_100 (52) = happyShift action_75
action_100 _ = happyReduce_11

action_101 (35) = happyShift action_69
action_101 (41) = happyShift action_137
action_101 (48) = happyShift action_71
action_101 (49) = happyShift action_72
action_101 (50) = happyShift action_73
action_101 (51) = happyShift action_74
action_101 (52) = happyShift action_75
action_101 _ = happyReduce_88

action_102 (87) = happyShift action_136
action_102 _ = happyFail

action_103 (38) = happyShift action_135
action_103 _ = happyFail

action_104 _ = happyReduce_25

action_105 (40) = happyShift action_66
action_105 (42) = happyShift action_67
action_105 (73) = happyShift action_68
action_105 _ = happyReduce_61

action_106 (40) = happyShift action_66
action_106 (42) = happyShift action_67
action_106 (73) = happyShift action_68
action_106 _ = happyReduce_60

action_107 (40) = happyShift action_66
action_107 (42) = happyShift action_67
action_107 (73) = happyShift action_68
action_107 _ = happyReduce_56

action_108 (40) = happyShift action_66
action_108 (42) = happyShift action_67
action_108 (73) = happyShift action_68
action_108 _ = happyReduce_59

action_109 (40) = happyShift action_66
action_109 (42) = happyShift action_67
action_109 (73) = happyShift action_68
action_109 _ = happyReduce_58

action_110 (35) = happyShift action_69
action_110 (48) = happyShift action_71
action_110 (49) = happyShift action_72
action_110 (50) = happyShift action_73
action_110 (51) = happyShift action_74
action_110 (52) = happyShift action_75
action_110 _ = happyReduce_26

action_111 (40) = happyShift action_66
action_111 (42) = happyShift action_67
action_111 (73) = happyShift action_68
action_111 _ = happyReduce_57

action_112 (36) = happyShift action_61
action_112 (39) = happyShift action_62
action_112 (44) = happyShift action_63
action_112 (60) = happyShift action_64
action_112 (70) = happyShift action_65
action_112 _ = happyReduce_65

action_113 (36) = happyShift action_61
action_113 (39) = happyShift action_62
action_113 (44) = happyShift action_63
action_113 (60) = happyShift action_64
action_113 (70) = happyShift action_65
action_113 _ = happyReduce_64

action_114 (36) = happyShift action_61
action_114 (39) = happyShift action_62
action_114 (44) = happyShift action_63
action_114 (60) = happyShift action_64
action_114 (70) = happyShift action_65
action_114 _ = happyReduce_63

action_115 _ = happyReduce_68

action_116 _ = happyReduce_67

action_117 _ = happyReduce_70

action_118 _ = happyReduce_69

action_119 _ = happyReduce_71

action_120 _ = happyReduce_86

action_121 (37) = happyShift action_32
action_121 (66) = happyShift action_36
action_121 (81) = happyShift action_41
action_121 (90) = happyShift action_43
action_121 (91) = happyShift action_2
action_121 (92) = happyShift action_44
action_121 (93) = happyShift action_45
action_121 (94) = happyShift action_46
action_121 (95) = happyShift action_6
action_121 (4) = happyGoto action_19
action_121 (5) = happyGoto action_20
action_121 (6) = happyGoto action_21
action_121 (7) = happyGoto action_22
action_121 (8) = happyGoto action_50
action_121 (22) = happyGoto action_132
action_121 (23) = happyGoto action_133
action_121 (28) = happyGoto action_134
action_121 (29) = happyGoto action_27
action_121 (30) = happyGoto action_28
action_121 (31) = happyGoto action_29
action_121 (32) = happyGoto action_30
action_121 (33) = happyGoto action_31
action_121 _ = happyReduce_41

action_122 (37) = happyShift action_32
action_122 (56) = happyShift action_33
action_122 (59) = happyShift action_34
action_122 (65) = happyShift action_35
action_122 (66) = happyShift action_36
action_122 (67) = happyShift action_37
action_122 (69) = happyShift action_38
action_122 (77) = happyShift action_39
action_122 (78) = happyShift action_40
action_122 (81) = happyShift action_41
action_122 (85) = happyShift action_42
action_122 (90) = happyShift action_43
action_122 (91) = happyShift action_2
action_122 (92) = happyShift action_44
action_122 (93) = happyShift action_45
action_122 (94) = happyShift action_46
action_122 (95) = happyShift action_6
action_122 (4) = happyGoto action_19
action_122 (5) = happyGoto action_20
action_122 (6) = happyGoto action_21
action_122 (7) = happyGoto action_22
action_122 (8) = happyGoto action_23
action_122 (18) = happyGoto action_131
action_122 (19) = happyGoto action_25
action_122 (28) = happyGoto action_26
action_122 (29) = happyGoto action_27
action_122 (30) = happyGoto action_28
action_122 (31) = happyGoto action_29
action_122 (32) = happyGoto action_30
action_122 (33) = happyGoto action_31
action_122 _ = happyFail

action_123 _ = happyReduce_33

action_124 (37) = happyShift action_32
action_124 (66) = happyShift action_36
action_124 (81) = happyShift action_41
action_124 (90) = happyShift action_43
action_124 (91) = happyShift action_2
action_124 (92) = happyShift action_44
action_124 (93) = happyShift action_45
action_124 (94) = happyShift action_46
action_124 (95) = happyShift action_6
action_124 (4) = happyGoto action_19
action_124 (5) = happyGoto action_20
action_124 (6) = happyGoto action_21
action_124 (7) = happyGoto action_22
action_124 (8) = happyGoto action_50
action_124 (28) = happyGoto action_130
action_124 (29) = happyGoto action_27
action_124 (30) = happyGoto action_28
action_124 (31) = happyGoto action_29
action_124 (32) = happyGoto action_30
action_124 (33) = happyGoto action_31
action_124 _ = happyFail

action_125 (37) = happyShift action_32
action_125 (56) = happyShift action_33
action_125 (59) = happyShift action_34
action_125 (65) = happyShift action_35
action_125 (66) = happyShift action_36
action_125 (67) = happyShift action_37
action_125 (69) = happyShift action_38
action_125 (77) = happyShift action_39
action_125 (78) = happyShift action_40
action_125 (81) = happyShift action_41
action_125 (85) = happyShift action_42
action_125 (90) = happyShift action_43
action_125 (91) = happyShift action_2
action_125 (92) = happyShift action_44
action_125 (93) = happyShift action_45
action_125 (94) = happyShift action_46
action_125 (95) = happyShift action_6
action_125 (4) = happyGoto action_19
action_125 (5) = happyGoto action_20
action_125 (6) = happyGoto action_21
action_125 (7) = happyGoto action_22
action_125 (8) = happyGoto action_23
action_125 (18) = happyGoto action_129
action_125 (19) = happyGoto action_25
action_125 (28) = happyGoto action_26
action_125 (29) = happyGoto action_27
action_125 (30) = happyGoto action_28
action_125 (31) = happyGoto action_29
action_125 (32) = happyGoto action_30
action_125 (33) = happyGoto action_31
action_125 _ = happyFail

action_126 (37) = happyShift action_32
action_126 (66) = happyShift action_36
action_126 (81) = happyShift action_41
action_126 (90) = happyShift action_43
action_126 (91) = happyShift action_2
action_126 (92) = happyShift action_44
action_126 (93) = happyShift action_45
action_126 (94) = happyShift action_46
action_126 (95) = happyShift action_6
action_126 (4) = happyGoto action_19
action_126 (5) = happyGoto action_20
action_126 (6) = happyGoto action_21
action_126 (7) = happyGoto action_22
action_126 (8) = happyGoto action_50
action_126 (28) = happyGoto action_101
action_126 (29) = happyGoto action_27
action_126 (30) = happyGoto action_28
action_126 (31) = happyGoto action_29
action_126 (32) = happyGoto action_30
action_126 (33) = happyGoto action_31
action_126 (34) = happyGoto action_128
action_126 _ = happyReduce_87

action_127 _ = happyReduce_6

action_128 (38) = happyShift action_158
action_128 _ = happyFail

action_129 (64) = happyShift action_157
action_129 _ = happyFail

action_130 (35) = happyShift action_69
action_130 (48) = happyShift action_71
action_130 (49) = happyShift action_72
action_130 (50) = happyShift action_73
action_130 (51) = happyShift action_74
action_130 (52) = happyShift action_75
action_130 _ = happyReduce_32

action_131 (26) = happyGoto action_156
action_131 _ = happyReduce_47

action_132 (89) = happyShift action_155
action_132 _ = happyReduce_42

action_133 (62) = happyShift action_154
action_133 (25) = happyGoto action_153
action_133 _ = happyReduce_46

action_134 (35) = happyShift action_69
action_134 (45) = happyShift action_152
action_134 (48) = happyShift action_71
action_134 (49) = happyShift action_72
action_134 (50) = happyShift action_73
action_134 (51) = happyShift action_74
action_134 (52) = happyShift action_75
action_134 _ = happyFail

action_135 (47) = happyReduce_38
action_135 (62) = happyReduce_38
action_135 (63) = happyReduce_38
action_135 (64) = happyReduce_38
action_135 (83) = happyReduce_38
action_135 (89) = happyReduce_38
action_135 _ = happyReduce_85

action_136 _ = happyReduce_84

action_137 (37) = happyShift action_32
action_137 (66) = happyShift action_36
action_137 (81) = happyShift action_41
action_137 (90) = happyShift action_43
action_137 (91) = happyShift action_2
action_137 (92) = happyShift action_44
action_137 (93) = happyShift action_45
action_137 (94) = happyShift action_46
action_137 (95) = happyShift action_6
action_137 (4) = happyGoto action_19
action_137 (5) = happyGoto action_20
action_137 (6) = happyGoto action_21
action_137 (7) = happyGoto action_22
action_137 (8) = happyGoto action_50
action_137 (28) = happyGoto action_101
action_137 (29) = happyGoto action_27
action_137 (30) = happyGoto action_28
action_137 (31) = happyGoto action_29
action_137 (32) = happyGoto action_30
action_137 (33) = happyGoto action_31
action_137 (34) = happyGoto action_151
action_137 _ = happyReduce_87

action_138 _ = happyReduce_20

action_139 (10) = happyGoto action_150
action_139 _ = happyReduce_7

action_140 (45) = happyShift action_149
action_140 _ = happyFail

action_141 (53) = happyShift action_87
action_141 (55) = happyShift action_88
action_141 (57) = happyShift action_89
action_141 (68) = happyShift action_90
action_141 (74) = happyShift action_91
action_141 (76) = happyShift action_92
action_141 (79) = happyShift action_93
action_141 (27) = happyGoto action_148
action_141 _ = happyFail

action_142 (84) = happyShift action_97
action_142 (95) = happyShift action_6
action_142 (8) = happyGoto action_15
action_142 (13) = happyGoto action_147
action_142 (14) = happyGoto action_95
action_142 (15) = happyGoto action_96
action_142 _ = happyFail

action_143 _ = happyReduce_12

action_144 _ = happyReduce_54

action_145 (35) = happyShift action_69
action_145 (48) = happyShift action_71
action_145 (49) = happyShift action_72
action_145 (50) = happyShift action_73
action_145 (51) = happyShift action_74
action_145 (52) = happyShift action_75
action_145 (72) = happyShift action_146
action_145 _ = happyFail

action_146 (53) = happyShift action_87
action_146 (55) = happyShift action_88
action_146 (57) = happyShift action_89
action_146 (68) = happyShift action_90
action_146 (74) = happyShift action_91
action_146 (76) = happyShift action_92
action_146 (79) = happyShift action_93
action_146 (27) = happyGoto action_168
action_146 _ = happyFail

action_147 _ = happyReduce_15

action_148 _ = happyReduce_16

action_149 (53) = happyShift action_87
action_149 (55) = happyShift action_88
action_149 (57) = happyShift action_89
action_149 (68) = happyShift action_90
action_149 (74) = happyShift action_91
action_149 (76) = happyShift action_92
action_149 (79) = happyShift action_93
action_149 (27) = happyGoto action_167
action_149 _ = happyFail

action_150 (54) = happyShift action_11
action_150 (58) = happyShift action_12
action_150 (75) = happyShift action_13
action_150 (84) = happyShift action_14
action_150 (11) = happyGoto action_9
action_150 (17) = happyGoto action_166
action_150 _ = happyReduce_23

action_151 _ = happyReduce_89

action_152 (37) = happyShift action_32
action_152 (56) = happyShift action_33
action_152 (59) = happyShift action_34
action_152 (65) = happyShift action_35
action_152 (66) = happyShift action_36
action_152 (67) = happyShift action_37
action_152 (69) = happyShift action_38
action_152 (77) = happyShift action_39
action_152 (78) = happyShift action_40
action_152 (81) = happyShift action_41
action_152 (85) = happyShift action_42
action_152 (90) = happyShift action_43
action_152 (91) = happyShift action_2
action_152 (92) = happyShift action_44
action_152 (93) = happyShift action_45
action_152 (94) = happyShift action_46
action_152 (95) = happyShift action_6
action_152 (4) = happyGoto action_19
action_152 (5) = happyGoto action_20
action_152 (6) = happyGoto action_21
action_152 (7) = happyGoto action_22
action_152 (8) = happyGoto action_23
action_152 (18) = happyGoto action_165
action_152 (19) = happyGoto action_25
action_152 (28) = happyGoto action_26
action_152 (29) = happyGoto action_27
action_152 (30) = happyGoto action_28
action_152 (31) = happyGoto action_29
action_152 (32) = happyGoto action_30
action_152 (33) = happyGoto action_31
action_152 _ = happyFail

action_153 (64) = happyShift action_164
action_153 _ = happyFail

action_154 (37) = happyShift action_32
action_154 (56) = happyShift action_33
action_154 (59) = happyShift action_34
action_154 (65) = happyShift action_35
action_154 (66) = happyShift action_36
action_154 (67) = happyShift action_37
action_154 (69) = happyShift action_38
action_154 (77) = happyShift action_39
action_154 (78) = happyShift action_40
action_154 (81) = happyShift action_41
action_154 (85) = happyShift action_42
action_154 (90) = happyShift action_43
action_154 (91) = happyShift action_2
action_154 (92) = happyShift action_44
action_154 (93) = happyShift action_45
action_154 (94) = happyShift action_46
action_154 (95) = happyShift action_6
action_154 (4) = happyGoto action_19
action_154 (5) = happyGoto action_20
action_154 (6) = happyGoto action_21
action_154 (7) = happyGoto action_22
action_154 (8) = happyGoto action_23
action_154 (18) = happyGoto action_163
action_154 (19) = happyGoto action_25
action_154 (28) = happyGoto action_26
action_154 (29) = happyGoto action_27
action_154 (30) = happyGoto action_28
action_154 (31) = happyGoto action_29
action_154 (32) = happyGoto action_30
action_154 (33) = happyGoto action_31
action_154 _ = happyFail

action_155 (37) = happyShift action_32
action_155 (66) = happyShift action_36
action_155 (81) = happyShift action_41
action_155 (90) = happyShift action_43
action_155 (91) = happyShift action_2
action_155 (92) = happyShift action_44
action_155 (93) = happyShift action_45
action_155 (94) = happyShift action_46
action_155 (95) = happyShift action_6
action_155 (4) = happyGoto action_19
action_155 (5) = happyGoto action_20
action_155 (6) = happyGoto action_21
action_155 (7) = happyGoto action_22
action_155 (8) = happyGoto action_50
action_155 (22) = happyGoto action_132
action_155 (23) = happyGoto action_162
action_155 (28) = happyGoto action_134
action_155 (29) = happyGoto action_27
action_155 (30) = happyGoto action_28
action_155 (31) = happyGoto action_29
action_155 (32) = happyGoto action_30
action_155 (33) = happyGoto action_31
action_155 _ = happyReduce_41

action_156 (62) = happyShift action_154
action_156 (63) = happyShift action_161
action_156 (24) = happyGoto action_159
action_156 (25) = happyGoto action_160
action_156 _ = happyReduce_46

action_157 _ = happyReduce_31

action_158 _ = happyReduce_85

action_159 _ = happyReduce_48

action_160 (64) = happyShift action_171
action_160 _ = happyFail

action_161 (37) = happyShift action_32
action_161 (66) = happyShift action_36
action_161 (81) = happyShift action_41
action_161 (90) = happyShift action_43
action_161 (91) = happyShift action_2
action_161 (92) = happyShift action_44
action_161 (93) = happyShift action_45
action_161 (94) = happyShift action_46
action_161 (95) = happyShift action_6
action_161 (4) = happyGoto action_19
action_161 (5) = happyGoto action_20
action_161 (6) = happyGoto action_21
action_161 (7) = happyGoto action_22
action_161 (8) = happyGoto action_50
action_161 (28) = happyGoto action_170
action_161 (29) = happyGoto action_27
action_161 (30) = happyGoto action_28
action_161 (31) = happyGoto action_29
action_161 (32) = happyGoto action_30
action_161 (33) = happyGoto action_31
action_161 _ = happyFail

action_162 _ = happyReduce_43

action_163 _ = happyReduce_45

action_164 _ = happyReduce_34

action_165 _ = happyReduce_40

action_166 (64) = happyShift action_169
action_166 _ = happyFail

action_167 _ = happyReduce_17

action_168 _ = happyReduce_53

action_169 _ = happyReduce_9

action_170 (35) = happyShift action_69
action_170 (48) = happyShift action_71
action_170 (49) = happyShift action_72
action_170 (50) = happyShift action_73
action_170 (51) = happyShift action_74
action_170 (52) = happyShift action_75
action_170 (80) = happyShift action_172
action_170 _ = happyFail

action_171 _ = happyReduce_35

action_172 (37) = happyShift action_32
action_172 (56) = happyShift action_33
action_172 (59) = happyShift action_34
action_172 (65) = happyShift action_35
action_172 (66) = happyShift action_36
action_172 (67) = happyShift action_37
action_172 (69) = happyShift action_38
action_172 (77) = happyShift action_39
action_172 (78) = happyShift action_40
action_172 (81) = happyShift action_41
action_172 (85) = happyShift action_42
action_172 (90) = happyShift action_43
action_172 (91) = happyShift action_2
action_172 (92) = happyShift action_44
action_172 (93) = happyShift action_45
action_172 (94) = happyShift action_46
action_172 (95) = happyShift action_6
action_172 (4) = happyGoto action_19
action_172 (5) = happyGoto action_20
action_172 (6) = happyGoto action_21
action_172 (7) = happyGoto action_22
action_172 (8) = happyGoto action_23
action_172 (18) = happyGoto action_173
action_172 (19) = happyGoto action_25
action_172 (28) = happyGoto action_26
action_172 (29) = happyGoto action_27
action_172 (30) = happyGoto action_28
action_172 (31) = happyGoto action_29
action_172 (32) = happyGoto action_30
action_172 (33) = happyGoto action_31
action_172 _ = happyFail

action_173 _ = happyReduce_44

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn4
		 ((read ( happy_var_1)) :: Integer
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn5
		 ((read ( happy_var_1)) :: Double
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  6 happyReduction_3
happyReduction_3 (HappyTerminal (PT _ (TC happy_var_1)))
	 =  HappyAbsSyn6
		 ((read ( happy_var_1)) :: Char
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  7 happyReduction_4
happyReduction_4 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  8 happyReduction_5
happyReduction_5 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (Id (mkPosToken happy_var_1)
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyMonadReduce 8 9 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen (( let
		f (Id (_, x)) = x 
		lc (Id ((n, c), _)) = 
				":" ++ show n ++ ":"
				++ show c ++ ":" 
		in if f happy_var_2 == f happy_var_7 then 
		return $ Module happy_var_2 ((reverse happy_var_4) ++ happy_var_5) happy_var_7 
		else fail $ "parser" ++ (lc happy_var_2) ++
		 	"nome modulo non corrispondente. Ci si aspetta il nome \""
		 	++ (f happy_var_2) ++ "\", e non \"" ++ (f happy_var_2) ++ "\"\n.")
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_7 = happySpecReduce_0  10 happyReduction_7
happyReduction_7  =  HappyAbsSyn10
		 ([]
	)

happyReduce_8 = happySpecReduce_3  10 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 8 11 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_7) `HappyStk`
	(HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Fun happy_var_2 happy_var_3 happy_var_4 ((reverse happy_var_6) ++ happy_var_7)
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 11 happyReduction_10
happyReduction_10 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Var $ map (\x -> (x, happy_var_4)) happy_var_2
	) `HappyStk` happyRest

happyReduce_11 = happyMonadReduce 4 11 happyReduction_11
happyReduction_11 ((HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen (( let
			isConst (Bin _ a b) = isConst a && isConst b
			isConst (Una "~" a) = isConst a
			isConst TRUE = True 
			isConst FALSE = True
			isConst (INT _) = True
			isConst (CHAR _) = True
			isConst (STRING _) = True
			isConst (REAL _) = True
			lc (Id ((n, c), _)) = 
				":" ++ show n ++ ":"
				++ show c ++ ":"
			f (Id (_, id)) = id
				 
		in
			if isConst happy_var_4 then return (Const happy_var_2 happy_var_4)
			else fail $ "parser" ++ (lc happy_var_2) ++ 
				" espressione non costante assegnata a\n\t\t\t\t\"" ++ (f happy_var_2 ) ++ "\".\n")
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_12 = happySpecReduce_3  12 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (foldl1 (++) happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_0  12 happyReduction_13
happyReduction_13  =  HappyAbsSyn12
		 ([]
	)

happyReduce_14 = happySpecReduce_1  13 happyReduction_14
happyReduction_14 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ((:[]) happy_var_1)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  13 happyReduction_15
happyReduction_15 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  14 happyReduction_16
happyReduction_16 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (map (\x -> (ByV, x, happy_var_3)) happy_var_1
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 14 happyReduction_17
happyReduction_17 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (map (\x -> (ByVR, x, happy_var_4)) happy_var_2
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  15 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn15
		 ((:[]) happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  15 happyReduction_19
happyReduction_19 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn15
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  16 happyReduction_20
happyReduction_20 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_0  16 happyReduction_21
happyReduction_21  =  HappyAbsSyn16
		 (Tvoid
	)

happyReduce_22 = happySpecReduce_2  17 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_0  17 happyReduction_23
happyReduction_23  =  HappyAbsSyn10
		 ([]
	)

happyReduce_24 = happySpecReduce_1  18 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ((:[]) happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  18 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyMonadReduce 3 19 happyReduction_26
happyReduction_26 ((HappyAbsSyn28  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen (( let
			isLExp (ID _) = True
			isLExp (ARR _ _) = True
			isLExp (Una "^" x) = isLExp x
			isLExp _ = False	 
		in
			if isLExp happy_var_1 then return $ Assign happy_var_1 happy_var_3
			else fail $ "parser: rilevata una lexp mal formata")
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_27 = happySpecReduce_2  19 happyReduction_27
happyReduction_27 (HappyAbsSyn21  happy_var_2)
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn11
		 (Call happy_var_1 happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  19 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn11
		 (Break
	)

happyReduce_29 = happySpecReduce_2  19 happyReduction_29
happyReduction_29 (HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Return happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  19 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn11
		 (GoOn
	)

happyReduce_31 = happyReduce 5 19 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 19 happyReduction_32
happyReduction_32 ((HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Repeat happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_3  19 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Loop happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 6 19 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_5) `HappyStk`
	(HappyAbsSyn23  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Case happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 7 19 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_6) `HappyStk`
	(HappyAbsSyn26  happy_var_5) `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (If ((happy_var_2,happy_var_4):(reverse happy_var_5)) happy_var_6
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_1  20 happyReduction_36
happyReduction_36 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn20
		 (Just happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_0  20 happyReduction_37
happyReduction_37  =  HappyAbsSyn20
		 (Nothing
	)

happyReduce_38 = happySpecReduce_3  21 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn21  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_0  21 happyReduction_39
happyReduction_39  =  HappyAbsSyn21
		 ([]
	)

happyReduce_40 = happySpecReduce_3  22 happyReduction_40
happyReduction_40 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn22
		 ((happy_var_1, happy_var_3)
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_0  23 happyReduction_41
happyReduction_41  =  HappyAbsSyn23
		 ([]
	)

happyReduce_42 = happySpecReduce_1  23 happyReduction_42
happyReduction_42 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn23
		 ((:[]) happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  23 happyReduction_43
happyReduction_43 (HappyAbsSyn23  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn23
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happyReduce 4 24 happyReduction_44
happyReduction_44 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 ((happy_var_2, happy_var_4)
	) `HappyStk` happyRest

happyReduce_45 = happySpecReduce_2  25 happyReduction_45
happyReduction_45 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (Just happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_0  25 happyReduction_46
happyReduction_46  =  HappyAbsSyn25
		 (Nothing
	)

happyReduce_47 = happySpecReduce_0  26 happyReduction_47
happyReduction_47  =  HappyAbsSyn26
		 ([]
	)

happyReduce_48 = happySpecReduce_2  26 happyReduction_48
happyReduction_48 (HappyAbsSyn24  happy_var_2)
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  27 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn16
		 (Tint
	)

happyReduce_50 = happySpecReduce_1  27 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn16
		 (Tbool
	)

happyReduce_51 = happySpecReduce_1  27 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn16
		 (Tchar
	)

happyReduce_52 = happySpecReduce_1  27 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn16
		 (Tstring
	)

happyReduce_53 = happyReduce 4 27 happyReduction_53
happyReduction_53 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Tarray happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_54 = happySpecReduce_2  27 happyReduction_54
happyReduction_54 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Tpointer happy_var_2
	)
happyReduction_54 _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  27 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn16
		 (Treal
	)

happyReduce_56 = happySpecReduce_3  28 happyReduction_56
happyReduction_56 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "=" happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  28 happyReduction_57
happyReduction_57 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "#" happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  28 happyReduction_58
happyReduction_58 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "<" happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  28 happyReduction_59
happyReduction_59 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "<=" happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  28 happyReduction_60
happyReduction_60 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin ">" happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  28 happyReduction_61
happyReduction_61 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin ">=" happy_var_1 happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  28 happyReduction_62
happyReduction_62 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  29 happyReduction_63
happyReduction_63 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "+" happy_var_1 happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  29 happyReduction_64
happyReduction_64 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "-" happy_var_1 happy_var_3
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_3  29 happyReduction_65
happyReduction_65 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "OR" happy_var_1 happy_var_3
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  29 happyReduction_66
happyReduction_66 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_3  30 happyReduction_67
happyReduction_67 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "DIV" happy_var_1 happy_var_3
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_3  30 happyReduction_68
happyReduction_68 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "MOD" happy_var_1 happy_var_3
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_3  30 happyReduction_69
happyReduction_69 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "*" happy_var_1 happy_var_3
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_3  30 happyReduction_70
happyReduction_70 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "/" happy_var_1 happy_var_3
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_3  30 happyReduction_71
happyReduction_71 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Bin "&" happy_var_1 happy_var_3
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_1  30 happyReduction_72
happyReduction_72 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_2  31 happyReduction_73
happyReduction_73 (HappyAbsSyn28  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (Una "neg" happy_var_2
	)
happyReduction_73 _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  31 happyReduction_74
happyReduction_74 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  32 happyReduction_75
happyReduction_75 _
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Una "deref" happy_var_1
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  32 happyReduction_76
happyReduction_76 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  33 happyReduction_77
happyReduction_77 _
	 =  HappyAbsSyn28
		 (TRUE
	)

happyReduce_78 = happySpecReduce_1  33 happyReduction_78
happyReduction_78 _
	 =  HappyAbsSyn28
		 (FALSE
	)

happyReduce_79 = happySpecReduce_1  33 happyReduction_79
happyReduction_79 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn28
		 (INT happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  33 happyReduction_80
happyReduction_80 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn28
		 (REAL happy_var_1
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  33 happyReduction_81
happyReduction_81 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn28
		 (CHAR happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  33 happyReduction_82
happyReduction_82 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn28
		 (STRING happy_var_1
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  33 happyReduction_83
happyReduction_83 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn28
		 (ID happy_var_1
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happyReduce 4 33 happyReduction_84
happyReduction_84 (_ `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (ARR happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_85 = happyReduce 4 33 happyReduction_85
happyReduction_85 (_ `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (CALL happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_86 = happySpecReduce_3  33 happyReduction_86
happyReduction_86 _
	(HappyAbsSyn28  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (happy_var_2
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_0  34 happyReduction_87
happyReduction_87  =  HappyAbsSyn21
		 ([]
	)

happyReduce_88 = happySpecReduce_1  34 happyReduction_88
happyReduction_88 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn21
		 ((:[]) happy_var_1
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_3  34 happyReduction_89
happyReduction_89 (HappyAbsSyn21  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn21
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_89 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 97 97 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 35;
	PT _ (TS _ 2) -> cont 36;
	PT _ (TS _ 3) -> cont 37;
	PT _ (TS _ 4) -> cont 38;
	PT _ (TS _ 5) -> cont 39;
	PT _ (TS _ 6) -> cont 40;
	PT _ (TS _ 7) -> cont 41;
	PT _ (TS _ 8) -> cont 42;
	PT _ (TS _ 9) -> cont 43;
	PT _ (TS _ 10) -> cont 44;
	PT _ (TS _ 11) -> cont 45;
	PT _ (TS _ 12) -> cont 46;
	PT _ (TS _ 13) -> cont 47;
	PT _ (TS _ 14) -> cont 48;
	PT _ (TS _ 15) -> cont 49;
	PT _ (TS _ 16) -> cont 50;
	PT _ (TS _ 17) -> cont 51;
	PT _ (TS _ 18) -> cont 52;
	PT _ (TS _ 19) -> cont 53;
	PT _ (TS _ 20) -> cont 54;
	PT _ (TS _ 21) -> cont 55;
	PT _ (TS _ 22) -> cont 56;
	PT _ (TS _ 23) -> cont 57;
	PT _ (TS _ 24) -> cont 58;
	PT _ (TS _ 25) -> cont 59;
	PT _ (TS _ 26) -> cont 60;
	PT _ (TS _ 27) -> cont 61;
	PT _ (TS _ 28) -> cont 62;
	PT _ (TS _ 29) -> cont 63;
	PT _ (TS _ 30) -> cont 64;
	PT _ (TS _ 31) -> cont 65;
	PT _ (TS _ 32) -> cont 66;
	PT _ (TS _ 33) -> cont 67;
	PT _ (TS _ 34) -> cont 68;
	PT _ (TS _ 35) -> cont 69;
	PT _ (TS _ 36) -> cont 70;
	PT _ (TS _ 37) -> cont 71;
	PT _ (TS _ 38) -> cont 72;
	PT _ (TS _ 39) -> cont 73;
	PT _ (TS _ 40) -> cont 74;
	PT _ (TS _ 41) -> cont 75;
	PT _ (TS _ 42) -> cont 76;
	PT _ (TS _ 43) -> cont 77;
	PT _ (TS _ 44) -> cont 78;
	PT _ (TS _ 45) -> cont 79;
	PT _ (TS _ 46) -> cont 80;
	PT _ (TS _ 47) -> cont 81;
	PT _ (TS _ 48) -> cont 82;
	PT _ (TS _ 49) -> cont 83;
	PT _ (TS _ 50) -> cont 84;
	PT _ (TS _ 51) -> cont 85;
	PT _ (TS _ 52) -> cont 86;
	PT _ (TS _ 53) -> cont 87;
	PT _ (TS _ 54) -> cont 88;
	PT _ (TS _ 55) -> cont 89;
	PT _ (TS _ 56) -> cont 90;
	PT _ (TI happy_dollar_dollar) -> cont 91;
	PT _ (TD happy_dollar_dollar) -> cont 92;
	PT _ (TC happy_dollar_dollar) -> cont 93;
	PT _ (TL happy_dollar_dollar) -> cont 94;
	PT _ (T_Id _) -> cont 95;
	_ -> cont 96;
	_ -> happyError' (tk:tks)
	}

happyError_ 97 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pModule tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn9 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates/GenericTemplate.hs" #-}








{-# LINE 51 "templates/GenericTemplate.hs" #-}

{-# LINE 61 "templates/GenericTemplate.hs" #-}

{-# LINE 70 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 312 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
