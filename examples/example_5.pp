{Example - Editing an existing paste }

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
   _Id   :  string;
   _File :  TFileStream;
   _Data :  TJSONData;
   _Enum :  TJSONEnum;

{--------------------------------------------------------------}
{ Main Program }

Begin
   _Data := Nil;
   _File := TFileStream.Create('./samples/sample_edit_paste.json', fmOpenRead Or fmShareDenywrite);
   write('Autorization Token : ');
   read(_Token);
   write(^M, 'ID of the paste : ')
   read(_Id);
   Try
      _Data := GetJSON(_File);
      writeln('Editing paste...', ^M, 'Using json data in samples/sample_edit_paste.json');
      writeln(edit_paste(token, id, params));
   Finally
      _Data.Free;
      _File.Free;
End;

End.


{--------------------------------------------------------------}
