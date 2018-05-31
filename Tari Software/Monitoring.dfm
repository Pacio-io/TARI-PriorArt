object MonitoringF: TMonitoringF
  Left = 347
  Top = 422
  Width = 794
  Height = 581
  HelpContext = 1022
  Caption = 'Tracking - '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bmpPanel1: TbmpPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 547
    Align = alClient
    BevelWidth = 2
    TabOrder = 0
    BitmapResName = 'MAINBACKGRND'
    object Label1: TLabel
      Left = 24
      Top = 392
      Width = 197
      Height = 16
      Caption = 'Grouping Name for Invoices:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 256
      Top = 16
      Width = 169
      Height = 13
      Alignment = taRightJustify
      Caption = 'Department / Revenue Group'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 256
      Top = 88
      Width = 165
      Height = 16
      Caption = 'Current Tracking Period'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 256
      Top = 121
      Width = 36
      Height = 16
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 496
      Top = 121
      Width = 20
      Height = 16
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 248
      Top = 296
      Width = 105
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Earliest Target Date'
      Transparent = True
    end
    object Label6: TLabel
      Left = 248
      Top = 320
      Width = 105
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Latest Target Date'
      Transparent = True
    end
    object GroupingCB: TComboBox
      Left = 24
      Top = 416
      Width = 193
      Height = 21
      HelpContext = 1023
      ItemHeight = 13
      MaxLength = 50
      TabOrder = 0
      OnChange = GroupingCBChange
      OnExit = GroupingCBExit
      Items.Strings = (
        'Quotes'
        'Personnel'
        'Products')
    end
    object TargetingBtn: TfcImageBtn
      Left = 16
      Top = 312
      Width = 200
      Height = 49
      Caption = 'Grouping by'
      Color = clBlue
      DitherColor = clWhite
      DitherStyle = dsDither
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Image.Data = {
        424D960600000000000076000000280000006B0000001C000000010004000000
        0000200600000000000000000000100000000000000043434100585858006666
        66007878780088888800909090009E9E9E00ACACAC00BFBFBF00BFBFBF00C2C2
        C200D2D2D200D8D8D700E8E8E800F3F3F2000000FF00F4441000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F34431000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000F888332111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111110000000000FCCD
        A443333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333332100000000FDEDCA65555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555555555555555543200000000FEEEDBA66666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        655310000000FEEEDCA877777777777777777777777777777777777777777777
        777777777777777777777777777777777777777777777777765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCB8888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCB8888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCB888888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AA
        765310000000FEEEDCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB76310000000FEEE
        EDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB6410000000FEEEEEDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDCC521000000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEDB43100000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDB43100000FEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDC33100000}
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsNormal
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      TextOptions.WordWrap = True
      TransparentColor = clNone
      OnClick = TargetingBtnClick
      RegionData = {
        30000000200000000100000001000000100000000200000000000000C8000000
        310000000200000000000000C800000031000000}
      DownRegionData = {00000000}
    end
    object fcImageBtn3: TfcImageBtn
      Left = 16
      Top = 248
      Width = 200
      Height = 49
      Caption = 'Expenses Details'
      Color = clBlue
      DitherColor = clWhite
      DitherStyle = dsDither
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Image.Data = {
        424D960600000000000076000000280000006B0000001C000000010004000000
        0000200600000000000000000000100000000000000043434100585858006666
        66007878780088888800909090009E9E9E00ACACAC00BFBFBF00BFBFBF00C2C2
        C200D2D2D200D8D8D700E8E8E800F3F3F2000000FF00F4441000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F34431000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000F888332111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111110000000000FCCD
        A443333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333332100000000FDEDCA65555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555555555555555543200000000FEEEDBA66666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        655310000000FEEEDCA877777777777777777777777777777777777777777777
        777777777777777777777777777777777777777777777777765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCB8888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCB8888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCB888888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AA
        765310000000FEEEDCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB76310000000FEEE
        EDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB6410000000FEEEEEDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDCC521000000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEDB43100000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDB43100000FEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDC33100000}
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsNormal
      TabOrder = 2
      TextOptions.Alignment = taCenter
      Tj�6II3�u�B߬Ge���r����Ͽiuvo�U�@HJz�}����^&�t�
�e`�~���Ē�(VcJ�˦�3��Z�Jg����h��jx?ԁꓖ̘�D�ӊ�bdo������}c����h�=>���g'��`���+�������^xZ�����M[����`kc���̥h5@��yK_^��6�Ғ�bE�[�o��J��0!c��zŕ�!�ґh��7x�£�����ε�
�&?"�qBD��=h.f�ݧ������C*�z�w^����������H2�ͦ0�ӛ.���L/�.�!i[ƌ9������O���A���z��{���V�����A�jY_z���cP�Pk[�l���59�r��;�W 6��:$S���?x$B��]D�f�N��O�t�|��ݿ���[j�ȑ� h`*4��l�>�º��Qy�����<���)������r�(����h},��Z�2���'�A=Ep����f�T8�L��YZ�m��Sr�1L�����	�[�;���������|R��Sd��er���1Xn��̀ࡂ2�x��qu����ՖU�%G�!RջԊ�2��V�Q�6E�:c�ʏZ�z��5��"�v����A
���g����17X�	z*�c��Z
p�PTį��"5��>�TP��|ҕ����ϔX.��;����f[B���������.g9|Z
���A�|Z�
�y&�������C�CRⓟ9Z����X�qncR��"�X�Z&|��yDT����K{$yZQ��.z���>n�G�FK��+�����p��@uy� �������	4f�t��R��14�c�Dɒao���˖TG.��N��?�/��|s���[���`ޑ	���ܝ\�n�j�Smr ���{cS�艄��kC��i�~q2O#5I�������5�Fr\��:�Ir���`W���9�&�k�ǸOQ"����&|�J�?Uѐ������N����?�����|]ƾ��MR�<��rBN�;���%(
W�r�ɡ�j���ϵJy�8Y�H��u�����=��QUb�(K�*v�\Z����ck.Q�~C)����ӷ�lz�B

>�&�e3O_T�m-x�)d�ϳj��E�_U�0�w��̔��Q�#2��K�]ɳ<�3�~y\�/�oه���N���W��)j?�Ԑ71*��~�jl1�"Z�5O;��G��y�T-�� �}4�Z"_�N��xU�����5hjF�J��2���I��0/X{&]�*J�\�\�8�� =��J����v¬}�BK��}='p���F�N:=��}��x�_����ĩ^���>�ᆫ;��������i?�U�Y�LdI���m��T��|�=�����!�����Ä́lKǙx,�ڙ!Y��JK�w�v����yг���ҩ�U�M4�d�#��m��ؽIq~���R�����Nq��6�9���������-�L!���ǔy	�Y��sz�n1�ڮ�4�h�+��pZ�ҽ��j��+@k�T/��, �S�0������\���<��@�˰6bNv���Tۺ�*J�\U���������S7����� FҦ����K��9H��e���0'�W����:1�.}��>ԙ�M��
��=����?���B��_�f����!Fc�+��Gj��94��	���8���w���"m�N��K�;a���%����<��1���A��:N��rI1�P��pYa:x���
������.v��
���V�l&�����nJ�
�cZ�w�y5ƒ�z^�P'�J�����^��<(�J�-5���Hhɷ0�F�
���P�O���" ��=��Z%���V���ߌ����J݉���Ug[[q\G.�c�q���/�p�Y��2���ɓb��5��"�q�>�#[W�گ���]��"R]jFCE e2K���t�pT���V���������I�[��@��ʼ�p�4=�:l�Z9R�(��OXo�X�&뫰9�!H)��zYﲰHN�a���
�ӫ6F1��Bs�؛���S:�!���DP�-��GϤ������s&�f���Y��꧁\]1��B��<����w���
fc��5��Kg�zsc��(fl乍��ЅKB�C�K�:B���v�tSZ�0�ۂ��^\����rm�������V2$��7���4�rN������K��#_�<p��"��KXr�RF=����\�`�=�/h*�^���R��o�ً��g��k�ڜ�����QmN�E�����Pl$~�o@0o��\���o`��gMS��L*�u=�A-\�±K�� ������][���ӟ04���~����˃/�~�:d�Ε2��������h;������0h���1�r`���H��B��S�`�ς���ik��~�l�y���]� J:FjN��j�-z!-��#qu ���W��>�?����)��
�UR�	$�oÑ�4/e굵{�nع2H?J$T����K�^��NZ/�U]� ����4, $Iu	}���iH`W��>n|��T��X�=��1S���ah澫?���{�ϵ}��
�K4���c	�9���*#�����4:���Kʨ\�[O,���� ��n�M3���沦NF��l@m��= ��X�s����i��9i���b�� ~bm�?늝�)�-�-�4�?������6�<\P��m�F�3�c��i�)������f%_���1m����:j���>(��� ��"��R�|��>JP�w7�`5zE��旇���-m�A7m�{]���A/�U���{m�i��>�����R�;?E�F@�ӟ_���)1
w����,I1�O��խ��
�����I�&
�hʍ�'�hȑ+_��<gYx־3֚~b��Ml�T�"��4�oS��U���KWe��ɲ�H�;c�
&?�>WMӼ+�,UP��6��[�>cR���� )�J��K�O�&��U��� 8��>�������"����HV�T��rY���u��8������ ���Ĳ�0Ywy�?������@�Z��Ϗ4�}�ヿ��gY�H8�/Y�����T C`��w�yUޘFX�m� �ƊNɫ��NS
�梌i�_��T���K���D�N�j���ҪD�M�ښ���!W-4cڹYr���

@b`���/�s��������(�3G����E����75��4JƆ�t��z]���J����1�ΈA澁)9ΠH�9��鐕�pRg{_E�\q�l�;Ob^�Out�*kv��gJ"�J��l���࿻�cg���V���AД�b�\*Yr4���z���W��K2�h�\V��n;��M�����Hr������J]++�[:�S��y1c(��UiM�L �wQa:Uڮ[�"Ӭ���d�HJ��I������K��s���0��yJ"����߈,���ܝ�/���7��d����NS�^Tj�@�9�ٚtMА���:� �}�7sB��J�#.���?����@r�!�N<���_C�S]��x��✀�/f������+{���������C.G\$�Ǳ����P���ہ��'��Y���p��Y�ٷz��or$���B=<!���	,���u�����Xm��釴��1���܏ ��[d�,Q���ؒ@��'�DE���,\�!\�}T��ݢ���߲j�����&Q�'�_A�# ���� ._�ЩD`�5�zK���9	i�t4ϟ�کliV�
�J���<��&������Z��<��� L��WH�C�i��f����S@"��n��7�{� �^�6s@�,ڜey��l��_�&Vp���:� �W� ��#nL��V���,r��zzݙ"�ןr� �Л?��n�>��{n�����֗�=U"��������.���[\S�����HBZ���w��{(j�$<�i/y�j�f�8�% 1��Q�������;�
�I>М��ˇ�f��o�'�ȓؽX]�	ۇ�oz��g~���s?x��9;KL�zͽt��lY�ܢ�=��#�����mE:��D��0�	����=_\�'�N䪵{+S!e$���5�Y�޴A������גБy!�㊏�h5<?���׌֢�yHk
ˆ�f\���('~O�A])�����H��\DI�p�_�����,�ÓNz
肧3
b�Ḯ�w���%t
Ŷ����`��8�R���m��l���Ó�!�v���񑛬҇����������_:|���J]��v~�?��:���;����;�̞�f�Uw��Ϻ�M�b��"��F�1����x�kK��:z��o�2��.��x@��5q������>�}G�Z8WS��2An6S:�H�:�	�ד�V2���y��mf���'�wz��ǋ�_����(�l�UѧVߐ,j��h�#V�����7�.AO���C�c
��7�XƐatN����m�����7��+;�"g �<�����&����_�w���.i�VFzL�I�:�������\܈BS�T2T�D��+�&�
�F����
��`yZ�)7�4
�x�КK�O����_cLϣ! ?�Ez�7}#>���E����Cۼ&�S�z|PT�;ݰ�\����Ņ��i��!U12H�6�˂��:��������~��N,�CN�J��b���Z�#������F�c1�O���@�ϴ�>�~�R�J�'�BCb�Ƴ`���=|�=��#")G��6����.~�D�q����V�8���e�0�5�*Ef�<�2�œ
��˽�r�p�95����&`}�M��']�`d�3s���͗���D�����P>����-{�l����Q<
�F�	�@�֑
�� �f!V���:�ۈ/_t�Z�E���*���� �3Yk݀a�[�lKũ��J����t����L�K����ȕ��O�\b�����:jࣩ�o9��\l��ъ�>��u�����e��=��o N�v��F>?�7;|�Ir�o��W��볠�	���(nX��4�M��kh)/G���8�����ꃤ1�*��Lߨ�ߦ(�l���P[���V���8�~�7�hxJ ��88����l�	j]gڡ��(����X��F^OCm��՝oq��-�($�m��)��W�}6&���x���D�������ݪ�<_��~�mO;#+J��S嵓�y�7��5g�?3���_���Eɽr����#���KK�Z�
C-U�0�{�	s��%/!�'��Ìf����S��J.a+ٔ���龲0�>���(������N��6ەwx�3��ϵJd6�^��H�ǌ�۪��6��Ղ�B��x ���6Jv�2���^�\�������c��먎b����^�j��:�����h�3l(�l�x,��l\��8�p|e7�[��%���e��zKI �<Z��(��K�����u���C�ܳGů�aH�����/8p�cA4�C4��t��jgT��|/zM�φ�'�HA�[���h�&C���k�,�
���g.����ilz�6&�h'b�	���J8,�>eO����4t^-X�����'����C�'����������d);��������H�"���� \v�ş3�����uX���L��Y�k�����Y��IU�A��1
�`��k�j�3ym���e_��ۮ��VJ��E\i�����F��tR�HM�I���r���]o�E15�\��
d�[���o�DF� +l�����Ϻ����D.+��0�*��r������E|'�M��Ξ;���J�}��jYEd�J-���[�։K�s���c�Q��6�s�F0f�̝Ϸ+k�>NU�«�Qf1�$�
�ks��v�������_��3�ћ���GE{*�鋔P%ki-봏m�����u79�_�7z;1ej�(�V�ĝ�J;'��������Y-�6�
D��Άs�$I�C]2Z��c�[=�W7�!��-� ֣0"��/�����,��O��=�ӽ��M`�FK-�s�D�~km�%���z�W�� [)�XZ�DB���k�Z�
�C-,�/��M�w}��=?�'���>bT��DDVx
��Eᐣ| o�(�ݚ�o}@��*��X�s$����ң8٫�;�[նX,8&�~	�����niH��4��|�t%b��FL;���GXc���va��o�ykH����m�JX� ����oR���y����G�Z]#jӘ��Z.�%��oO�lU����Hj˅����o�jX������O<I䙓&�
��Q��.�߮��'4��R��EZ��N��̙����ŉ�풜���Hճ�`�k��#PŰ��f����#�ˡ�\�QtM��:�����*0�� ���!��*C�+%H�%-�H��������/�k�x�q�L��L�e�~�b}�����[����Z\�U��%ɵ&�b&O�\��3�<WEa���a<��̍��Qr�e�����}�~����g�>b����n�Ea�܌ԡ�4{/%b\)��
'�����
ކ��ꭉ)�
��{�_ ͦ|ć�!�J��5c�񢯀(�g&<`���Wɮ���^�aD=6��@��ٿ!|(��\Y��<1P�\d"=Xt��̯�jJ��r�Iu/+�
&.�:)�k%�SΊtJH����ޛ6C�Ǣ�����m*P��H礞�CȢ��G!���Ή۳�dK�NG��_��g	�L�:_����鍚�A��p�bkd��>��@C�
�Q	��3/薚��Z���"�u�