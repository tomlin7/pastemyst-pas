program project1;

{$mode objfpc}{$H+}

uses
 Classes,
 TextTestRunner,
 sample_tests;

begin
 // Register all tests
 sample_tests.RegisterTests;

 RunRegisteredTests;
end.