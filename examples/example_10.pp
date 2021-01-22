{Example - Getting Language by extension }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

Var _Language_Extension :  string;

{--------------------------------------------------------------}
{ Main Program }

Begin
   write('Language Extension : ')
   read(_Language_Extension);
   writeln('Fetching Language...')
   writeln(get_language_by_extension(_Language_Extension));
End.


{--------------------------------------------------------------}
