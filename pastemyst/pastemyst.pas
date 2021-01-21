{--------------------------------------------------------------}
{ Unit Declaration }

unit pastemyst;

{--------------------------------------------------------------}
{ switches }

{$mode delphi}

{--------------------------------------------------------------}
{ Public Interface }

interface

{--------------------------------------------------------------}
{ Fetches a paste with given id - Interface }

function get_paste(_id: string): string;

{--------------------------------------------------------------}
{ Fetches a private paste with given id - Interface }

function get_private_paste(_id: string; _token: string): string;

{--------------------------------------------------------------}
{ Creating a new public paste - Interface }

function create_paste(params: string): string;

{--------------------------------------------------------------}
{ checks user - interface }

function check_user(user_id: string): string;


{--------------------------------------------------------------}
{ Private Implementation }

implementation

{--------------------------------------------------------------}
{ Units }

uses 
   fphttpclient, 
   opensslsockets,
   SysUtils,
   classes;

{--------------------------------------------------------------}
{ Constant Declarations }

const url = 'https://paste.myst.rs/api/v2/';

{--------------------------------------------------------------}
{ Variable Declarations }

Var Client : TFPHttpClient;

{--------------------------------------------------------------}
{ Fetches paste with given id - Implementation }

function get_paste(_id: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   try
      get_paste := Client.Get(url + 'paste/' + _id);
   finally
      Client.Free;
   end;
end;


{--------------------------------------------------------------}
{ Fetches a private paste with given id - Implementation }

function get_private_paste(_id: string; _token: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   Client.AddHeader('Authorization', _token);
   try
      get_private_paste := Client.Get(url + 'paste/' + _id);
   finally
      Client.Free;
   end;
end;


{--------------------------------------------------------------}
{ Creating a new public paste - Implementation }

function create_paste(params: string): string;

var Response : TStringStream;

begin
   Client := TFPHttpClient.Create(Nil);
   Client.AddHeader('Content-Type','application/json; charset=UTF-8');
   Client.RequestBody := TRawByteStringStream.Create(params);
   Response := TStringStream.Create('');
   try
      try
         Client.Post(url + 'paste', Response);
         create_paste := Response.DataString;
      except on E: Exception do
         create_paste := ('A wild Exception appeared, ' + E.message);
      end;
   finally
      Client.RequestBody.Free;
      Client.Free;
      Response.Free;
   end;
end;


{--------------------------------------------------------------}
{ Check user - Implementation}
function check_user(user_id: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   try
      check_user := Client.Get(url + 'user/' + user_id);
   finally
      Client.Free;
   end;
end;
{--------------------------------------------------------------}

end.