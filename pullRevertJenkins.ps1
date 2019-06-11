cd ..
Write-Host('est')
cd dg-estimate-service
git checkout dg-revert-jenkins
git 

cd ..
Write-Host('dgs')
cd digital-garage-service
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgsi')

cd digital-garage-si-service
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgsn')

cd dg-search-notify-service
git stash
git checkout dg-revert-jenkins
git pull



cd ..
Write-Host('dge')

cd efc-model-service
git stash
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgw')

cd websocket-service
git stash
git checkout dg-revert-jenkins
git pull





cd ..\dg-mattHelperScripts