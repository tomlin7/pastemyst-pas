{Example - Getting a Paste }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

Var _Paste_ID:  string;


{--------------------------------------------------------------}
{ Main Program }

Begin
   write('ID of the Paste: ')
   read(_Paste_ID);
   writeln('Fetching Paste...');
   writeln(get_paste(_Paste_ID));
End.


{--------------------------------------------------------------}
