{Example - Getting Language by name }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

Var _Language_Name:  string;

{--------------------------------------------------------------}
{ Main Program }

Begin
   write('Language Name : ')
   read(_Language_Name);
   writeln('Fetching Language...')
   writeln(get_language_by_name(_Language_Name));
End.


{--------------------------------------------------------------}
