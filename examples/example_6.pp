{Example - Deleting an Existing Paste }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var
   _Token    : string;
   _Paste_ID : string;

{--------------------------------------------------------------}
{ Main Program }

begin
   write('Authorization Token : ')
   read(_Token);
   write(^M, 'ID of the Paste : ')
   read(_Paste_ID);
   writeln('Deleting paste...')
   writeln(delete_paste(_Token, _Paste_ID));
end.


{--------------------------------------------------------------}
