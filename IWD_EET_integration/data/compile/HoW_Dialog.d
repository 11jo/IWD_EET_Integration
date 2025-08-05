// BEGIN ~DAMBERE~

ADD_TRANS_TRIGGER DAMBERE 9 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DAMBERE 9
	IF ~CheckStatGT(LastTalkedToBy,12,CHR)
		Global("D5_IWD_REAL","GLOBAL",0)~ 
			THEN REPLY @21915 DO ~SetGlobal("Ambere_Family","GLOBAL",1)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18518)
									AddJournalEntry(@23781,QUEST)~ GOTO 10
END

ADD_TRANS_TRIGGER DAMBERE 13 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DAMBERE 13
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @21927 DO ~SetGlobal("Ambere_Family","GLOBAL",2)
								AddXP2DA("ID1EX1E")
								DisplayStringNoNameDlg(LastTalkedToBy,@18523)
								AddJournalEntry(@32002,QUEST)~ GOTO 14
END

// BEGIN ~DANGAAR~

ADD_TRANS_TRIGGER DANGAAR 11 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 1 2

EXTEND_BOTTOM DANGAAR 11
	IF ~GlobalGT("Know_Assassin","GLOBAL",1)
		!Global("Angaar_2","GLOBAL",1)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @23767 DO ~SetGlobal("Angaar_2","GLOBAL",1)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@26707)
									AddJournalEntry(@23550,QUEST)~ GOTO 16
	IF ~!Global("Angaar_3","GLOBAL",1)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @23770 DO ~SetGlobal("Angaar_3","GLOBAL",1)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@26708)
									AddJournalEntry(@23549,QUEST)~ GOTO 19
END

ADD_TRANS_TRIGGER DANGAAR 22 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DANGAAR 22
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @23766 DO ~AddXP2DA("ID1EX1E")
								DisplayStringNoNameDlg(LastTalkedToBy,@26706)~ GOTO 13
END

ADD_TRANS_TRIGGER DANGAAR 25 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DANGAAR 25
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
	THEN REPLY @24042 DO ~StartCutSceneMode()
							AddXP2DA("ID1EX1E")
							DisplayStringNoNameDlg(LastTalkedToBy,@18521)
							StartCutScene("bcPtyLve")~ EXIT
END

// BEGIN ~DBEORNEN~

ADD_TRANS_TRIGGER DBEORNEN 4 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DBEORNEN 4
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @23630 DO ~AddXP2DA("ID1EX1H")
								DisplayStringNoNameDlg(LastTalkedToBy,@26705)
								AddJournalEntry(@23553,QUEST)~ GOTO 5
END

// BEGIN ~DEMMRCH~

ADD_TRANS_TRIGGER DEMMRCH 31 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DEMMRCH 31
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN DO ~SetGlobal("Emmerich_Quest","GLOBAL",2)
					AddXP2DA("ID1EX2H")
					DisplayStringNoNameDlg(LastTalkedToBy,@24884)~ GOTO 32
END

ADD_TRANS_TRIGGER DEMMRCH 35 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DEMMRCH 35
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @26028 DO ~SetGlobal("Emmerich_Quest","GLOBAL",3)
								AddXP2DA("ID1EX2H")
								DisplayStringNoNameDlg(LastTalkedToBy,@24885)
								EraseJournalEntry(@25429)
								EraseJournalEntry(@25431)
								EraseJournalEntry(@25838)
								EraseJournalEntry(@25829)
								EraseJournalEntry(@25830)
								EraseJournalEntry(@25834)
								EraseJournalEntry(@25831)
								EraseJournalEntry(@25832)
								EraseJournalEntry(@25833)
								EraseJournalEntry(@26323)
								EraseJournalEntry(@26327)
								EraseJournalEntry(@23558)
								EraseJournalEntry(@23557)
								EraseJournalEntry(@23555)
								EraseJournalEntry(@23559)
								AddJournalEntry(@25835,QUEST_DONE)~ EXIT
END

// BEGIN ~DHAILEE~

ADD_TRANS_TRIGGER DHAILEE 5 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 1

EXTEND_BOTTOM DHAILEE 5
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @22395 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
								AddXP2DA("ID1EX1E")
								DisplayStringNoNameDlg(LastTalkedToBy,@18525)
								AddJournalEntry(@34106,QUEST)~ GOTO 7
END

ADD_TRANS_TRIGGER DHAILEE 6 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DHAILEE 6
	IF ~Alignment(LastTalkedToBy,MASK_EVIL)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22399 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18525)
									AddJournalEntry(@34106,QUEST)~ GOTO 7
END

ADD_TRANS_TRIGGER DHAILEE 8 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 2 3

EXTEND_BOTTOM DHAILEE 8
	IF ~Global("Hailee_Joke","GLOBAL",2)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22407 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18519)
									AddJournalEntry(@34105,QUEST)~ GOTO 9
	IF ~Global("Hailee_Joke","GLOBAL",3)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22408 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18519)
									AddJournalEntry(@34105,QUEST)~ GOTO 9
END

ADD_TRANS_TRIGGER DHAILEE 19 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM DHAILEE 19
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @22444 DO ~SetGlobal("Know_Hailee_Secret","GLOBAL",2)
								AddXP2DA("ID1EX1E")
								DisplayStringNoNameDlg(LastTalkedToBy,@18524)
								AddJournalEntry(@34099,QUEST)~ GOTO 20
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @22445 DO ~SetGlobal("Know_Hailee_Secret","GLOBAL",2)
								AddXP2DA("ID1EX1E")
								DisplayStringNoNameDlg(LastTalkedToBy,@18524)
								AddJournalEntry(@34099,QUEST)~ GOTO 20
END

ADD_TRANS_TRIGGER DHAILEE 34 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM DHAILEE 34
	IF ~Gender(LastTalkedToBy,MALE)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22487 DO ~AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18515)
									AddJournalEntry(@34093,QUEST)~ GOTO 35
	IF ~Gender(LastTalkedToBy,FEMALE)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22487 DO ~AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18515)
									AddJournalEntry(@34091,QUEST)~ GOTO 35
END

ADD_TRANS_TRIGGER DHAILEE 47 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1 2 3 4 5

EXTEND_BOTTOM DHAILEE 47
	IF ~Global("Bear_Story","GLOBAL",1)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22549 DO ~SetGlobal("Hailee_Home","GLOBAL",1)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18516)
									EraseJournalEntry(@34107)
									EraseJournalEntry(@34106)
									EraseJournalEntry(@34105)
									EraseJournalEntry(@34093)
									EraseJournalEntry(@34091)
									EraseJournalEntry(@23563)
									EraseJournalEntry(@34110)
									AddJournalEntry(@34089,QUEST_DONE)~ GOTO 49
	IF ~Global("Fish_Story","GLOBAL",1)
		Global("SPRITE_IS_DEADTybaldDunn","GLOBAL",0)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22552 DO ~SetGlobal("Hailee_Home","GLOBAL",2)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18527)
									EraseJournalEntry(@34107)
									EraseJournalEntry(@34106)
									EraseJournalEntry(@34105)
									EraseJournalEntry(@34093)
									EraseJournalEntry(@34091)
									EraseJournalEntry(@23563)
									EraseJournalEntry(@34110)
									AddJournalEntry(@34089,QUEST_DONE)~ GOTO 48
	IF ~Global("Barbarian_Story","GLOBAL",1)
		Global("SPRITE_IS_DEADTybaldDunn","GLOBAL",0)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22555 DO ~SetGlobal("Hailee_Home","GLOBAL",3)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18527)
									EraseJournalEntry(@34107)
									EraseJournalEntry(@34106)
									EraseJournalEntry(@34105)
									EraseJournalEntry(@34093)
									EraseJournalEntry(@34091)
									EraseJournalEntry(@23563)
									EraseJournalEntry(@34110)
									AddJournalEntry(@34089,QUEST_DONE)~ GOTO 48
	IF ~GlobalGT("Ambere_Family","GLOBAL",1)
		Global("SPRITE_IS_DEADAmbereDunn","GLOBAL",0)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22556 DO ~SetGlobal("Hailee_Home","GLOBAL",4)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18527)
									EraseJournalEntry(@34107)
									EraseJournalEntry(@34106)
									EraseJournalEntry(@34105)
									EraseJournalEntry(@34093)
									EraseJournalEntry(@34091)
									EraseJournalEntry(@23563)
									EraseJournalEntry(@34110)
									AddJournalEntry(@34089,QUEST_DONE)~ GOTO 48
	IF ~GlobalGT("Know_Hailee_Secret","GLOBAL",1)
		Global("D5_IWD_REAL","GLOBAL",0)
		OR(2) !Class(LastTalkedToBy,PALADIN_ALL) Kit(LastTalkedToBy,BLACKGUARD)~
			THEN REPLY @22557 DO ~SetGlobal("Hailee_Home","GLOBAL",5)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18516)
									EraseJournalEntry(@34107)
									EraseJournalEntry(@34106)
									EraseJournalEntry(@34105)
									EraseJournalEntry(@34093)
									EraseJournalEntry(@34091)
									EraseJournalEntry(@23563)
									EraseJournalEntry(@34110)
									AddJournalEntry(@34089,QUEST_DONE)~ GOTO 49
	IF ~Alignment(LastTalkedToBy,MASK_EVIL)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22558 DO ~SetGlobal("Hailee_Home","GLOBAL",6)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18526)
									EraseJournalEntry(@34107)
									EraseJournalEntry(@34106)
									EraseJournalEntry(@34105)
									EraseJournalEntry(@34093)
									EraseJournalEntry(@34091)
									EraseJournalEntry(@23563)
									EraseJournalEntry(@34110)
									AddJournalEntry(@34089,QUEST_DONE)~ GOTO 49
END

// BEGIN ~DHJOLLDE~

ADD_TRANS_TRIGGER DHJOLLDE 33 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM DHJOLLDE 33
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @22700 DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
								SetGlobal("Body_Count","GLOBAL",2)
								AddXP2DA("ID1EX2A")
								DisplayStringNoNameDlg(LastTalkedToBy,@26308)~ GOTO 34
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @6159 DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
								SetGlobal("Body_Count","GLOBAL",2)
								AddXP2DA("ID1EX2A")
								DisplayStringNoNameDlg(LastTalkedToBy,@26308)~ EXIT
END

ADD_TRANS_TRIGGER DHJOLLDE 41 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DHJOLLDE 41
	IF ~PartyHasItem("wylfins")
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22753 DO ~TakePartyItem("wylfins")
									DestroyItem("wylfins")
									SetGlobal("Hjollder_Quest","GLOBAL",7)
									AddXP2DA("ID1EX2H")
									DisplayStringNoNameDlg(LastTalkedToBy,@26309)
									AddJournalEntry(@26299,QUEST)~ GOTO 48
END

ADD_TRANS_TRIGGER DHJOLLDE 47 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DHJOLLDE 47
	IF ~PartyHasItem("wylfins")
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22796 DO ~TakePartyItem("wylfins")
									DestroyItem("wylfins")
									SetGlobal("Hjollder_Quest","GLOBAL",7)
									AddXP2DA("ID1EX2H")
									DisplayStringNoNameDlg(LastTalkedToBy,@26309)
									AddJournalEntry(@26299,QUEST)~ GOTO 48
END

// BEGIN ~DKIERAN2~

ADD_TRANS_TRIGGER DKIERAN2 22 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1 2 3 4

EXTEND_BOTTOM DKIERAN2 22
	IF ~Global("Know_Mirror_Door","GLOBAL",2)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @26417 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
									AddXP2DA("ID1EX2V")
									DisplayStringNoNameDlg(LastTalkedToBy,@26585)
									StartStore("Kieran2",LastTalkedToBy)~ EXIT
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @26418 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
								AddXP2DA("ID1EX2V")
								DisplayStringNoNameDlg(LastTalkedToBy,@26585)
								StartStore("Kieran1",LastTalkedToBy)~ EXIT
							  
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @26419 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
								AddXP2DA("ID1EX2V")
								DisplayStringNoNameDlg(LastTalkedToBy,@26585)
								StartStore("Kieran3",LastTalkedToBy)~ EXIT
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @26420 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
								AddXP2DA("ID1EX2V")
								DisplayStringNoNameDlg(LastTalkedToBy,@26585)~ GOTO 1
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @26421 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
								AddXP2DA("ID1EX2V")
								DisplayStringNoNameDlg(LastTalkedToBy,@26585)~ EXIT
END

// BEGIN ~DMURDAUG~

ADD_TRANS_TRIGGER DMURDAUG 49 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DMURDAUG 49
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @26607 DO ~TakePartyItem("IceRose")
								AddXP2DA("ID1EX2V")
								DisplayStringNoNameDlg(LastTalkedToBy,@26575)~ GOTO 50
END

// BEGIN ~DTIERNON~

ADD_TRANS_TRIGGER DTIERNON 1 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 1 2

EXTEND_BOTTOM DTIERNON 1
	IF ~Race(LastTalkedToBy,DWARF)
      Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @24340 DO ~AddXP2DA("ID1EX1E")
								DisplayStringNoNameDlg(LastTalkedToBy,@18517)
								SetGlobal("Tiernon_Rep","GLOBAL",1)
								AddJournalEntry(@23537,QUEST)~ GOTO 49
	IF ~Race(LastTalkedToBy,DWARF)
      Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @24341 DO ~AddXP2DA("ID1EX1E")
								DisplayStringNoNameDlg(LastTalkedToBy,@18517)
								SetGlobal("Tiernon_Rep","GLOBAL",1)
								AddJournalEntry(@23537,QUEST)~ GOTO 49
END

ADD_TRANS_TRIGGER DTIERNON 48 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM DTIERNON 48
	IF ~NumTimesTalkedTo(1)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @24548 DO ~AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18517)
									AddJournalEntry(@23538,QUEST)~ GOTO 49
	IF ~NumTimesTalkedToGT(1)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @24548 DO ~AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18517)
									AddJournalEntry(@23538,QUEST)~ GOTO 50
END

ADD_TRANS_TRIGGER DTIERNON 50 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DTIERNON 50
	IF ~Race(LastTalkedToBy,DWARF)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @24554 DO ~AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@18517)
									AddJournalEntry(@23537,QUEST)~ GOTO 46
END

ADD_TRANS_TRIGGER DTIERNON 67 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DTIERNON 67
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN DO ~SetGlobal("Made_Tiernon_Weapon","GLOBAL",1)
					AddXP2DA("ID1EX2A")
					DisplayStringNoNameDlg(LastTalkedToBy,@18520)
					AddJournalEntry(@23543,QUEST)
					StartCutSceneMode()
					StartCutScene("gnFdeDlg")~ EXIT
END

// BEGIN ~DTYBALD~

ADD_TRANS_TRIGGER DTYBALD 14 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM DTYBALD 14
	IF ~Global("Ambere_Family","GLOBAL",0)
		Global("Tybald_Pissed","GLOBAL",0)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22179 DO ~ReputationInc(-1)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@11863)
									SetGlobal("Tybald_Pissed","GLOBAL",1)
									EraseJournalEntry(@23781)
									EraseJournalEntry(@32002)
									EraseJournalEntry(@23562)
									EraseJournalEntry(@34112)
									AddJournalEntry(@23398,QUEST_DONE)~ EXIT
	IF ~Global("Ambere_Family","GLOBAL",1)
		Global("Tybald_Pissed","GLOBAL",0)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @22182 DO ~ReputationInc(-1)
									AddXP2DA("ID1EX1E")
									DisplayStringNoNameDlg(LastTalkedToBy,@14414)
									SetGlobal("Tybald_Pissed","GLOBAL",1)
									EraseJournalEntry(@23781)
									EraseJournalEntry(@32002)
									EraseJournalEntry(@23562)
									EraseJournalEntry(@34112)
									AddJournalEntry(@34108,QUEST_DONE)~ EXIT
END

ADD_TRANS_TRIGGER DTYBALD 37 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DTYBALD 37
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @22334 DO ~SetGlobal("Quinn_Tybald","GLOBAL",2)
								AddXP2DA("ID1EX1A")
								DisplayStringNoNameDlg(LastTalkedToBy,@18511)
								EraseJournalEntry(@23781)
								EraseJournalEntry(@32002)
								EraseJournalEntry(@23562)
								EraseJournalEntry(@34112)
								AddJournalEntry(@34111,QUEST_DONE)~ GOTO 38
END

// BEGIN ~DWYLF~

ADD_TRANS_TRIGGER DWYLF 1 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 1

EXTEND_BOTTOM DWYLF 1
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @23279 DO ~AddXP2DA("ID1EX1H")
								DisplayStringNoNameDlg(LastTalkedToBy,@26704)~ GOTO 22
END

ADD_TRANS_TRIGGER DWYLF 16 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM DWYLF 16
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @23329 DO ~AddXP2DA("ID1EX1H")
								DisplayStringNoNameDlg(LastTalkedToBy,@26588)~ GOTO 17
	IF ~Alignment(LastTalkedToBy,MASK_EVIL)
		Global("D5_IWD_REAL","GLOBAL",0)~
			THEN REPLY @23330 DO ~AddXP2DA("ID1EX1H")
									DisplayStringNoNameDlg(LastTalkedToBy,@26699)~ GOTO 38
END

ADD_TRANS_TRIGGER DWYLF 19 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 1

EXTEND_BOTTOM DWYLF 19
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN REPLY @23343 DO ~SetGlobal("Know_Assassin","GLOBAL",2)
								SetGlobal("Know_Plot","GLOBAL",1)
								AddXP2DA("ID1EX1H")
								DisplayStringNoNameDlg(LastTalkedToBy,@26703)~ GOTO 40
END

ADD_TRANS_TRIGGER DWYLF 59 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DWYLF 59
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN DO ~SetGlobal("Seer_Ghost_State","GLOBAL",1)
					SetGlobal("Wylf_Seer_Showdown","GLOBAL",1)
					SetGlobal("Hjollder_Quest","GLOBAL",11)
					AddXP2DA("ID1EX1H")
					DisplayStringNoNameDlg(LastTalkedToBy,@18522)
					AddJournalEntry(@23527,QUEST)~ GOTO 60
END

ADD_TRANS_TRIGGER DWYLF 69 ~Global("D5_IWD_REAL","GLOBAL",1)~ DO 0

EXTEND_BOTTOM DWYLF 69
	IF ~Global("D5_IWD_REAL","GLOBAL",0)~
		THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",11)
					AddXP2DA("ID1EX1H")
					DisplayStringNoNameDlg(LastTalkedToBy,@18522)
					AddJournalEntry(@23527,QUEST)~ GOTO 70
END






















