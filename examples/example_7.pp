{Example - Getting a User }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

Var _User_Name:  string;

{--------------------------------------------------------------}
{ Main Program }


Begin
   write('Enter User Name : ');
   read(_User_Name);
   writeln('Fetching user...');
   writeln(get_user(_User_Name));
End.


{--------------------------------------------------------------}
