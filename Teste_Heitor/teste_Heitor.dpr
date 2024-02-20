program teste_Heitor;

uses
  Vcl.Forms,
  Unit_CadClientes in 'Unit_CadClientes.pas' {FrmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.Run;
end.
