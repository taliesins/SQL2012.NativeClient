$params = @{
  packageName = 'sql2012.nativeclient';
  installerType = 'msi';
  silentArgs = '/qb IACCEPTSQLNCLILICENSETERMS=YES';
  url = 'http://download.microsoft.com/download/3/A/6/3A632674-A016-4E31-A675-94BE390EA739/ENU/x86/sqlncli.msi';
  checksum='970D69A53003E41A2B6219FC664222A725C7D54EB50BD6E96E9A3C88AA40EDA6';
  checksumType='Sha256';
  url64 = 'http://download.microsoft.com/download/3/A/6/3A632674-A016-4E31-A675-94BE390EA739/ENU/x64/sqlncli.msi';
  checksum64 = '214A81E6BE643A79E38F3134B870C4AF349AB0ABC1497BC3E97D4EADD05241FF';
  checksumType64 = 'Sha256';
  validExitCodes = @(0,3010)
}
Install-ChocolateyPackage @params
