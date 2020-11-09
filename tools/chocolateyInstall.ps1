$params = @{
  packageName = 'sql2012.nativeclient';
  installerType = 'msi';
  silentArgs = '/qb IACCEPTSQLNCLILICENSETERMS=YES';
  url = 'https://download.microsoft.com/download/B/E/D/BED73AAC-3C8A-43F5-AF4F-EB4FEA6C8F3A/ENU/x86/sqlncli.msi';
  checksum='128a8ad1f93dc07d213ff4670a33a967457b498b03bf7f82afeca41eda7bfe1e';
  checksumType='Sha256';
  url64 = 'https://download.microsoft.com/download/B/E/D/BED73AAC-3C8A-43F5-AF4F-EB4FEA6C8F3A/ENU/x64/sqlncli.msi';
  checksum64 = '6737269ad63771c15b6e249209bee0ec2ad1231503efd9e1f1a7213ee7e70886';
  checksumType64 = 'Sha256';
  validExitCodes = @(0,3010)
}
Install-ChocolateyPackage @params
