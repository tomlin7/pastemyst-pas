{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit pastemyst.tests.endpoints;

{$warn 5023 off : no warning about unused units}
interface

uses
  data_endpoint, paste_endpoint, time_endpoint, user_endpoint, 
  LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('pastemyst.tests.endpoints', @Register);
end.
