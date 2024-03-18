$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://vpilot.rosscarlson.dev/Assets/Files/Installers/vPilot-Setup-3.8.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'vPilot*'

  checksum      = '88B8B061A3E96580CC1083CFEE4B01B549376AF271618D267FC03C7919F22F61'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs