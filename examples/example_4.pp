{Example - Creating a private paste }

Program example;

{--------------------------------------------------------------}
{ Switches }

{$mode delphi}

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses 
   pastemyst in '../pastemyst/pastemyst.pas',
   jsonparser, fpjson, sysutils, classes;

{--------------------------------------------------------------}
{ Variable Declarations}

Var 
   _Token:  string;
   _File :  TFileStream;
   _Data :  TJSONData;
   _Enum :  TJSONEnum;

{--------------------------------------------------------------}
{ Main Program }

Begin
   _Data := Nil;
   _File := TFileStream.Create('./samples/sample_private_paste.json', fmOpenRead Or fmShareDenywrite);
   write('Authorization Token : ')
   read(_Token);
   Try
      _Data := GetJSON(_File);
      writeln('Creating private paste...', ^M, 'Using json data in samples/sample_private_paste.json')
      writeln(create_private_paste(_Token, _Data.AsJSON));
   Finally
      _Data.Free;
      _File.Free;
End;

End.


{--------------------------------------------------------------}
