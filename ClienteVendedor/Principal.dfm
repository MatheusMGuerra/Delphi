object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 537
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Cadastro: TLabel
    Left = 8
    Top = 29
    Width = 66
    Height = 21
    Caption = 'Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Consulta: TLabel
    Left = 8
    Top = 317
    Width = 64
    Height = 21
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pageControl: TPageControl
    Left = 8
    Top = 56
    Width = 289
    Height = 233
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cliente'
      object Label1: TLabel
        Left = 2
        Top = 128
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label2: TLabel
        Left = 2
        Top = 58
        Width = 28
        Height = 13
        Caption = 'Idade'
      end
      object Label3: TLabel
        Left = 0
        Top = 93
        Width = 55
        Height = 13
        Caption = 'Vencimento'
      end
      object Label4: TLabel
        Left = 3
        Top = 21
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object edt_nomeC: TEdit
        Left = 36
        Top = 21
        Width = 181
        Height = 21
        TabOrder = 0
      end
      object edt_enderecoC: TEdit
        Left = 53
        Top = 125
        Width = 172
        Height = 21
        TabOrder = 1
      end
      object edt_idadeC: TEdit
        Left = 36
        Top = 58
        Width = 85
        Height = 21
        TabOrder = 2
      end
      object edt_vencimentoC: TEdit
        Left = 61
        Top = 90
        Width = 60
        Height = 21
        TabOrder = 3
      end
      object btn_salvarC: TButton
        Left = 96
        Top = 160
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = btn_salvarCClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vendedor'
      ImageIndex = 1
      object Label5: TLabel
        Left = 18
        Top = 58
        Width = 28
        Height = 13
        Caption = 'Idade'
      end
      object Label6: TLabel
        Left = 18
        Top = 24
        Width = 27
        Height = 13
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 18
        Top = 128
        Width = 84
        Height = 13
        Caption = 'Tipo de vendedor'
      end
      object Label8: TLabel
        Left = 18
        Top = 96
        Width = 45
        Height = 13
        Caption = 'Comiss'#227'o'
      end
      object edt_idadeV: TEdit
        Left = 64
        Top = 55
        Width = 73
        Height = 21
        TabOrder = 0
      end
      object edt_comissao: TEdit
        Left = 69
        Top = 93
        Width = 73
        Height = 21
        TabOrder = 1
      end
      object edt_tipo: TEdit
        Left = 18
        Top = 147
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edt_nomeV: TEdit
        Left = 64
        Top = 21
        Width = 177
        Height = 21
        TabOrder = 3
      end
      object btn_salvarV: TBitBtn
        Left = 178
        Top = 148
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = btn_salvarVClick
      end
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 344
    Width = 285
    Height = 169
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 108
    Top = 313
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
