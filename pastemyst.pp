{--------------------------------------------------------------}
{ Switches }

{$mode delphi}

{--------------------------------------------------------------}
{ units }

uses 
   fphttpclient, 
   opensslsockets;

{--------------------------------------------------------------}
{ Declaring Main Program }

program pastemyst;

{--------------------------------------------------------------}
{ Constant Declarations }

const url = 'https://paste.myst.rs/api/v2/paste/';

{--------------------------------------------------------------}
{ Variable Declarations }

Var Client : TFPHttpClient;

{--------------------------------------------------------------}
{ GET the pasty }

function get_paste(_id: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   // Client.AddHeader('', '');
   try
      getPasty := Client.Get(url + _id);
   finally
      Client.Free;
   end;
end;


{--------------------------------------------------------------}
{ Main Program }
begin
   Writeln(get_paste('99is6n23'));
end.