CHAIN IF WEIGHT #-1 ~Global("HOW_COMPLETED","GLOBAL",1)
Global("C0_HOW_END_XACTILE","GLOBAL",0)~ THEN DXACTILE xactile
~I heard the sounds of battle, dry one. The bones of the dead shook, as though in dread.~
DO ~SetGlobal("C0_HOW_END_XACTILE","GLOBAL",1)~
== DXACTILE ~Is Isacaracht...~
END
  ++ ~Dead. For good, this time.~ + xactile.1

CHAIN DXACTILE xactile.1
~I see. And my people...~
END
  ++ ~I am sorry. They fought to the death.~ + xactile.2
  ++ ~Do you intend to avenge them?~ + xactile.2

CHAIN DXACTILE xactile.2
~From the moment I allowed you to pass to the temple, this was one of two inevitable outcomes. I can only continue to do my duty, and provide the souls of my people some measure of peace in the afterlife.~
= ~It is... somewhat liberating, in a way. I will remain until the task is done, and once there are no more dead to attend to, and then... I am uncertain.~
= ~Go, drylander. Your task is done, and I must return to mine. I do not expect to see you again.~
END
  ++ ~Farewell.~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0_HOW_END_XACTILE","GLOBAL",1)~ THEN DXACTILE xactile
~Leave me be, dry ones. You have left me with a monumental task, and I must attend to it with respect.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0_HOW_END_NEW","GLOBAL",1)~ THEN DHJOLLDE hjollder
~We awaited in apprehension while we listened to your battle with the Great Wyrm. Some feared we may not witness your return, but Tempos has favored you, as I foresaw.~
DO ~SetGlobal("C0_HOW_END_NEW","GLOBAL",2)~
= ~You have done a great deed for our people and the Ten Towns. I expect your name will be honored within the mead hall for years to come, alongside those of our greatest kings of old.~
END
  ++ ~I did this to protect the innocent, not for glory.~ + hjollder.1
  ++ ~Damn right.~ + hjollder.2
  ++ ~Right now, I just want to return to safety and have a warm meal.~ + hjollder.3

CHAIN DHJOLLDE hjollder.1
~Only you know the intent behind your actions. But the result will be accepted by others as they believe you deserve. Your actions are worthy of legend, and they will be remembered as such.~
EXTERN DHJOLLDE hjollder.2

CHAIN DHJOLLDE hjollder.2
~I expect that right now, however, your thoughts are of celebration, as they should be. We should return to the mainland posthaste.~
EXTERN DBEORNEN hjollder.4

CHAIN DHJOLLDE hjollder.3
~Of course. This is a time for celebration for us all. Beornen will bring us back to the mainland without delay.~
EXTERN DBEORNEN hjollder.4

CHAIN DBEORNEN hjollder.4
~The sails are raised and all is prepared. We should take to sea at once, while the winds are favorable.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0HOWCS1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0_HOW_END_NEW","GLOBAL",2)~ THEN DHJOLLDE hjollder2
~We have returned—to Lonelywood, as I expect you would prefer. The sight of this place is undoubtedly a great comfort after what you have faced.~
DO ~HideAreaOnMap("AR9200")
SetGlobal("C0_HOW_END_NEW","GLOBAL",3)~
= ~The journey has been long, and you have fought well. I hope it was of much worth to you, my friend.~
END
  ++ ~Thank you. It was a good adventure.~ + hjollder2.1
  ++ ~I guess it wasn't a waste of time.~ + hjollder2.2
  ++ ~We got a lot of treasure out of it, at least.~ + hjollder2.2

CHAIN DHJOLLDE hjollder2.1
~I should be the one thanking you. You have risked life and limb for my people, to whom you owe nothing to... whether or not it was your intent, we all owe you our eternal gratitude.~
END
IF ~!Global("Master_Quest","GLOBAL",7)~ EXTERN DHJOLLDE hjollder2.2
IF ~Global("Master_Quest","GLOBAL",7)~ DO ~SetGlobal("C0HOW_HJOLL_LUREMASTER","GLOBAL",-1)~ EXTERN DHJOLLDE hjollder2.2

CHAIN DHJOLLDE hjollder2.2
~Whether or not this act of heroism may be the needed catalyst for true peace between the tribes and city-folk has yet to be seen, but I have little doubt that your actions will lead us to view outlanders with a newfound respect... and that, I think, may be a good start.~
= ~I expect there will still be much work to do for the future of the tribes, but that is our burden to bear. You undoubtedly have your own adventures, and further legends to make.~
= ~Please, take your time to set whatever remaining affairs you have in order. When you are prepared, I will summon the wind one last time to assist your journey back to Kuldahar.~
END
  ++ ~I'm ready to go now.~ + hjollder2.3
  ++ ~Alright. I'll be back once I'm ready.~ EXIT

CHAIN DHJOLLDE hjollder2.3
~So be it. I wish you well in your journey, my friend. This may be our final meeting, but the blessing of Tempos always be with you for your future battles.~
DO ~SetGlobal("C0_HOW_END_NEW","GLOBAL",4)~
= ~Farewell, and good luck.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0HOWCS2")~ EXIT

CHAIN IF WEIGHT #-1 ~OR(2)
!Global("Master_Quest","GLOBAL",7)
Global("C0HOW_HJOLL_LUREMASTER","GLOBAL",1)
Global("C0_HOW_END_NEW","GLOBAL",3)~ THEN DHJOLLDE hjollder2
~You are back, my friend. Are you prepared to ride the wind, and return to where you belong?~
END
  ++ ~Yes. I'm ready to go.~ + hjollder2.3
  ++ ~Not yet. I still have things to do.~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Master_Quest","GLOBAL",7)
Global("C0HOW_HJOLL_LUREMASTER","GLOBAL",0)
Global("C0_HOW_END_NEW","GLOBAL",3)~ THEN DHJOLLDE hjollder3
~You are back at last... did something unforseen happen? I was concerned that you did not return for longer than anticipated, and my visions were clouded when I sought you out.~
DO ~SetGlobal("C0HOW_HJOLL_LUREMASTER","GLOBAL",1)~
END
  ++ ~I had... another unexpected adventure. It's a long story.~ + hjollder3.1
  ++ ~Don't worry about it. I'm ready to return to Kuldahar.~ + hjollder2.3
  ++ ~Not yet. I still have things to do.~ EXIT

CHAIN DHJOLLDE hjollder3.1
~I... see. No doubt it is another worthy tale. I have little doubt that I will hear of it eventually, whether from the spirits or the words of the living.~
= ~Now, are you prepared to leave?~
END
  ++ ~Yes. Send me back to Kuldahar.~ + hjollder2.3
  ++ ~Not yet. I still have things to do.~ EXIT
