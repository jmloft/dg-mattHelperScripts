$Nextsession=new-object microsoft.powershell.commands.webrequestsession
$cookie = new-object system.net.cookie
$cookie.name='dgid_int'
$cookie.value = '7d7a8f4c-9cb3-415b-cb59-d16595053e12'
$cookie.path='/'
$cookie.domain = 'toyota.com'
$Nextsession.cookies.add($cookie)


$x = Invoke-RestMethod -Uri https://api.dgint.deops.toyota.com/garage -WebSession $Nextsession 
#$x.garage

$file = Get-Content 'C:\Users\matt.loft\Desktop\Vin.txt' | ConvertFrom-Json
$i=0
foreach($dgid in $file.dgids){
    $session = New-Object microsoft.powershell.commands.webrequestsession
    $cookie = new-object system.net.cookie
    $cookie.name='dgid_int'
    $cookie.value = $dgid
    $cookie.path='/'
    $cookie.domain = 'toyota.com'
    $session.cookies.add($cookie)
    
        $x=Invoke-RestMethod -Uri https://api.dgint.deops.toyota.com/garage -UseBasicParsing -WebSession $session 
        $x.garage.items
        
        #$x.garage.items.($file.Vin).isFavorite
    
    
}
