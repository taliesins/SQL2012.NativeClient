$params = @{
  packageName = 'sql2012.nativeclient';
  installerType = 'msi';
  silentArgs = '/qb IACCEPTSQLNCLILICENSETERMS=YES';
  url = 'https://download.microsoft.com/download/F/3/C/F3C64941-22A0-47E9-BC9B-1A19B4CA3E88/ENU/x86/sqlncli.msi';
  checksum='5065C333B1E31F18F4015774436BB46A422D865E56D5683C1BA0A0C83BC39FDA';
  checksumType='Sha256';
  url64 = 'https://download.microsoft.com/download/F/3/C/F3C64941-22A0-47E9-BC9B-1A19B4CA3E88/ENU/x64/sqlncli.msi';
  checksum64 = '3F48F58DCF9855B4C0F7C23C946A67AE0800ABD2E561216EB60E623B61A30FE1';
  checksumType64 = 'Sha256';
  validExitCodes = @(0,3010)
}
Install-ChocolateyPackage @params

