// BEGIN ~DKAYLESS~

ADD_TRANS_TRIGGER DKAYLESS 15 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DKAYLESS 15
	IF ~Global("D5_EET_IWD","GLOBAL",1)
		GlobalGT("SPRITE_IS_DEADSH_Warrior_Dead","GLOBAL",24)
		Global("K_Done","GLOBAL",0)~
			THEN REPLY @8399 DO ~AddXP2DA("ID1EX3H")
									DisplayStringNoNameDlg(LastTalkedToBy,@8142)
									SetGlobal("K_Done","GLOBAL",1)
									EraseJournalEntry(@14416)
									AddJournalEntry(@14415,QUEST_DONE)~ GOTO 18
END

ADD_TRANS_TRIGGER DKAYLESS 17 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 2

EXTEND_BOTTOM DKAYLESS 17
	IF ~Global("D5_EET_IWD","GLOBAL",1)
		GlobalGT("SPRITE_IS_DEADSH_Warrior_Dead","GLOBAL",24)
		Global("KaylessaQuest","GLOBAL",1)
		Global("K_Done","GLOBAL",0)~
			THEN REPLY @8396 DO ~AddXP2DA("ID1EX3H")
									DisplayStringNoNameDlg(LastTalkedToBy,@8142)
									SetGlobal("K_Done","GLOBAL",1)
									EraseJournalEntry(@14416)
									AddJournalEntry(@14417,QUEST_DONE)~ GOTO 18
END

