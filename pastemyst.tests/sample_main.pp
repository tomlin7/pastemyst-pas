program project1;

{$mode objfpc}{$H+}

uses
    Classes,
    TextTestRunner,
    sample_tests;

begin
    // register all tests
    sample_tests.RegisterTests;

    RunRegisteredTests;
end.
