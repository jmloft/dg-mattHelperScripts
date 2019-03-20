$sauceCredentialFile = 'C:\Users\'+$env:USERNAME+'\Documents\SauceConnect\sauceCredentials.txt'
#$outFile = 'C:\Users\'+$env:USERNAME+'\Documents\SauceConnect\outfile.txt'
$credentials = Get-Content $sauceCredentialFile
$sauceLabUsername = $credentials[0]
$sauceLabUsername
$sauceLabAccessKey = $credentials[1]
$env:APP_TEAM = 'DG'
$env:SAUCE_USERNAME=$sauceLabUsername
$env:SAUCE_ACCESS_KEY = $sauceLabAccessKey
$env:AUT = 'T2_TEST'
$env:PLATFORM = "Windows 10";
$env:BROWSER_NAME = "Chrome";
$env:VERSION = "66.0";
$ErrorActionPreference = "Stop"
if ($args[0] -eq 'ChromeLocal' -or $args[0] -eq 'LocalChrome')
{
    $env:LOCAL_EXEC = "true";
    $env:LOCAL_CHROME_DRIVER_LOCATION = 'C:\Users\'+$env:USERNAME+'\Documents\chromedriver.exe'
    return;
}
else 
{
    $env:LOCAL_EXEC = "false"

try{$scProcess = Get-Process -Name 'sc'}
catch
{
    Write-Host 'STARTING SAUCE CONNECT WAIT FOR IT TO BE UP TO CONTINUE'
    $expression  = 'cmd /c start powershell -NoExit -Command { write-host "Hi, new window!"; set-location "C:\Users\'+$env:USERNAME+'\Documents\SauceConnect";bin/sc -u '+$sauceLabUsername+' -k '+$sauceLabAccessKey+' --auth staging.toyota.com:80:tcom_user:D0!pHiN$ --auth staging.toyota.com:443:tcom_user:D0!pHiN$  --auth test.national.aws.buyatoyota.com:80:toyota-bat:t0y0ta --auth test.national.aws.buyatoyota.com:443:toyota-bat:t0y0ta}'
    Invoke-Expression $expression
    return;
}
$browser= $args[0]
$AUT= $args[1]
#$AUT = $AUT -eq '' ? $AUT='T1':$AUT




switch ($browser)
{
    "Chrome"
    {
        Write-Host 'Sauce Labs Desktop Chrome'
        $env:PLATFORM = "Windows 10";
        $env:BROWSER_NAME = "Chrome";
        $env:VERSION = "66.0";
    }

    "MobileSafari"
    {
        $env:PLATFORM = "iOS 11.2";
        $env:BROWSER_NAME = "Safari";
        $env:VERSION = "11.2"
    }
    "IE"
    {
        $env:PLATFORM = "windows 10";
        $env:BROWSER_NAME = "Internet Explorer";
        $env:VERSION = "11.103";
    }
    "Edge"
    {
        $env:PLATFORM = "windows 10";
        $env:BROWSER_NAME = "MicrosoftEdge";
        $env:VERSION = "16.16299";
    }
    "AndroidChrome"
    {
        $env:PLATFORM = "Android 7.1";
        $env:BROWSER_NAME = "Chrome"; 
    }


}



#gci env:    
}
