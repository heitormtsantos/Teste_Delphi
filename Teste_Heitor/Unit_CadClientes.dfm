object FrmClientes: TFrmClientes
  Left = 0
  Top = 0
  Cursor = crHandPoint
  Caption = 'Clientes'
  ClientHeight = 1130
  ClientWidth = 1794
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  StyleElements = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label2: TLabel
    Left = 296
    Top = 104
    Width = 187
    Height = 32
    Caption = 'Tipo de Pessoa'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label3: TLabel
    Left = 56
    Top = 272
    Width = 266
    Height = 32
    Caption = 'Raz'#227'o Social / Nome*'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label4: TLabel
    Left = 56
    Top = 360
    Width = 308
    Height = 32
    Caption = 'Nome Fantasia / Apelido*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label5: TLabel
    Left = 56
    Top = 594
    Width = 101
    Height = 32
    Caption = 'Telefone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object LabelCpf_cnpj: TLabel
    Left = 800
    Top = 272
    Width = 142
    Height = 32
    Caption = 'CPF/CNPJ*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object LabelDocumento: TLabel
    Left = 1208
    Top = 272
    Width = 75
    Height = 32
    Caption = 'RG/IE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label8: TLabel
    Left = 1577
    Top = 272
    Width = 177
    Height = 32
    Caption = 'Data Cadastro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label9: TLabel
    Left = 800
    Top = 360
    Width = 55
    Height = 32
    Caption = 'CEP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label10: TLabel
    Left = 1016
    Top = 360
    Width = 138
    Height = 32
    Caption = 'Logradouro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label11: TLabel
    Left = 1406
    Top = 360
    Width = 176
    Height = 32
    Caption = 'Complemento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label12: TLabel
    Left = 56
    Top = 448
    Width = 72
    Height = 32
    Caption = 'Bairro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label13: TLabel
    Left = 448
    Top = 448
    Width = 131
    Height = 32
    Caption = 'Localidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label14: TLabel
    Left = 861
    Top = 448
    Width = 36
    Height = 32
    Caption = 'UF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object Label15: TLabel
    Left = 997
    Top = 448
    Width = 65
    Height = 32
    Caption = 'IBGE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    StyleElements = []
  end
  object SpeedButton1: TSpeedButton
    Left = 784
    Top = 872
    Width = 278
    Height = 105
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1794
    Height = 89
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    ExplicitWidth = 2062
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 354
      Height = 87
      Align = alLeft
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -37
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
      ExplicitHeight = 50
    end
  end
  object PanelCentral: TPanel
    Left = 688
    Top = 158
    Width = 649
    Height = 75
    BevelOuter = bvNone
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'PanelCentral'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleElements = []
    object RadioButton1: TRadioButton
      Left = 48
      Top = 24
      Width = 257
      Height = 25
      Caption = 'Pessoa Fisica(CPF)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 328
      Top = 22
      Width = 289
      Height = 33
      Caption = 'Pessoa Juridica(CNPJ)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object Panel3: TPanel
    Left = 56
    Top = 310
    Width = 705
    Height = 27
    BevelOuter = bvNone
    Caption = 'Panel3'
    Color = clAppWorkSpace
    ParentBackground = False
    TabOrder = 2
    object edtNome: TEdit
      Left = 0
      Top = 0
      Width = 705
      Height = 27
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 800
    Top = 304
    Width = 337
    Height = 33
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 3
    object MaskEditDocumento: TMaskEdit
      Left = 1
      Top = 1
      Width = 335
      Height = 31
      Align = alClient
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = ''
      ExplicitHeight = 32
    end
  end
  object Panel5: TPanel
    Left = 1208
    Top = 304
    Width = 337
    Height = 33
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 4
    object edtDocumento: TMaskEdit
      Left = 1
      Top = 1
      Width = 335
      Height = 31
      Align = alClient
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = ''
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 25
    end
  end
  object Panel6: TPanel
    Left = 56
    Top = 398
    Width = 705
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 5
    object edtNome_fantasia: TEdit
      Left = 1
      Top = 1
      Width = 703
      Height = 25
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel8: TPanel
    Left = 1576
    Top = 310
    Width = 201
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 6
    object data_cadastro: TDateTimePicker
      Left = 1
      Top = 1
      Width = 199
      Height = 25
      Align = alClient
      Date = 45339.000000000000000000
      Time = 0.813767407409614000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 163
    Top = 592
    Width = 193
    Height = 34
    Caption = 'Adicionar +'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Pesquisar: TButton
    Left = 868
    Top = 374
    Width = 103
    Height = 18
    Cursor = crHandPoint
    Caption = 'Pesquisar'
    TabOrder = 8
    OnClick = PesquisarClick
  end
  object Panel2: TPanel
    Left = 801
    Top = 398
    Width = 192
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 9
    object edtCEP: TEdit
      Left = 1
      Top = 1
      Width = 190
      Height = 25
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edtCEPExit
      ExplicitTop = 0
    end
  end
  object Panel7: TPanel
    Left = 1016
    Top = 398
    Width = 361
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 10
    object edtlogradouro: TEdit
      Left = 1
      Top = 1
      Width = 359
      Height = 25
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 145
      ExplicitWidth = 703
    end
  end
  object Panel9: TPanel
    Left = 1406
    Top = 398
    Width = 371
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 11
    object edtComplemento: TEdit
      Left = 1
      Top = 1
      Width = 369
      Height = 25
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 144
      ExplicitWidth = 560
    end
  end
  object Panel10: TPanel
    Left = 57
    Top = 486
    Width = 375
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 12
    object edtBairro: TEdit
      Left = 1
      Top = 1
      Width = 373
      Height = 25
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 359
      ExplicitHeight = 24
    end
  end
  object Panel11: TPanel
    Left = 448
    Top = 486
    Width = 375
    Height = 29
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 13
    object edtLocalidade: TEdit
      Left = 1
      Top = 1
      Width = 373
      Height = 27
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 33
      ExplicitTop = -8
      ExplicitWidth = 369
      ExplicitHeight = 25
    end
  end
  object Panel12: TPanel
    Left = 861
    Top = 486
    Width = 81
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 14
    object edtUf: TEdit
      Left = 1
      Top = 1
      Width = 79
      Height = 25
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 152
      ExplicitWidth = 218
    end
  end
  object Panel13: TPanel
    Left = 997
    Top = 486
    Width = 371
    Height = 27
    Caption = 'Panel4'
    Color = 16776973
    ParentBackground = False
    TabOrder = 15
    object edtIbge: TEdit
      Left = 1
      Top = 1
      Width = 369
      Height = 25
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16777071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 265
      ExplicitTop = -8
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br/ws'
    Params = <>
    SynchronizedEvents = False
    Left = 48
    Top = 128
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Resource = '01001000/json/'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 152
    Top = 128
  end
  object RESTResponse1: TRESTResponse
    Left = 256
    Top = 128
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemTable
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 152
    Top = 192
  end
  object MemTable: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 152
    Top = 256
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    Left = 352
    Top = 160
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'UseSSL=True'
      'DriverID=MySQL')
    Left = 1488
    Top = 832
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 1592
    Top = 832
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Gaming\Desktop\Teste_Heitor\libmysql.dll'
    Left = 1272
    Top = 728
  end
end
