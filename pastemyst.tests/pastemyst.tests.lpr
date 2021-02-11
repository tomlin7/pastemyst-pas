program pastemyst.tests;

{$mode objfpc}{$H+}

Uses
   Classes, SysUtils,
   TextTestRunner, paste_endpoint,
   time_endpoint, user_endpoint,
   data_endpoint;

Begin
   // Run the registered tests
   RunRegisteredTests;
End.
