{--------------------------------------------------------------}
{ Unit Declaration }

unit pastemyst;

{--------------------------------------------------------------}
{ switches }

{$mode delphi}



{==============================================================}
{ Public Interface }

interface

{--------------------------------------------------------------}
{ Fetches a paste with given id }

function get_paste(_id: string): string;

{--------------------------------------------------------------}
{ Fetches a private paste with given id }

function get_private_paste(_id: string; _token: string): string;

{--------------------------------------------------------------}
{ Creating a new public paste }

function create_paste(params: string): string;

{--------------------------------------------------------------}
{ Creating a new private paste }

function create_private_paste(params: string): string;

{--------------------------------------------------------------}
{ Editing an existing paste }

function edit_paste(params: string): string;

{--------------------------------------------------------------}
{ Delete an existing paste }

function delete_paste(params: string): string;

{--------------------------------------------------------------}
{ Get info about a user }

function get_user(user_name: string): string;

{--------------------------------------------------------------}
{ Checks whether user exists }

function user_exists(user_name: string): integer;

{--------------------------------------------------------------}
{ Get programming language by it's name }

function get_language_by_name(_name: string): string;

{--------------------------------------------------------------}
{ Get programming language by it's extension }

function get_language_by_extension(extension: string): string;



{==============================================================}
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
{ Fetches a paste with given id }

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
{ Fetches a private paste with given id }

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
{ Creating a new public paste }

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
{ Creating a new private paste }

function create_private_paste(params: string; _token: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   Client.AddHeader('Content-Type', 'application/json; charset=UTF-8');
   Client.AddHeader('Authorization', _token);
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
{ Editing an existing paste }

function edit_paste(params: string): string;
begin
   writeln('check')
end;

{--------------------------------------------------------------}
{ Delete an existing paste }

function delete_paste(params: string): string;
begin
   writeln('check')
end;

{--------------------------------------------------------------}
{ Get info about a user }

function get_user(user_name: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   try
      get_user := Client.Get(url + 'user/' + user_name);
   finally
      Client.Free;
   end;
end;

{--------------------------------------------------------------}
{ Checks whether user exists }

function user_exists(user_name: string): integer;
begin
   Client := TFPHttpClient.Create(Nil);
   try
      Client.Get(url + 'user/' + user_name + '/exists');
      user_exists := Client.ResponseStatusCode // make it return a boolean later
   finally
      Client.Free;
   end;
end;

{--------------------------------------------------------------}
{ Get programming language by it's name }

function get_language_by_name(_name: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   try
      get_language_by_name := Client.Get(url + 'data/language?name=' + _name);
   finally
      Client.Free;
   end;
end;

{--------------------------------------------------------------}
{ Get programming language by it's extension }

function get_language_by_extension(extension: string): string;
begin
   
end;

{--------------------------------------------------------------}

end.