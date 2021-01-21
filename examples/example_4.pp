Program example_4;

uses pastemyst in '../pastemyst/pastemyst.pas';

var user_id: string;

begin
    readln(user_id);
    writeln(check_user(user_id));
end.