object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 301
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 25
    Width = 62
    Height = 19
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 174
    Width = 232
    Height = 19
    Caption = 'Informa'#231#245'es do lote do produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnConec: TBitBtn
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = btnConecClick
  end
  object btnDesconec: TBitBtn
    Left = 8
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Desconectar '
    TabOrder = 1
    OnClick = btnDesconecClick
  end
  object DBGrid1: TDBGrid
    Left = 104
    Top = 48
    Width = 385
    Height = 120
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 104
    Top = 198
    Width = 385
    Height = 83
    DataSource = DataSource2
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'Database=DbKairos_Aprovi'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 88
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Produto')
    Left = 280
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnDataChange = DataSource1DataChange
    Left = 376
    Top = 112
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from LoteProduto')
    Left = 152
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 264
    Top = 216
  end
end
