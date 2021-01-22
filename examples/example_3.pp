{Example - Creating a Paste }

Program example;

{--------------------------------------------------------------}
{ Switches }

{$mode delphi}

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses 
   pastemyst in '../pastemyst/pastemyst.pas',
   jsonparser,fpjson, sysutils, classes;

{--------------------------------------------------------------}
{ Variable Declarations}

Var 
   _File :  TFileStream;
   _Data :  TJSONData;
   _Enum :  TJSONEnum;

{--------------------------------------------------------------}
{ Main Program }

Begin
   _Data := Nil;
   _File := TFileStream.Create('./samples/sample_public_paste.json', fmOpenRead Or fmShareDenywrite);
   Try
      _Data := GetJSON(_File);
      writeln('Creating paste...', ^M, 'Using json data in samples/sample_public_paste.json')
      writeln(create_paste(_Data.AsJSON));
   Finally
      _Data.Free;
      _File.Free;
End;

End.


{--------------------------------------------------------------}
