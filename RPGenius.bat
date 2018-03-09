@echo off
TITLE RPGenius - A Narrative Puzzler
:title
cls
echo.
echo "  ___  ___   ___             _             
echo " | _ \| _ \ / __| ___  _ _  (_) _  _  ___  
echo " |   /|  _/| (_ |/ -_)|  ,\ | || || |(_-<  
echo " |_|_\|_|   \___|\___||_||_||_| \_,_|/__/  
echo "                                           
echo "          A Narrative Puzzler              
echo.
echo.
echo 1.Play
echo 2.Options
echo 3.Quit
echo.
set /p input1=Enter: 
if %input1% equ 1 goto Game
if %input1% equ 2 goto Options
if %input1% equ 1324 goto ChapterSelector
if %input1% equ 3 exit
goto title
:ChapterSelector
cls
echo Chapter Selector
echo.
echo Choose A Chapter To Jump To:
echo.
echo 1.Chapter I
echo 2.Chapter II
echo 3.Chapter III
echo.
set /p inputSelector=Enter: 
if %inputSelector% equ 1 goto ChapterI
if %inputSelector% equ 2 goto ChapterII
if %inputSelector% equ 3 goto ChapterIII
goto ChapterSelector
:Options
cls
echo Options
echo.
echo Type back to go back to title
echo 1.Color
echo.
set /p optionSelector=Enter: 
if %optionSelector% equ back goto title
if %optionSelector% equ 1 goto ColorPg1
goto Options
:ColorPg1
cls
echo Color Selector
echo.
echo Type back to go back to the options menu
echo.
echo 1.Background = Black, Foreground = blue
echo 2.Background = Black, Foreground = green
echo 3.Background = Black, Foreground = aqua
echo 4.Background = Black, Foreground = red
echo 5.Background = Black, Foreground = purple
echo 6.Background = Black, Foreground = yellow
echo 7.Background = Black, Foreground = white
echo 8.Background = Black, Foreground = grey
echo 9.Background = Black, Foreground = light blue
echo 10.Background = Black, Foreground = light green
echo 11.Background = Black, Foreground = light aqua
echo 12.Background = Black, Foreground = light red
echo 13.Background = Black, Foreground = light purple
echo 14.Background = Black, Foreground = light yellow
echo 15.Next Page
echo.
set /p colorSel=Enter: 
if %colorSel% equ 1 color 01
if %colorSel% equ 2 color 02
if %colorSel% equ 3 color 03
if %colorSel% equ 4 color 04
if %colorSel% equ 5 color 05
if %colorSel% equ 6 color 06
if %colorSel% equ 7 color 07
if %colorSel% equ 8 color 08
if %colorSel% equ 9 color 09
if %colorSel% equ 10 color 0a
if %colorSel% equ 11 color 0b
if %colorSel% equ 12 color 0c
if %colorSel% equ 13 color 0d
if %colorSel% equ 14 color 0e
if %colorSel% equ 15 goto ColorPg2
if %colorSel% equ back goto Options
goto ColorPg1
:ColorPg2
cls
echo Color Selector
echo.
echo Type back to go back to the options menu
echo.
echo 1.Background = White, Foreground = black
echo 2.Background = White, Foreground = blue
echo 3.Background = White, Foreground = green
echo 4.Background = White, Foreground = aqua
echo 5.Background = White, Foreground = red
echo 6.Background = White, Foreground = purple
echo 7.Background = White, Foreground = yellow
echo 8.Background = White, Foreground = grey
echo 9.Background = White, Foreground = light blue
echo 10.Background = White, Foreground = light green
echo 11.Background = White, Foreground = light aqua
echo 12.Background = White, Foreground = light red
echo 13.Background = White, Foreground = light purple
echo 14.Background = White, Foreground = light yellow
echo 15.Previous Page
echo.
set /p colorSel=Enter: 
if %colorSel% equ 1 color f0
if %colorSel% equ 2 color f1
if %colorSel% equ 3 color f2
if %colorSel% equ 4 color f3
if %colorSel% equ 5 color f4
if %colorSel% equ 6 color f5
if %colorSel% equ 7 color f6
if %colorSel% equ 8 color f8
if %colorSel% equ 9 color f9
if %colorSel% equ 10 color fa
if %colorSel% equ 11 color fb
if %colorSel% equ 12 color fc
if %colorSel% equ 13 color fd
if %colorSel% equ 14 color fe
if %colorSel% equ 15 goto ColorPg1
if %colorSel% equ back goto Options
goto ColorPg2
:Game
:ChapterI
cls
echo Chapter I
echo.
echo The Room
echo.
pause
:input1
cls
echo You find your self in a strange room.
echo What should you do?
echo.
echo 1.Get up and explore
echo 2.Go back to sleep
echo.
set /p input1=Enter: 
if %input1% equ 1 goto ChapterIExplore
if %input1% equ 2 goto ChapterIDie
goto input1
:ChapterIExplore
echo.
echo You get up.
echo You see that there is a door.
echo Its locked.
echo "Dang"
echo The number 1137 is on the door.
echo You also see an air vent,
echo But its too high to look into!
:input2
echo.
echo 1.Try to see what is in the vent
echo 2.Give Up
echo.
set /p input2=Enter: 
if %input2% equ 1 goto ChapterIExplore2
if %input2% equ 2 goto ChapterIDie2
goto input2
:ChapterIDie
echo.
echo You go back to sleep but hear a hiss!
echo You know what it is!
echo IT'S DEATH GAS!!!
pause
:input3
cls
echo 1.Continue from last chapter
echo 2.Quit to title
echo.
set /p input3=Enter: 
if %input3% equ 1 goto ChapterI
if %input3% equ 2 goto title
goto input3
:ChapterIDie2
echo.
echo You sit on the ground and hear a hiss!
echo You know what it is!
echo IT'S DEATH GAS!!!
pause
:input4
cls
echo 1.Continue from last chapter
echo 2.Quit to title
echo.
set /p input4=Enter: 
if %input4% equ 1 goto ChapterI
if %input4% equ 2 goto title
goto input4
:ChapterIExplore2
cls
echo You try to move your bed in front of the vent.
echo It is very heavy!
echo Somehow you move it.
echo In the vent there is a note.
echo.
echo It reads:
echo The death gas will release in 20 seconds.
echo Make sure that the door is closed when it does.
echo The key to the door is under this note.
echo GO!
pause
cls
echo You just made it out.
echo you heard the sound of the gas just as you closed the door.
echo Now you are faced with a new problem.
pause
cls
:ChapterII
cls
echo Chapter II
echo.
echo Lies
echo.
pause
:ChapterII1
cls
echo You now see a hallway
echo There is a left path and a right path
echo What should you do
:input5
echo.
echo 1.Turn back
echo 2.Go left
echo 3.Go right
set /p input5=Enter: 
if %input5% equ 1 goto ChapterIIBack
if %input5% equ 2 goto ChapterIILeft
if %input5% equ 3 goto ChapterIIRight
goto input5
:ChapterIIBack
echo.
echo You turn back.
echo You try the door but its locked
echo you turn back around
pause
Goto ChapterII1
:ChapterIILeft
echo.
echo You go left.
echo you start down the path when you hear a saw.
echo "A SAW"
pause
:input6
cls
echo 1.Continue from last chapter
echo 2.Quit to title
echo.
set /p input6=Enter: 
if %input6% equ 1 goto ChapterII
if %input6% equ 2 goto title
goto input6
:ChapterIIRight
echo.
echo You go right.
echo You start down the path
echo You make it!
pause
:ChapterIIb
cls
echo The path ends at a huge room.
echo In the room there is a table with a cake on it.
:input7
echo.
echo 1.Eat the cake
echo 2.Wait in the room
echo.
set /p input7=Enter: 
if %input7% equ 1 goto ChapterIIEat
if %input7% equ 2 goto ChapterIIWait
goto input7
:ChapterIIEat
echo.
echo You decide to eat the cake.
echo You start to feel bad
pause
goto title
:ChapterIIWait
cls
echo You decide to wait.
pause
cls
echo One of the walls starts to move!
pause
cls
echo It reveles a secret room!
pause
cls
echo You go in the room.
pause
cls
echo The door closes,the light turns off.
pause
echo.
echo You hear a scream.
echo The lights turn back on.
echo You see the words "Turn Back" and "1825" on the wall.
:input8
echo.
echo 1.Turn back
echo 2.Continue on
set /p input8=Enter: 
if %input8% equ 1 goto ChapterIIbBack
if %input8% equ 2 goto ChapterIIbCont
goto input8
:ChapterIIbBack
echo.
echo You turn back.
echo You return to the room with the cake.
pause
goto ChapterIIb
:ChapterIIbCont
echo.
echo You continue your quest for the end.
pause
:ChapterIII
cls
echo Chapter III
echo.
echo Choices
echo.
pause
:ChapterIIIa
cls
echo You find yourself in another room.
echo On the table there is a black box, a red button, and a golden rope.
echo There is a door but it is locked.
echo.
echo 1.Open the box
echo 2.Press the button
echo 3.Pull the rope
set /p input9=Enter: 
if %input9% equ 1 goto BlackBox
if %input9% equ 2 goto RedButton
if %input9% equ 3 goto GoldRope
goto ChapterIIIa
:BlackBox
echo.
echo You open the box.
echo You find a golden key.
echo Should you take it?
echo.
echo 1.Yes
echo 2.No
set /p input10=Enter: 
if %input10% equ 1 goto KeyPickup
if %input10% equ 2 goto ChapterIIIa
goto BlackBox
:RedButton
echo.
echo You push the button.
echo You fall into a pit.
echo "IT WAS A TRAP!"
pause
:input11
cls
echo 1.Continue from last chapter
echo 2.Quit to title
set /p input11=Enter: 
if %input11% equ 1 goto ChapterIII
if %input11% equ 2 goto title
goto input11
:KeyPickup
echo.
echo You pickup the golden key.
echo the door unlocks.
pause
echo you go in the room.
:BlackBoxRoom
cls
echo The room is pitch black.
pause
echo.
echo Voice - "So, you have made it to this room?"
pause
echo.
echo You - "Yes, but I have many questions!
echo 	Like why I hear..."
echo.
echo Voice - "Not now"
pause
echo.
echo You - "Then When?"
pause
echo.
echo Voice - "When you need to know.
echo 	But for now continue on."
pause
echo.
echo The lights turn on and a door opens.
echo.
echo You walk through the door onward.
pause
goto BlackPath
:BlackPath
cls
echo In the next room there is a locked door and a keypad.
:BlackKeypad
cls
echo You try to remember a 4-digit code to input.
echo.
set /p inputBlackPath=Keypad Input: 
if %inputBlackPath% equ 1825 goto INPUTCORRECT1825
if %inputBlackPath% equ 1137 goto INPUTCORRECT1137
goto INPUTWRONG
goto BlackKeypad
:INPUTWRONG
cls
echo CODE WRONG
echo You - "Dang it!"
pause
goto BlackKeypad
:INPUTCORRECT1825

:INPUTCORRECT1825

:GoldRope
echo.
echo You pull the rope.
echo The box opens.
echo In the box there is a rusted key.
echo You take it.
echo The door unlocks.
pause
cls
echo You go in the room.
echo.
echo On the floor of the room is an old and almost broken axe.
echo There are two passages sealed by wood.
echo One on the left and one on the right.
echo.
echo The axe looks like it can only chop only one passage open.
echo.
:input12
echo.
echo 1.Chop open the left passage
echo 2.Chop open the right passage
set /p input12=Enter: 
if %input12% equ 1 goto ChapterIIIpassageLeft
if %input12% equ 2 goto ChapterIIIpassageRight
goto input12
:ChapterIIIpassageLeft
pause
exit
:ChapterIIIpassageRight
pause
exit