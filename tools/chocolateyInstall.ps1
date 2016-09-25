$params = @{
  packageName = 'sql2012.nativeclient';
  fileType = 'msi';
  silentArgs = ' /qb IACCEPTSQLNCLILICENSETERMS=YES';
  url = 'http://download.microsoft.com/download/F/E/D/FEDB200F-DE2A-46D8-B661-D019DFE9D470/ENU/x86/sqlncli.msi';
  checksum = '9BB7B584ECD2CBE480607C4A51728693B2C99C6BC38FA9213B5B54A13C34B7E2';
  checksumType = 'Sha256';
  url64bit = 'http://download.microsoft.com/download/F/E/D/FEDB200F-DE2A-46D8-B661-D019DFE9D470/ENU/x64/sqlncli.msi';
  checksum64 = '1364BF4C37A09CE3C87B029A2DB4708F066074B1EAA22AA4E86D437B7B05203D';
  checksumType64 = 'Sha256'
}

Install-ChocolateyPackage @params