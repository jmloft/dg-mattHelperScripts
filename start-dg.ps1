$expression  = 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\redis"; .\redis-server.exe; };'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\digital-garage-service\dynamodb_dg_local"; .\start-dynamo.bat;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\digital-garage-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\digital-garage-library\app"; npm install; npm start;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\dg-components\app"; npm install; npm start;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\dg-estimate-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\websocket-library\app"; npm install; npm start;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\websocket-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\digital-garage-lead-service\app"; npm install; npm run watch;};'
$expression += 'cmd /c start powershell -NoExit -Command {set-location "C:\Users\'+$env:USERNAME+'\OneDrive - Pariveda Solutions, Inc\Toyota\Digital Garage\source\dg-spas\app"; npm install; npm start;};'


Invoke-Expression $expression