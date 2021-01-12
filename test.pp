{--------------------------------------------------------------}
{ Declaring Main Program }

program pastemyst;

{--------------------------------------------------------------}
{ Switches }

{$mode delphi}

{--------------------------------------------------------------}
{ units }

uses 
   fphttpclient, 
   opensslsockets;

{--------------------------------------------------------------}
{ Constant Declarations }

const url = 'https://paste.myst.rs/api/v2/paste/';

{--------------------------------------------------------------}
{ Variable Declarations }

Var Client : TFPHttpClient;
var paste_id: string;

{--------------------------------------------------------------}
{ Prints Output to The console }

procedure print(s: string);
begin
   Write(s, ^M);
end;


{--------------------------------------------------------------}
{ GET the pasty }

function get_paste(_id: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   // Client.AddHeader('', '');
   try
      get_paste := Client.Get(url + _id);
   finally
      Client.Free;
   end;
end;


{--------------------------------------------------------------}
{ Main Program }

begin
   Read(paste_id);
   writeln('Fetching Paste with Id: ', paste_id);
   print(get_paste(paste_id));
end.