{Example - Getting a Private Paste }

Program example_2;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

Var 
   _Paste_ID :  string;
   _Token    :  string;


{--------------------------------------------------------------}
{ Main Program }

Begin
   write('ID of the Paste : ');
   read(_Paste_ID);
   write(^M, 'Authorization Token : ')
   read(_Token);
   writeln('Fetching Paste...');
   writeln(get_private_paste(_Paste_ID, _Token));
End.

{--------------------------------------------------------------}
