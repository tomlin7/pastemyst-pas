unit pastemyst_tests_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry;

type

  pastemyst.tests= class(TTestCase)
  published
    procedure TestHookUp;
  end;

implementation

procedure pastemyst.tests.TestHookUp;
begin
  Fail('Write your own test');
end;



initialization

  RegisterTest(pastemyst.tests);
end.

