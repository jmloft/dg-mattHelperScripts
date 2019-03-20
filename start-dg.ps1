$expression  = 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\redis"; .\redis-server.exe; };'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\digital-garage-service\dynamodb_dg_local"; .\start-dynamo.bat;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\digital-garage-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\digital-garage-library\app"; npm install; npm start;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\dg-components\app"; npm install; npm start;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\dg-estimate-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\websocket-library\app"; npm install; npm start;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\websocket-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\digital-garage-lead-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\source\toyota\dg-spas\app"; npm install; npm start;};'


Invoke-Expression $expression