unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, uFormat,FireDAC.Phys.MySQL,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Phys.MySQLDef;

type
  TFrmClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PanelCentral: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    edtNome: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    LabelCpf_cnpj: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    LabelDocumento: TLabel;
    Panel6: TPanel;
    edtNome_fantasia: TEdit;
    Panel8: TPanel;
    data_cadastro: TDateTimePicker;
    Label8: TLabel;
    Button1: TButton;
    MaskEditDocumento: TMaskEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    MemTable: TFDMemTable;
    FDMemTable1: TFDMemTable;
    Pesquisar: TButton;
    Panel2: TPanel;
    edtCEP: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Panel7: TPanel;
    edtlogradouro: TEdit;
    Label11: TLabel;
    Panel9: TPanel;
    edtComplemento: TEdit;
    Label12: TLabel;
    Panel10: TPanel;
    edtBairro: TEdit;
    Label13: TLabel;
    Panel11: TPanel;
    edtLocalidade: TEdit;
    Label14: TLabel;
    Panel12: TPanel;
    edtUf: TEdit;
    Label15: TLabel;
    Panel13: TPanel;
    edtIbge: TEdit;
    edtDocumento: TMaskEdit;
    SpeedButton1: TSpeedButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure SpeedButton4MouseEnter(Sender: TObject);
    procedure SpeedButton4MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RemoverTelefone(Sender: TObject);
    procedure AdicionarTelefone(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PesquisarClick(Sender: TObject);
   //   function InserirTelefone(const Numero: string): Integer;
     procedure MostrarValoresMaskEdit;
    procedure Button3Click(Sender: TObject);
    procedure ConsultarCEP(cep: string);
    procedure edtCEPExit(Sender: TObject);
    procedure edtCEPChange(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
   procedure LimparCampos(Formulario: TForm);

procedure InserirClienteMySQL;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FrmClientes: TFrmClientes;
  telefones: integer;
implementation

{$R *.dfm}
procedure TFrmClientes.Button1Click(Sender: TObject);
begin
  AdicionarTelefone(sender);
end;

procedure TFrmClientes.PesquisarClick(Sender: TObject);
var
i : integer;
begin
 ConsultarCEP(edtCEP.Text)   ;


end;

procedure TFrmClientes.Button3Click(Sender: TObject);
begin
MostrarValoresMaskEdit();
end;




procedure TFrmClientes.FormCreate(Sender: TObject);
begin
  PanelCentral.Align := alNone;
  PanelCentral.Left := (ClientWidth - PanelCentral.Width) div 2;
  PanelCentral.Top := 290;

  Label2.Align := alNone;
  Label2.Left := (ClientWidth - PanelCentral.Width) div 2;
  Label2.Top := 230;
  telefones := 0;
  AdicionarTelefone(sender);
  data_cadastro.Date := Date;
end;

procedure TFrmClientes.SpeedButton1Click(Sender: TObject);
var
  NumeroEncontrado: Boolean;
  i: Integer;
begin

  if not (RadioButton1.Checked or RadioButton2.Checked) then
  begin
    ShowMessage('Selecione o tipo de pessoa (Física ou Jurídica)');
    Exit;
  end;

  if edtNome.Text = '' then
  begin
   ShowMessage('Informe o nome');
    edtNome.SetFocus;
    exit;
  end ;

  // Verifica se há números no campo cpf
    for i := 1 to Length(MaskEditDocumento.Text) do
    begin
      if CharInSet(MaskEditDocumento.Text[i], ['0'..'9']) then
      begin
             NumeroEncontrado := True;
        Break;
      end;
    end;

     if not NumeroEncontrado then
    begin
         ShowMessage('Informe o CPF/CNPJ');
    end
      else
      begin
           try
             InserirClienteMySQL;
             ShowMessage('Cliente registrado com sucesso');
             LimparCampos(Self);
             Except
                  ShowMessage('Erro ao salvar') ;
           end;

      end;
end;

procedure TFrmClientes.SpeedButton4MouseEnter(Sender: TObject);
begin
  Panel3.Color := clBlue;
end;

procedure TFrmClientes.SpeedButton4MouseLeave(Sender: TObject);
begin
  Panel3.Color := clWhite;
end;

procedure TFrmClientes.AdicionarTelefone;
var
  MaskEditTelefone: TMaskEdit;
DeleteButton  : TButton;
begin
  // Criar um novo MaskEdit para o telefone
  MaskEditTelefone := TMaskEdit.Create(Self);
  MaskEditTelefone.Parent := Self;
  MaskEditTelefone.EditMask := '(99) 9999-9999;1;_';
  MaskEditTelefone.Left := 120;
  MaskEditTelefone.Top := -1000 + (ComponentCount - 1) * 45;

   // Criar o botão "Excluir" associado ao MaskEdit
  DeleteButton := TButton.Create(Self);
  DeleteButton.Parent := Self;
  DeleteButton.Caption := 'Excluir';
  DeleteButton.Left := 400;
  DeleteButton.Top := MaskEditTelefone.Top;
  DeleteButton.OnClick := RemoverTelefone;

  // Associar o MaskEdit ao botão "Excluir"
  DeleteButton.Tag := NativeInt(MaskEditTelefone);

//  MaskEditTelefone.Name := 'telefone'  + inttostr( telefones+1);
    telefones := telefones + 1;
end;

procedure TFrmClientes.RadioButton1Click(Sender: TObject);
begin
MaskEditDocumento.EditMask := '###.###.###-##;#;_';
edtDocumento.EditMask := '!99.999.999-9;1;_';
LabelDocumento.Caption := 'RG:';
LabelCpf_cnpj.Caption := 'CPF';
end;

procedure TFrmClientes.RadioButton2Click(Sender: TObject);
begin
MaskEditDocumento.EditMask := '##.###.###/####-##;#;_';
edtDocumento.EditMask := '999.999.999.999';
LabelDocumento.Caption := 'IE:';
LabelCpf_cnpj.Caption := 'CNPJ';
end;

procedure TFrmClientes.RemoverTelefone;
var
  MaskEditToDelete: TMaskEdit;
  i:integer;
begin

if  MessageDlg('Deseja remover o numero selecionado ?' ,TMsgDlgType.mtConfirmation,mbYesNo,0) = mrYes then
 begin
      // Obter a referência ao MaskEdit associado ao botão "Excluir"
      MaskEditToDelete := TMaskEdit((Sender as TButton).Tag);

      // Remover o MaskEdit do formulário
      if Assigned(MaskEditToDelete) then
      begin
        MaskEditToDelete.Free;
        (Sender as TButton).Free; // Remover também o botão "Excluir"
       // AtualizarPosicaoMaskEdits; // Atualizar a posição dos MaskEdits restantes

      end;
 end;
end;


  procedure TFrmClientes.MostrarValoresMaskEdit;
var
  I: Integer;
  MemoTexto: TStringList;
  MaskEdit: TMaskEdit;
begin
  MemoTexto := TStringList.Create;

    for I := 0 to ComponentCount - 1 do
    begin
     if (Components[I] is TMaskEdit) and (not SameText(TMaskEdit(Components[I]).Name, 'cnpj')) then
      begin
        MaskEdit := TMaskEdit(Components[I]);
        MemoTexto.Add(MaskEdit.Name + ': ' + MaskEdit.Text);
      end;
    end;

  end;

 procedure TFrmClientes.LimparCampos(Formulario: TForm);
var
  i: Integer;
begin
  for i := 0 to Formulario.ComponentCount - 1 do
  begin
    if (Formulario.Components[i] is TEdit) or
       (Formulario.Components[i] is TMemo) or
       (Formulario.Components[i] is TMaskEdit) then
    begin
      // Limpar o texto se for um controle de edição de texto específico
      if Formulario.Components[i] is TCustomEdit then
        TCustomEdit(Formulario.Components[i]).Text := '';
    end;
    // Adicione outras verificações de tipo de controle, se necessário
  end;
end;


procedure TFrmClientes.ConsultarCEP(cep: string);
begin
    if SomenteNumero(edtCEP.Text).Length <> 8 then
    begin
        ShowMessage('CEP inválido');
        exit;
    end;

    RESTRequest1.Resource := SomenteNumero(edtCEP.Text) + '/json';
    RESTRequest1.Execute;

    if RESTRequest1.Response.StatusCode = 200 then
    begin
        if RESTRequest1.Response.Content.IndexOf('erro') > 0 then
            ShowMessage('CEP não encontrado')
        else
        begin
            with MemTable do
            begin

              edtCEP.text:= FieldByName('cep').AsString;
              edtlogradouro.Text:= FieldByName('logradouro').AsString ;
              edtComplemento.Text:= FieldByName('complemento').AsString ;
              edtBairro.Text:= FieldByName('bairro').AsString ;
              edtLocalidade.Text:=  FieldByName('localidade').AsString;
              edtUf.Text:= FieldByName('uf').AsString ;
              edtIbge.Text:= FieldByName('ibge').AsString;

            end;
        end;
    end
    else
        ShowMessage('Erro ao consultar CEP');
end;

procedure TFrmClientes.edtCEPChange(Sender: TObject);
begin
    Formatar(edtCEP, TFormato.CEP);
end;

procedure TFrmClientes.edtCEPExit(Sender: TObject);
begin

       if SomenteNumero(edtCEP.Text) <> ''  then
        ConsultarCEP(edtCEP.Text);
end;


procedure TFrmClientes.InserirClienteMySQL;
var
  FDConnection: TFDConnection;
  FDQuery: TFDQuery;
begin
  FDConnection := TFDConnection.Create(nil);
  FDQuery := TFDQuery.Create(nil);

  try
    // Configurar a conexão com o MySQL
    FDConnection.Params.DriverID := 'MySQL';
    FDConnection.Params.Database := 'teste_Clientes';
    FDConnection.Params.UserName := 'root';
    FDConnection.Params.Password := 'softlotus';
    FDConnection.Params.Add('Server=localhost');
    FDConnection.Connected := True;

    FDQuery.Connection := FDConnection;

    // Inserção dos dados
    FDQuery.SQL.Text :=
      'INSERT INTO teste_clientes.clientes ' +
      '(nome, nome_social, cpf_cnpj, rg_ie, data_cadastro, cep, ' +
      'logradouro, complemento, bairro, localidade, uf, ibge, telefone) ' +
      'VALUES ' +
      '(:Nome, :NomeSocial, :CpfCnpj, :RgIe, :DataCadastro, :Cep, ' +
      ':Logradouro, :Complemento, :Bairro, :Localidade, :Uf, :Ibge, :Telefone)';


    FDQuery.ParamByName('Nome').AsString := edtNome.text;
    FDQuery.ParamByName('NomeSocial').AsString := edtNome_fantasia.Text;
    FDQuery.ParamByName('CpfCnpj').AsString :=MaskEditDocumento.Text;
    FDQuery.ParamByName('RgIe').AsString := edtDocumento.Text;
    FDQuery.ParamByName('DataCadastro').AsDate := data_cadastro.Date;
    FDQuery.ParamByName('Cep').AsString := edtCEP.Text;
    FDQuery.ParamByName('Logradouro').AsString := edtlogradouro.Text;
    FDQuery.ParamByName('Complemento').AsString := edtComplemento.Text;
    FDQuery.ParamByName('Bairro').AsString := edtBairro.Text;
    FDQuery.ParamByName('Localidade').AsString := edtLocalidade.Text;
    FDQuery.ParamByName('Uf').AsString := edtUf.Text;
    FDQuery.ParamByName('Ibge').AsString := edtIbge.Text;
    FDQuery.ParamByName('Telefone').AsString := '(11) 99999-9999';

    // Executar a inserção
    FDQuery.ExecSQL;
  finally
    FDConnection.Free;
    FDQuery.Free;
  end;
end;
end.
