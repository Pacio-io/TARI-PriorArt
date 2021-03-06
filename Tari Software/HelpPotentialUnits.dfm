object HelpPotentialUnitsF: THelpPotentialUnitsF
  Left = 521
  Top = 433
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Help - Potential Explained'
  ClientHeight = 299
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 233
    Width = 688
    object cxLabel1: TcxLabel
      Left = 8
      Top = 8
      AutoSize = False
      Caption = 'Potential Explained'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Calibri'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = True
      Style.StyleController = DMRep1.cxEditStyleLabelExtraLarge
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
      Height = 28
      Width = 249
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 40
      Caption = 
        'In non-manufacturing/service sectors such as retail/wholesale/ho' +
        'spitality/catering etc, the potential number of sales could be e' +
        'stimated by multiplying the FTE staff by the average gross sales' +
        ' per FTE for the sector concerned.'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.StyleController = DMRep1.cxEditStyleLabelSmall
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Transparent = True
      Width = 652
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 112
      AutoSize = False
      Caption = 
        'For example: a retailer selling Toys employing 5 FTE staff - inc' +
        'luding the working principal - with a Toy industry average of  $' +
        '200,000 per FTE and an average sale of $20 would calculate a pot' +
        'ential number of sales of 10,000 a year per FTE.'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Calibri'
      Style.Font.Style = [fsItalic]
      Style.StyleController = DMRep1.cxEditStyleLabelSmall
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Transparent = True
      Height = 73
      Width = 673
    end
    object cxLabel4: TcxLabel
      Left = 8
      Top = 184
      Caption = 
        'If no industry data is available, then a guessimate of potential' +
        ' is better than no potential at all!'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.StyleController = DMRep1.cxEditStyleLabelSmall
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
  end
  object cxButton1: TcxButton
    Left = 552
    Top = 247
    Width = 121
    Height = 41
    Caption = 'Close'
    OptionsImage.Glyph.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      18000000000030090000830F0000830F00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF0A78BE0966A10966A1086098FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A78BE0966A10966A1
      1578B51475B20966A1086098FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF0A78BE0966A10966A11578B5167CB8157AB71578B51476B30966A1086098
      203E69203E69203E69203E69203E69203E69203E69203E69203E69203E69203E
      69FF00FFFF00FFFF00FFFF00FF0A78BE0966A10966A11578B51883BF1781BE17
      7FBC167EBA167CB8157AB71578B50966A10860983D5B813D5B813D5B813D5B81
      3D5B813D5B813D5B813D5B813D5B813D5B81203E69FF00FFFF00FFFF00FFFF00
      FF096EB01A8AC61988C51987C31885C11883BF1781BE177FBC167EBA167CB815
      7AB70966A108609809714A0F4E2C1044250F45251044241043240E42240F4223
      1042230B4219203E69FF00FFFF00FFFF00FFFF00FF096EB01A8CC81A8AC61988
      C51987C31885C11883BF1781BE177FBC167EBA167CB80966A1086098136D5214
      4F3914473313483313453112442F11443011432F11412D0C3E23203E69FF00FF
      FF00FFFF00FFFF00FF096EB01B8ECA1A8CC81A8AC61988C51987C31885C11883
      BF1781BE177FBC167EBA0966A1086098186F5418553E174E39184D39184C3918
      4D39194B381948361A463413462C203E69FF00FFFF00FFFF00FFFF00FF096EB0
      1C90CC1B8ECA1A8CC81A8AC61988C51987C31885C11883BF1781BE177FBC0966
      A10860981B765A196B4D196A4E1A6E531B71571C745B1C775E1E755C1E71581B
      7453203E69FF00FFFF00FFFF00FFFF00FF096EB01C92CE1C90CC1B8FCB1B8DC9
      1A8BC71A89C51987C41986C21884C01882BF0966A10860981E8D691E916B1F94
      6F1F946F1F906D1E8F6B1D8D691E86631E82601B845A203E69FF00FFFF00FFFF
      00FFFF00FF096EB01C94CF1C92CE1C90CC1B8FCB1B8DC91A8BC71A89C51987C4
      1986C21884C00966A108609821906B1F91691B8A6417815D1376530F6A480B5F
      3F08573806533401542E203E69FF00FFFF00FFFF00FFFF00FF096EB01D96D11C
      94CF1C92CE1C90CC1B8FCB1B8DC91A8BC7EABCA61987C41986C20966A1086098
      186F4F105E3F16593F235E473265504168554E68565669585F67556D664D203E
      69FF00FFFF00FFFF00FFFF00FF096EB01D98D31D96D11C94CF1C92CE1C90CC1B
      8FCBEFCEBDFFE7DEEABCA61987C40966A10860984E6D52627460747D6F888576
      9E9080B7A394CCB3A6DAB4A5E6B6A6FFC1AB203E69FF00FFFF00FFFF00FFFF00
      FF096EB01E9AD51D98D31D96D11C94CF1C92CE1C90CC1B8FCBEFCEBD1A8BC71A
      89C50966A1086098C39C83FFCFBDFFD6C7FFC5B0FCB89BFBBCA2FAC8B4F6C0A6
      F4C2ABFFDCC1203E69FF00FFFF00FFFF00FFFF00FF096EB01F9CD71E9AD51D98
      D31D96D11C94CF1C92CE1C90CC1B8FCB1B8DC91A8BC70966A1086098D99F7BF1
      AB8BF0AB8FEFA687F1AA8CF1BBA2F1C4AFF0BDA7F1C4B1FFC6A4203E69FF00FF
      FF00FFFF00FFFF00FF096EB0209FDA1F9DD81E9BD61E99D41D97D21C95D01C93
      CE1C90CC1B8FCB1B8DC90966A1086098EFAA83F4AB8AF1CDBFF1BEA9F3C2AEF5
      EFEEF4F2F0F3E6D8F2C7B2FFB78C203E69FF00FFFF00FFFF00FFFF00FF096EB0
      20A1DC209FDA1F9DD81E9BD61E99D41D97D21C95D01C93CE1C91CD1C90CC0966
      A1086098F49F72F49060EE956DF0A584F2C9B7F4E6DFF3D0BFF2A883F19263FF
      8B46203E69FF00FFFF00FFFF00FFFF00FF096EB021A3DE20A1DC209FDA1F9DD8
      1E9BD61E99D41D97D21C95D01C93CE1C91CD0966A1086098F2915DF3793DED6C
      2EEE7E49F1AB8BF2B89BF08C5BF07336EE7032FF985B203E69FF00FFFF00FFFF
      00FFFF00FF096EB022A5E021A3DE20A1DC209FDA1F9DD81E9BD61E99D41D97D2
      1C95D01C93CE0966A1086098F09160F3814BEE6F34ED6A2AEE7A42EE7F4AEC67
      26EC6522EC6C2EFFA36F203E69FF00FFFF00FFFF00FFFF00FF096EB022A7E222
      A5E021A3DE20A1DC209FDA1F9DD81E9BD61E99D41D97D21C95D00966A1086098
      F1A17DF38D62EC7039EA6424EA5F1DE95B19E96122EA682DEB6E37FF7C39203E
      69FF00FFFF00FFFF00FFFF00FF096EB023A9E422A7E222A5E021A3DE20A1DC20
      9FDA1F9DD81E9BD61E99D41D97D20966A1086098F5B69AF28960E96A34E66125
      E65D20E65B1EE76B35EC8F68ED8F69FF8347203E69FF00FFFF00FFFF00FFFF00
      FF096EB024ABE623A9E422A7E222A5E021A3DE20A1DC209FDA1F9DD81E9BD61E
      99D40966A1086098F4B899F28C66E86E3FE3602AE2551AE55F2AEB8F6FF2CCBB
      F3CFC0FFE1C8203E69FF00FFFF00FFFF00FFFF00FF096EB025AEE924ACE723AA
      E523A8E322A6E121A4DF21A2DD20A0DB1F9ED91F9CD70966A1086098FFB687FF
      9D6AFB844DFA8A59FB976CFD9B6EFFAB80FFC39EFFDFBADBD2C7203E69FF00FF
      FF00FFFF00FFFF00FF0B85D30A78BE096EB01A8CC91E9BD623A8E322A6E121A4
      DF21A2DD20A0DB1F9ED90966A10860983D5B813D5B813D5B813D5B813D5B813D
      5B813D5B813D5B813D5B813D5B81203E69FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF0B85D30A78BE096EB01A8CC91E9BD621A4DF21A2DD20A0DB0966
      A1086098203E69203E69203E69203E69203E69203E69203E69203E69203E6920
      3E69203E69FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0B85D30A78BE096EB01A8CC91E9BD60966A1086098FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0B85D30A78BE0966A1086098FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF}
    TabOrder = 1
    OnClick = cxButton1Click
  end
end
