@echo off 
setlocal enabledelayedexpansion 

set website[0]=https://chat.openai.com/chat
set name[0]=chatgpt
set website[1]=https://www.cgtrader.com/profile/models?first_time=1
set name[1]=cgtrader
set website[2]=https://cults3d.com/en/creations/mine
set name[2]=cults3d
set website[3]=https://labs.openai.com/e/akPw8gxNWyssd947Y6GEHpd3
set name[3]=DALLE
set website[4]=https://www.fiverr.com/users/tomilotila/seller_dashboard
set name[4]=fiverr
set website[5]=https://github.com/lotila
set name[5]=Github
set website[6]=http://octopi.local/
set name[6]=octoPi
set website[7]=https://www.linkedin.com/feed/
set name[7]=linkedin
set website[8]=https://translate.google.fi/?hl=fi&sl=en&tl=fi&op=translate
set name[8]=kaantaja
set website[9]=https://huggingface.co/spaces/anzorq/point-e_demo
set name[9]=huggingface
set website[10]=https://the.hiveos.farm/
set name[10]=hiveOS
set website[11]=https://mail.google.com/mail/u/0/#inbox
set name[11]=oma gmail
set website[12]=https://www.printables.com/social/529631-tomilotila/models
set name[12]=printables
set website[13]=https://quillbot.com/
set name[13]=quillbot
set website[14]=https://www.reddit.com/
set name[14]=Reddit
set website[15]=--app=https://www.sanakirja.org/
set name[15]=Sanakirja
set website[16]=https://sis-tuni.funidata.fi/student/plan/otm-0e692529-3db9-4bd8-b229-bf36ba5f87c3/calendar/enrolments
set name[16]=sisu tuni
set website[17]=https://cloud.smartdraw.com/editor.aspx?credID=-44110631&depoId=41399039&flags=128
set name[17]=smartdraw
set website[18]=https://www.thingiverse.com/
set name[18]=thingiverse
set website[19]=https://tome.app/work-1e1
set name[19]=tome.app
set website[20]=https://moodle.tuni.fi/my/
set name[20]=tuni moodle
set website[21]=https://outlook.office.com/mail/inbox/id/AAQkADJiNDBiYWYzLTMyZjItNGMyNC1iMjcxLTMwOTZlYjA1YmIzZAAQAIDNx22tp59AuxE%2Bv9NpYd8%3D?cc=eyJhY2Nlc3NfdG9rZW4iOnsibmJmIjp7ImVzc2VudGlhbCI6dHJ1ZSwidmFsdW
set name[21]=tuni outlook
set website[22]=https://plus.tuni.fi/
set name[22]=tuni plussa
set website[23]=http://192.168.0.1/logon.html
set name[23]=wlan
set website[24]=https://www.youtube.com/
set name[24]=youtube



for /l %%n in (0,1,24) do ( 
  
SETLOCAL ENABLEDELAYEDEXPANSION
SET Esc_LinkDest=%%HOMEDRIVE%%%%HOMEPATH%%\Desktop\!name[%%n]!.lnk
SET Esc_LinkTarget=C:\Program Files\Google\Chrome\Application\chrome.exe
SET cSctVBS=CreateShortcut.vbs
SET LOG=".\%~N0_runtime.log"
((
  echo Set oWS = WScript.CreateObject^("WScript.Shell"^) 
  echo sLinkFile = oWS.ExpandEnvironmentStrings^("!Esc_LinkDest!"^)
  echo Set oLink = oWS.CreateShortcut^(sLinkFile^) 
  echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("!Esc_LinkTarget!"^)
  echo oLink.Arguments = oWS.ExpandEnvironmentStrings^("--app=!website[%%n]!"^)
  echo oLink.IconLocation = "%SystemRoot%\SystemResources\shell32.dll.mun, 2"
  echo oLink.Save
)1>!cSctVBS!
cscript //nologo .\!cSctVBS!
DEL !cSctVBS! /f /q
)1>>!LOG! 2>>&1


)

