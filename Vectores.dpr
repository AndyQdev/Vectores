program Vectores;

uses
  Vcl.Forms,
  FormVector in 'FormVector.pas' {Form1},
  UCvector in 'UCvector.pas',
  UCVectorString in 'UCVectorString.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
