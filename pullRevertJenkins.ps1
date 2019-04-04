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
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgvn')

cd dg-vin-notify-service
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dge')

cd efc-model-service
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgw')

cd websocket-service
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgcom')

cd dg-components
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgspa')

cd dg-spas
git checkout dg-revert-jenkins
git pull

cd ..
Write-Host('dgl')

cd digital-garage-library
git checkout dg-revert-jenkins
git pull

cd ..\dg-mattHelperScripts