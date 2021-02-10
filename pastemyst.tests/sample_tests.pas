unit sample_tests;

{$mode objfpc}{$H+}

interface
    
uses
    SysUtils, Classes,
    TestFramework;

type
    TTestCaseFirst = class(TTestCase)
    published
        procedure TestWarning;
        procedure TestOne;
        procedure TestNoError;
        procedure TestThree;
        procedure TestFour;
    end;

procedure RegisterTests;

implementation
    
uses
    SysUtils;

{ registering all test classes }
procedure RegisterTests;
begin
    TestFramework.RegisterTest(TTestCaseFirst.Suite);
end;

{ TTestCaseFirst }

procedure TTestCaseFirst.TestWarning;
begin
    // throw some warnings, chills!
end;

procedure TTestCaseFirst.TestOne;
begin
    Check(1 + 1 = 3, 'Catastrophic arithmetic failure!');
end;

procedure TTestCaseFirst.TestNoError;
begin
    Check(1 + 1 = 2, 'Catastrophic arithmetic failure!');
end;

procedure TTestCaseFirst.TestThree;
var
    s: string;
begin
   s := 'hello';
   CheckEquals('Hello', s, 'Failed CheckEquals');
end;

procedure TTestCaseFirst.TestFour;
var
    x, y: integer;
begin
    x := 10;
    y := 0;
    Check(x / y = 0, 'Failed on 1');
end;

end.