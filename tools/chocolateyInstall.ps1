$params = @{
  packageName = 'sql2012.nativeclient';
  fileType = 'msi';
  silentArgs = ' /qb IACCEPTSQLNCLILICENSETERMS=YES';
  url = 'http://download.microsoft.com/download/B/E/D/BED73AAC-3C8A-43F5-AF4F-EB4FEA6C8F3A/ENU/x86/sqlncli.msi';
  checksum = '128A8AD1F93DC07D213FF4670A33A967457B498B03BF7F82AFECA41EDA7BFE1E';
  checksumType = 'Sha256';
  url64bit = 'http://download.microsoft.com/download/B/E/D/BED73AAC-3C8A-43F5-AF4F-EB4FEA6C8F3A/ENU/x64/sqlncli.msi';
  checksum64 = '6737269AD63771C15B6E249209BEE0EC2AD1231503EFD9E1F1A7213EE7E70886';
  checksumType64 = 'Sha256'
}

Install-ChocolateyPackage @params