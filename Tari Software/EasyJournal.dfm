object EasyJournalF: TEasyJournalF
  Left = 511
  Top = 397
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Easy Journal Details'
  ClientHeight = 226
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object JrnlDateEdit: TcxDateEdit
    Left = 208
    Top = 76
    Properties.DateButtons = []
    TabOrder = 1
    Width = 137
  end
  object JrnlAmountEdit: TcxCurrencyEdit
    Left = 208
    Top = 108
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = '$,0;($,0)'
    Properties.Nullable = False
    Properties.UseThousandSeparator = True
    TabOrder = 2
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 24
    Top = 76
    TabStop = False
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    AutoSize = False
    Caption = 'Journal Date'
    ParentColor = False
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Transparent = True
    Height = 17
    Width = 129
  end
  object cxLabel3: TcxLabel
    Left = 24
    Top = 108
    TabStop = False
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    AutoSize = False
    Caption = 'Journal Amount'
    ParentColor = False
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Transparent = True
    Height = 17
    Width = 129
  end
  object cxButton1: TcxButton
    Left = 208
    Top = 168
    Width = 137
    Height = 41
    Caption = 'Create Journal(s)'
    ModalResult = 1
    OptionsImage.Glyph.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      18000000000030090000630B0000630B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFBC5D23A53C00A53C00A53C00A53C00A53C
      00A53C00A53C00A53C00A53C00A53C00A53C00FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFBE6026FFD4A5FF9A2DFF9A2DFF9A2DFF9A2DFF9A2DFF9A2DFF9A2DFF9A
      2DFF9A2DA53C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFA22E08A22E08A22E08A22E08A22E08A22E08A22E08C06328FFD4A5FFD4A5
      FFD4A5FFD4A5FFCF9BFFCA91FFC587FFC17DFFBB71FF9A2DA53C00FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFC2652BFFD4A5FFD4A5FFD4A5FFD4A5FFD4A5FFCF9B
      FFCA91FFC587FFC17DFFBB71A53C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3
      682EC2652BC06328BE6026BC5D23BA5B20B8581DB55419B45217B24F14AF4B10
      AD480DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E
      08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFA22E08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBC5D23A53C
      00A53C00A53C00A53C00A53C00A53C00A53C00A53C00A53C00A53C00A53C00FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E08FF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFBE6026FFD4A5FF9A2DFF9A2DFF9A2DFF9A
      2DFF9A2DFF9A2DFF9A2DFF9A2DFF9A2DA53C00FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFA22E08A22E08A22E08A22E08A22E08A22E08
      A22E08C06328FFD4A5FFD4A5FFD4A5FFD4A5FFCF9BFFCA91FFC587FFC17DFFBB
      71FF9A2DA53C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFA22E08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC2652BFFD4A5FFD4A5
      FFD4A5FFD4A5FFD4A5FFCF9BFFCA91FFC587FFC17DFFBB71A53C00FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFC3682EC2652BC06328BE6026BC5D23BA5B20B8581D
      B55419B45217B24F14AF4B10AD480DFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E
      08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFBC5D23A53C00A53C00A53C00A53C00A53C00A53C00A53C00A5
      3C0000C8F800A6FFA53C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFA22E08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBE6026FFD4
      A5FF9A2DFF9A2DFF9A2D00C8F800A6FFFF9A2DFF9A2D00C8F800A6FFA53C00FF
      00FF00A6FF00C8F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E08A22E08
      A22E08A22E08A22E08A22E08A22E08C06328FFD4A5FFD4A5FFD4A5FFD4A5FFCF
      9B00C8F800A6FF9AEBF900C8F800A6FF9AEBF900A6FF00C8F8FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFC2652BFFD4A5FFD4A5FFD4A5FFD4A5FFD4A59AEBF900C8F89AEBF900A6
      FF00A6FF00A6FF00C8F89AEBF9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFA22E08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3682EC2652BC06328
      BE6026BC5D23BA5B209AEBF99AEBF99AEBF900F8F800F8F89AEBF99AEBF99AEB
      F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA22E08FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00A6FF00A6FF00A6FF
      00A6FF00F8F8FFFFFFFFFFFF00F8F800A6FF00A6FF00A6FF00A6FFFF00FFFF00
      FFBC5D23A53C00A53C00A53C00A53C00A53C00A53C00A53C00A53C00A53C00A5
      3C00A53C00FF00FFFF00FF00C8F800C8F800C8F800A6FF00F8F89AEBF9FFFFFF
      00F8F800C8F800C8F800C8F800C8F8FF00FFFF00FFBE6026FFD4A5FF9A2DFF9A
      2DFF9A2DFF9A2DFF9A2DFF9A2DFF9A2DFF9A2DFF9A2DA53C00FF00FFFF00FFFF
      00FFFF00FF9AEBF99AEBF99AEBF900F8F800F8F89AEBF99AEBF99AEBF9FF00FF
      FF00FFFF00FFFF00FFC06328FFD4A5FFD4A5FFD4A5FFD4A5FFCF9BFFCA91FFC5
      87FFC17DFFBB71FF9A2DA53C00FF00FFFF00FFFF00FFFF00FF9AEBF900A6FF00
      C8F800C8F800A6FF00C8F800A6FF9AEBF9FF00FFFF00FFFF00FFFF00FFC2652B
      FFD4A5FFD4A5FFD4A5FFD4A5FFD4A5FFCF9BFFCA91FFC587FFC17DFFBB71A53C
      00FF00FFFF00FFFF00FFFF00FF00A6FF00C8F89AEBF900C8F800A6FF9AEBF900
      C8F800A6FFFF00FFFF00FFFF00FFFF00FFC3682EC2652BC06328BE6026BC5D23
      BA5B20B8581DB55419B45217B24F14AF4B10AD480DFF00FFFF00FFFF00FF00A6
      FF00C8F8FF00FFFF00FF00C8F800A6FFFF00FFFF00FF00C8F800A6FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00C8
      F800A6FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF}
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object CancelBtn: TcxButton
    Left = 24
    Top = 168
    Width = 137
    Height = 41
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    OnClick = CancelBtnClick
  end
  object JrnlName: TcxTextEdit
    Left = 24
    Top = 44
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 0
    Text = 'JrnlName'
    Width = 321
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 8
    TabStop = False
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    AutoSize = False
    Caption = 'Journal Notation'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Calibri'
    Style.Font.Style = []
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Style.IsFontAssigned = True
    Transparent = True
    Height = 30
    Width = 169
  end
  object JrnlRepeatCB: TcxCheckBox
    Left = 24
    Top = 136
    AutoSize = False
    Caption = 'Check to repeat this journal monthly'
    Properties.Alignment = taRightJustify
    TabOrder = 8
    Height = 21
    Width = 233
  end
end