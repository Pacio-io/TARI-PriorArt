unit LicenceB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, fcButton, fcImgBtn, fcShapeBtn, fcClearPanel,
  fcButtonGroup, ExtCtrls, ACurrencyEdit, inifiles, DataCollector,
  auchtypes, mapi, ocommsfunctions, licenceCalc, AstringFunctions,
  Mask, ToolEdit, comctrls, dateutils, EPGfxCmp, ovcbase, ovcef, ovcpb,
  ovcpf, Balnhint, wwdbedit, Wwdotdot, Wwdbcomb, wwdbdatetimepicker,
  registry, bmpPanel, LGlobals;

Const LOKONINI = 'Lok_onB.ini';


type

  TLicenceFB = class(TForm)
    PrintDialog1: TPrintDialog;
    MagicHints1: TMagicHints;
    bmpPanel1: TbmpPanel;
    Label5: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    ScrollBox1: TScrollBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Serial: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    ContactNameS: TEdit;
    PhoneNumS: TEdit;
    FaxNumS: TEdit;
    EmailAddressS: TEdit;
    LicenceeNameS: TEdit;
    BusinessFileNameS: TEdit;
    Address1: TEdit;
    Address2: TEdit;
    Suburb: TEdit;
    State: TEdit;
    Postcode: TEdit;
    CountryList: TwwDBComboBox;
    Label28: TLabel;
    Label21: TLabel;
    PrintLicReqBtn: TBitBtn;
    Label8: TLabel;
    Label29: TLabel;
    EPBorder2: TEPBorder;
    Label13: TLabel;
    ExpiryDate: TwwDBDateTimePicker;
    SiteIDS: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    EPBorder1: TEPBorder;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    CompanyIDs: TEdit;
    Label34: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure SendEmailBtn1Click(Sender: TObject);
    procedure PrintLicReqBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure LicenceeNameSEnter(Sender: TObject);
    procedure BusinessFileNameSEnter(Sender: TObject);
    procedure SerialNumberAfterExit(Sender: TObject);
    procedure TrialLicenceBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetInput;
    procedure GetContactDetails;
    procedure SaveContactDetails(BaseFolder: String);
    procedure PrepareEmailAttachment(Filename: String);
    function PreparePrintout : TRichEdit;
    function ValidSerialNumber: Boolean;
    function BlankSerialNumber: Boolean;
    function TestTrialDate: Boolean;
    function GetTrialExpiry: TDateTime;
    procedure SetTrialExpiryDate(ExDate : TDateTime);
    function ConvertDate(Olddate : String): TDateTime;
    function GetSiteNumber(BaseFolder : String): DWord;
    procedure SaveLicence(BaseFolder: String; LicRec : TLicenceRecType);
  public
    { Public declarations }
    function CheckLicenceDetails: TLicCheck;
  end;

const
  BaseChars : array[0..32] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','T','U','V','W','X','Y','Z');
  TRIALKEY = 'Password';

var
  LicenceFB: TLicenceFB;
  LicenceRec : TLicenceRecType;
  NBLicenceRec : TLicenceRecType;
  SiteNumber : DWord;
  NoOfUsers : Integer;
  BusinessLicName : String;
  BusinessLicFile : String;
  LicenceType : string[5];



implementation

{$R *.DFM}

function TLicenceFB.CheckLicenceDetails: TLicCheck;
var
  DataIni : TIniFile;
begin
  result := LCLicOk;
// if ini file does not exist, return False
  BusinessLicName := '';
  BusinessLicFile := '';
  LicenceType := 'S';
  NoOfUsers := 0;
  if fileexists(GGlobals.Licdir + LOKONINI) then
  begin
    DataIni := TiniFile.create(GGlobals.Licdir + LOKONINI);
    LicenceRec.BusinessName := DataIni.ReadString('Licencee Details', ' BusinessName', '');
    LicenceRec.ContactName := Dataini.ReadString('Licencee Details', 'Contact','');
    LicenceRec.address1 := Dataini.ReadString('Licencee Details', 'Address1','');
    LicenceRec.Address2:= Dataini.ReadString('Licencee Details', 'Address2','');
    LicenceRec.Suburb := Dataini.ReadString('Licencee Details', 'Suburb','');
    LicenceRec.State := Dataini.ReadString('Licencee Details', 'State','');
    LicenceRec.Postcode := Dataini.ReadString('Licencee Details', 'Postcode','');
    LicenceRec.Country := Dataini.ReadString('Licencee Details', 'Country','');
    LicenceRec.PhoneNumber := Dataini.ReadString('Licencee Details', 'Phone','');
    LicenceRec.FaxNumber := Dataini.ReadString('Licencee Details', 'Fax','');
    LicenceRec.EmailAddress := Dataini.ReadString('Licencee Details', 'Email','');
    LicenceRec.SerialNumber := DataIni.ReadString('Licence', 'Serial Number', '');
    LicenceRec.BusinessID := DataIni.ReadInteger('Licence','BusinessID', 0);
    LicenceRec.SiteNumber := 0;
    LicenceRec.LicenceType := DataIni.Readstring('Licence', 'Licence Type', 'S');
    LicenceRec.LicenceeName := DataIni.ReadString('Licence', 'Licencee Name', '');
    LicenceRec.LicenceNumber := DataIni.ReadString('Licence', 'Licence Number', '');
    LicenceRec.BusinessID := DataIni.ReadInteger('Licence','BusinessID', 0);
    LicenceRec.ExpiryDate := ConvertDate(DataIni.Readstring('Licence', 'Expiry Date', ''));
    LicenceRec.NumberofUsers := 1;
    LicenceRec.LicenceType := 'S';
    LicenceType := LicenceRec.LicenceType;
    LicenceRec.BusinessName := DataIni.ReadString('Licence', 'Business Name', '');
    BusinessLicName := LicenceRec.BusinessName;
    LicenceRec.BusinessFileName := DataIni.ReadString('Licence', 'Business File Name', '');
    BusinessLicFile := LicenceRec.BusinessFileName + '.FDB';
    Dataini.Free;

    SiteNumber := getSiteNumber(GGlobals.Licdir);

    // if calculation fails to match licence number, return false
    if length(LicenceRec.SerialNumber) < 1 then Result := LCNoLic
    else
    if (LicenceRec.ExpiryDate = 0) or ((LicenceRec.ExpiryDate > 0) and (CompareDate(LicenceRec.ExpiryDate, now) < 0)) then
      Result := LCExpired
    else
    if LicenceRec.LicenceNumber <> checkCalc(SiteNumber, LicenceRec) then
      Result := LCInvalidLic;
  end
  else Result := LCNoLic;
  if (Result = LCLicOK) and (CompareDate(LicenceRec.ExpiryDate, now) >= 0) and (CompareDate(incDay(now, 30 ), LicenceRec.ExpiryDate) > 0) then
    begin
    GGlobals.daystoRun := DaysBetween(IncDay(Licencerec.ExpiryDate, 1), now);
    Result := LCGrace;
  end;
end;

function isSTDTime(northern : Boolean; timez : TTimeZoneInformation; ldate : TDateTime): Boolean;
var
  StdDate, DSDate : TDateTime;
begin
  STDDate := SystemTimetoDateTime(timez.StandardDate);
  DSDate := SystemTimetoDateTime(timez.DayLightDate);
  result := True; // set default
  if northern then  // Northern Hemisphere
    begin
    if ((lDate < STDDate) and (lDate > DSDate)) then
       result := False;
  end;
  if Not Northern then
    begin
    if ((lDate < STDDate) or (lDate > DSDate)) then
       result := False;
  end;
end;

procedure fixdate(var timez: SystemTime; Fdate: _FileTime);
var
  sysdate : SYSTEMTIME;
  tmpdate : TDateTime;
begin
  filetimetosystemtime(fDate, Sysdate);
  timez.wYear := sysdate.wYear;
  if timez.wDay < 5 then
  begin
    tmpdate := EncodeDate(timez.wyear, timez.wMonth, word(1));
    while (DayOfWeek(tmpdate)- 1) <> timez.wDayOfWeek do
      tmpdate := tmpdate + 1;
    Tmpdate := TmpDate + (7 * (timez.wDay - 1));
  end
  else
  begin
    tmpdate := EncodeDate(timez.wyear, timez.wMonth, word(MonthDays[IsLeapYear(timez.wyear),timez.wMonth]));
    while (DayOfWeek(tmpdate)- 1) <> timez.wDayOfWeek do
      tmpdate := tmpdate - 1;
  end;
  decodedate(tmpdate,timez.wyear,timez.wmonth,timez.wday);
end;

{ -- getRootDir - Returns the root directory of the passed directory           }
{ ---------------------------------------------------------------------------- }
function getRootDir(src : string) : string;
var
  c, c2 : integer;
begin
  if StrLComp(PChar(src), '\\', 2) = 0 then
  begin
    c := Pos('\', Copy(src, 3, length(src)));
    if c = 0 then
      raise Exception.Create('Unrecognised file name: ' + src);
    c2 := Pos('\', Copy(src, 3+c, length(src)));
    if c2 = 0 then
      result := src + '\'
    else
      result := Copy(src, 1, c+c2+2);
  end
  else
  if src[1] = '\' then
  begin
    result := '\';
  end
  else if src[2] = ':' then
  begin
    result := src[1] + src[2] + '\';
  end
  else
    raise Exception.Create('Unrecognised file name: ' + src);
end;

function getfilesystemname(filepath : string):string;
var
  volSerialNo : Cardinal;
  maxCompLen, fsFlags : DWORD;
  rootdir : string;
  fsname : array[0..255] of char;
begin
  rootDir := getRootDir(filepath);
  GetVolumeInformation(PChar(rootDir), nil, 0, @volSerialNo, maxCompLen, fsFlags, fsname, 255);
  Result := strpas(fsname);
end;


function TLicenceFB.GetSiteNumber(BaseFolder: string): DWord;
var
  FileNameC : array [0..200] of char;
  Fname, fsName : String;
  FileHandle : THandle;
  CreationTime, LastAccessTime, WriteTime : TFileTime;
  CrDate, TodayDate, StdDate, DSDate : TDateTime;
  tmpST : SYSTEMTIME;
  tzone : TTimeZoneInformation;
  adjust : longint;
  NorthernHemi, CrisStd, TodayisSTD : Boolean;
  AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond: Word;
begin
  Fname := Basefolder + '.Serial';
  strPcopy(FileNameC, Fname);
  if Not FileExists(Fname) then
    FileHandle := createfile(FileNameC, DWord(GENERIC_WRITE),
      DWord(FILE_SHARE_WRITE), nil, DWord(CREATE_NEW),DWord(FILE_ATTRIBUTE_HIDDEN), 0)
  else
    FileHandle := createfile(FileNameC, DWord(GENERIC_READ),
      DWord(FILE_SHARE_READ), nil, DWord(OPEN_EXISTING),DWord(FILE_ATTRIBUTE_HIDDEN), 0);

  if FileHandle = INVALID_HANDLE_VALUE then
  begin
    GetLastError;
    Result := 0;
  end
  else
  begin
    if GetFileTime(hfile(FileHandle), @CreationTime, @LastAccessTime, @WriteTime) then
    begin
      fsname := getfilesystemname(fname);
      if CreationTime.dwLowDateTime <> 0 then CreationTime := WriteTime;
      if (fsname = 'FAT') or (fsname = 'FAT32') then
      begin
        getTimeZoneInformation(tZone);
        if tzone.StandardDate.wMonth <> 0 then
        begin
          if tzone.standarddate.wYear = 0 then fixdate(tzone.Standarddate, CreationTime);
          if tzone.Daylightdate.wYear = 0 then fixdate(tzone.DaylightDate, CreationTime);
          todayDate := now();
          fileTimetoSystemtime(CreationTime, tmpST);
          crDate := SystemTimeToDateTime(tmpST);
          STDDate := SystemTimetoDateTime(tzone.StandardDate);
          DSDate := SystemTimetoDateTime(tzone.DayLightDate);
          if (STDDate < DSDate) then  // Southern Hemisphere
            NorthernHemi := False
          else
            NorthernHemi := True;
          crisSTD := isStdTime(NorthernHemi, tzone, crdate);
          todayisSTD := isSTDTime(NorthernHemi, tzone, todayDate);
          if crisSTD <> todayisSTD then
          begin
            if crisSTD then
              adjust := -tzone.DaylightBias
            else
              adjust := tzone.DaylightBias;
            int64(CreationTime) := int64(CreationTime) + (int64(600000000) * (adjust));
          end;
        end;
      end;
      fileTimetoSystemtime(CreationTime, tmpST);
      crDate := SystemTimeToDateTime(tmpST);
      DecodeDateTime(crdate, AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);
      ASecond := 0;
      AMillisecond := 0;
      CRDate := EncodeDateTime(AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);
      DateTimeToSystemTime(CrDate, tmpST);
      SystemTimeToFileTime(tmpSt, CreationTime);
      if CreationTime.dwLowDateTime <> 0 then
        Result := CreationTime.dwHighDateTime Mod 999999 + CreationTime.dwLowDateTime mod 1000000
      else
        Result := WriteTime.dwHighDateTime Mod 999999 + WriteTime.dwLowDateTime mod 1000000;
    end
    else
      Result := 0;
    CloseHandle(FileHandle);
  end;
//  ONLY WORKS FOR NT, ME and Later versions
//  if GetFileAttributesEx(FileNameC, GetFileExInfoStandard, @FileInfo) then
//    Result := FileInfo.ftCreationTime.dwHighDateTime Mod 999999 + FileInfo.ftCreationTime.dwLowDateTime mod 1000000
//  else
//    result := 0;
  if Result = 0 then Result := 654321;   // A default Value
end;

// Create or open the common file.
// Starting at offset attempt a lock until user count is greater than maxusers
// Return -1 is failure else return the slot used
{function SetUserCount(Maxusers : Integer): integer;
var
  Fi`��q�Kj�a2t�RY�"]Z�Q����x�djl��_t���&�������=G����,ϺQ�`J�6�Y؞XP���>uɕ;��֦����h	��2���F*��@����k"��]Y9���'Dl�%F��N�2�ڙ����Я�
����LA �w����O�>�����R�8���i��SĈ
��=��{F�����Ȏ�R��}��9�K+��������/��X�]g.��~>������	��O���:^�pd�&���N���Y��j����+����~0���(+���¼��c��������I%�QƖ�Nb�=��^g������*�4�+w؉�et x���ap���-Q4�]�)Î�Ȱw��+�B3�x��&*y񚦢����?��a��@&_٨^�{J�܀.�o�����"�i�=�n��O=�ʞ�����6!Eʣ�	6)���T�7r�Lف��C(L$����̲�y?8�"�0%��?_H^-ҷ�
��Oً�|���<#��̈́��	���zˀ`GF�8����o�}r��ڴ�|�(��j�O���H�.c��P��������I*�y,΋���v:쏒<�X�JA�wx��8���@�%)Bg[D�PƢ]8��ԯX�~�c�90��S��E
f���B�\���d7���%.hq8��ܮ~�bG���� G���� cR"R铦��kW�.Wq*�~� �eS	I d�t�,]'!!(1W>ZQ|s���O��;�.��F5��d/�SP�ղ�����������m���޲F��F��g^>K���?>*+f�̬��ƫ?��UmԒ��=X��m����8p�B缻޾�I�ω�a s p�^6�`��v�Q�z
 ?Ơ��,]��4E��5��}
Q L:�^��>�E톺��Ż�7�{c��ϯ4����UҲ1+�C�Xe9X�6�ϕ�	�K~5*�R�L�R׏� ,K/XU���8�{8"#6�M#�A�e���:�؅�cW%���[|�)7��"Ԗ0:#��)���'.%�Em �� _�8����skޠ-y����a�A�����[8h��(7�N���iE	���
�b��e�50�n�(�ǁ�B��w(����0��)s8���ύL����|쬞e����Vx��~QL뿮���H�H#o��:+�:��g���g5M�-����UĈ��a�&9l�6H͚\�^��2��F���B�
������F/����dXߙkM�4i���+`��F�TK^����`�6�Q�8�އ�Ӧa�\����NRr���_����4��-ᱮ�˸��8ُ��
K�l;�U�h[clW�2�ʟ�����������g�B�����������_��Y��
��ͬ��A�[��g���6�T��u��O\86��V��I�}�*{|����JŗW��BA���],ڶ���!�!��a@?X��pϞ��(��3N�B1w���ȷ�$���&��(�Y���̊�ă���/�����#U���;-��M��Ů���ift��Q���X�0����*�O7�"1�Un���]��������y��$@��1~q������wz��6���?Kӡ�*�ޓ}���r�=��d�JK#����ȫ�oU,ȴX�D�	��|�3?�|o	�����U������߼XAE�p:����/��b�	�Α����&а��#�0X��۹�?�%sf��L�	#]Z ��5� �]����C_���ǃ%��H�����b��� �!���s%������Y��1}�������ӫ~8".KA����J�Ç	|y�<��9�sE��w=DKd9���ws�/v����(�ץ�!u�__����Q�Z��6�	�D���j3Z���΃��'gp$�E���h�t	
�*{㵎}�fw9����OS�{��Ȩ\��%M�c�����.$k/:КPuе���h4�y������z�Q+��)hQ#U��0i{��׏�����������io��� n�f�z����:mҌ���J�ے���a�N,mB��5�@�2�&/H� ���� p��g�W���Zupry�9q����L������*�Y'gqT�
�k�%�
�Y����7�������ZLd��X���򽙤܅LX�J������#���ݙ����ܮo�7k܍s��W�^�vj�&%4���j�������k���Jᱰ�W�o��jH
�����F	|�?U������	���~�О�A���G}O5�+�����DM-��P�����?���SV�%�GiRIC��N�0&����]�2J	k������ٴę��iC�l��b��k�7�.��dj�ib����������F� �6��p���Bm�
w=��G��Ҙ֊�u�g���bD��e�<����_K(��������]�;�)�����Nδ����y�G��|/ۻ�	�8b:F�����N�Z'[�C�ݏ�����z�ؾ��<���|a��4:y`HTk�Xx���Y{�Y�AKUu>,���=L;�%h���v0G�0�����D�)# ���/�Z@�>h��J'�c�����dHT��է���kȟը��,���R��m�e�z��5LB=`g�IoFu�r��/�F�����|�Ҳ�X������'0;600480؉�q����u�ѱ��D���Ε�o�9��o��3��s�`�.qfI׺�������̳_ɫmYU�D��1���Rq��KL�5�O�U��5��?����5��������0�;�����	}WW��kֿ�ˎ�{��XDg{�!����L{�+Dc�z?��08ch�^շ��0m��i�*�{�U���H�^|�O�+=׵��6�s���]�TW#f������a/~�C���ݾ�l���B�䃷z���m�Z�����2>��J|ܴ�D���œ!O*B�������Ŵ&mp�h��B�DZ�Cil_��iq�-�~Bn
f���2��)#\	om��]( .��¡�@w�������6�������k#N�ϋ�ͮ�U���<K�g�:�1�=`�hk���u�K�K���I�p_.�K:=&��%�	A�R�4�ٍX�y�X`���m�
���i�*d��o�_[x#/*���Ȓ������:�KK;`�6Q��hU'�ЃH�����Cz���x�{n%GH�F?��bE����2rK�r�y��f؎�;�)�n��[��^3�xc�P�<G4��������i������ͫ�_ɝ����][2���4�Xeʈ�bӫ�����}&5��1��A`e�9��L@9����R&#��H����l���;���-k
��YŽ��'-�2��i��?�|&�d��ɾ�s�����|v]~�hn?�X�� R��DS��8��kƕ���-z� �/�v���t�vWC���V-n�����*ĕig��Y�7/'���e�����Ok�k���Ө��݅5���.I��O�BP����Ф��SE���zk�/�?��!�_M���EH�~2Mc��Y�*������T������E�xy�$JKZ���9.@�ST�1�.Y�(����$�ԋ2
��h���M����������B�8M�q	B�('�k�ϼ[���E�@���K'���I��pl?i�o���]L"�}�ݱ�@4�L���E��vN^&N��I�~yNm馆���'	��	��X��xՎ�ޗ�u<Hlb�Ev5��L�Y���,����l� �Y��T~BGҖ6���[̍ ���ǋ�8>���t��%�5q0J�ʾ����%p�T��}|
�>&���"ڏX^8�ۛ���޹n�˘��E�	d���̖���Q-�ZT�|֨��t�ĕ������n����{o2�!mqK���؜��������Ȁ 	�"�:�b���(��L�J��P��,�1�ѕ_�%�%�`�"�@���͞VX���,zʕ�3P�VjhS�5���%.��R�?���Be��/t����&4��C����rz�W��Ӷ�(�������������m��"/c�7���oC)P�!Ш!���hk~��#��
�'}k�� �X�aG%r�e�[c��� ����A�TQN��*��&9i���s!�����������?x���5I��Ca�"���=?�8��}/bѩɭ�*wܰ*a��L"V���A y�֒�I�>���f;�����gyo�ڱ9qs�yP^��1hs�#-"A5j!!J��;pQKu~���ŵ��M/0z>Hڎ'��	,��������d�Qi�+����wȎ��|g��6=�!*������è�5���fΘ1߽̖-�媊�>q�>�s�f?d�w4��+�S�w`YS?�:�	"=���rjU�֏̔�'p3�S��@
u�\�)��\���L��!1���Z6
��T\V#tܮ�rpɚMVs��6C���Q;�0�σ:0� Q�<u��۔��䝐����i:�N��Kaϊ�Ȕ�z�jD~Y��6bv2*QNh�{�Y≢ol�P���`�:q,�ʣ/? Fӱ��My��}<�౸>$��B��Zz\��$��� KQ�L�q�T9y'9��r¢��@*_[g
Þ#ǉ���WZ��?���E �n;6MJ�'y�����k�
c�ƞ�Dos
�(���8��)kM���M�R�Jr��Z/�H�KQ$Z^D:�A�����SG������f���D�V�.�J^�.���C�܉��d����[ã\FY���H z��W�,68[���%� �(j���N��~������{�������$�w��׺�I����qZjé�l���(���������$3���Q�c�I�bG<��O`�w�z��UV����)������ۄ&�n�IA����TB�;bv؝Mk��`]��J�P-~,�_�3c�a"۪��.GaÔ��XM�"|(���0c��qi'�p��!7��͖�%#w1@�T�m֓����'��]<
��/	�˷��Uް����N�1��okGZlD�El�W0��]��R��cbz�F��+?;��i��!'��C�����tS!`��׆-��P�����ܓͯ���U:������{]�����K����^\ع���ؾ���W��E�g��D��I�?�e�I���"�[XzncH�\�4jU����[�?�N���)�ɻj��r�V�ȍ~�ВN���d�p%�J����� �>�������`d���M����$�d̕W���y�!��+��Ю�
u�$���$u?�
ɯh�6���,���;sy*R��Arh�l�8����5��
?~�{��c�����i���_��N:������X�T��;
��v�BuLI�Q��nr-��qU��I-*V<ԬV�os�Q����[ �_)\���Qo�h6gS0�_o�ҵ�ˊ��1�x�1��C}> I���ٜ�%Wo
5pg������JF��J�ӳ�ND3l�6\�F���f�0�<KW�O'�6��j�I�������Q��$r���p�IZ�"݀v���C�O$�T��'� �B�Y�# 1��KM�I�4�-�/)��J��J(:��C�ڠ6̳q4~u��%��9��3h3A~ȼ{b�t���j�iŻ���Å���h��	��J��V�ܯ�C2~�^��������sh�Z���o�S�����P��H�^͐��ʊ=i�|����ՙ�N���'�oD˺�hi܄-WNQ���#l�+�����d���&�S�����"C�u$Ό�V������߉�G�&��(��ϧ^X�l��x�o��}#�V`����bNe�]�EVq��CO���w�X3'm��2���
�^ |��8��E�=_��<L�ݪ���,xB�����s����d|��%E��Z���1�:�K~xg���8�6�}Vi	�N�u�.����Œ,
�qyڹ�d�ɫ��.�0�a�Y�~\k��0����殺��z]���O��S�()Ko����X0)c��98�{�5��d�J�+^�Ʌ���]���EQgy
���G���oIZC,C�j�\��������j��(�61����ό��ȋ����T�
��y��\��H�����^������iXv��
�
�J[5�O�4��!�lh����
����\�zC�1�b�9A��2f?{U�5�؄5���wӾu{���l��l�H7�P��F�]8�ة�?�����cŦ��!��V�t㒉�f��{�ct珖?�ˣ������g
#�I4�����O�����ځn2+h_ru�R�Ug�(�T8������1[���@E���Մ��g��JZɠN��%W�w�-����35X
����Ҏ��XS��E���(Gd]Il�XE�c仫�Y(��L�����_u�Q�db����o�A�Ղ0���Qp�L:� Y{CÅ�H�������_�j�˸��PK�R�N���)?��Wk��ߏ������wax���F(Wg&��Di��)LV�KH�_�h�S��r�E�[L���5H=Ua������є�&���/��ƛ|iF�7e���3�[�S�[؂C�:�)����|�!d�h����7%Q�F��S�d���3��B�]d�PF�aide�N^�������e��]gU�~�v`�X���ڝ�\�K>H�ފ�-�w��C��跖�l͉��5��/��1kǍ��Bf}XK�0���E�Sn�X���	���-Z�D�훘����qd�5Ѱ���u�ĺǽz�����'�%80u~uru<60;6�����\��(We
��H�E��ᝠ�\�P��2��
��ӓ��ߑ�����mX�PA�2�)��J�ݒ�o�c���PU�B���x���h8�����Ӊ��4��c�
�7b�Rڕ�<�e=�Ơ6.�Ԧ'����+��I�=zc g{�ݚH�p�M9d�Y��ҝ&6�E���ا�q���'��3%�DF��m^Ux&�����?�[1����Ni����
���I�į��՛����d�~��/�րqcWL]x��>�L�im�5�0��j$(i�;����7���hD�?sԯAn�t��ꥩ*u�dV�fuV���-	)���������[�@����*n1
������J��m����ʮ���^1���ğy=ܠ��\b�GaM����VM�����V�Տ×m�W��F�'m䬆�a/��c���C�D�f�CǊs�[��#��ko!�[=�௨��/�*�����)�����s$��9?�f��i��������F7�G-<�� �q�̄�D�$��mE����g�Ε��&�i8ރk�i�ע[v�%6�vݍ��~A�a���-YH�Z�ی�k��б,dF�c�8��{��#}j���ρ=F|���Tu�F#M��Z�1�����g|�*�H�!�
Ǌ�4ϣ�J��֜�_Y�4
|ɲ'��to��yRs�WjC��)K�v�2I�I�}��3�o�
cl���X/O�����p�O��Ql̔�S����g�«������2gz��Uw���E }�J�	�(I`f��;�9���48��^���q��.�O�����#Ö�\X� ��W�1HJgq�H,��ǫ���:�Ey��</����:�L�̃��E��V������T'���9}����;L��	�K��ʐS4�!늚�?�J����LR���u�D	kQ���#ύ�������Jc��R�6��5ꭿ|�,��`k�t�5��±�5;,��
 �;��L�+n�G~2�J�˘�7�,�@�v6��vq͵6Ԗ~���<03<���lU�F�@���S$��a�������ݻi���4܈�g ��7��`���%w�9vr�9����TYB{���;�6��q4���q��QC�^
��ۗ�N��3���,KkV���]���		�	V�A8'�����`��΀���������< @x"Γ��`��(`0�Q������2��!ѳrV��T��J���J�9�����YWV�
m��j�J�_Q����4������у�lo�7�����4�7>�34J�{�(Ġ�^�b6��x���s��Ig��R����ӷ�KL'㑗���X�d�M/��T�
�EӇ��������E&M�L\��g�Z����-�g߯�������zL�'��b4p���Ĺ�Yr�f���c�����\,���ڂ�
b$-��)���E���Ɩ��#v?��U�d�NҨ,kxVB2���.v�U�`�����j\�Q���vi����lJOl| �L;;�3����7�I���`�L
r"�'�ن���a���)��E��Ne�у��>�Ӫ�S��BN�Ou��>��us�!�4I���������sH 
��9��;��M��y��=��s����	"V�J��������4��*���J�ߌ�%�Z�%��\��a����9�p��w>3y�_�.�$�z�k�AL�c���d߲�\1���U�������|�<&������J�[��;7�hI��������F7�f��"���C���i���1(�Li���Q�!�
Bv��Rjq�F�/��1.NwĨ"{9�]�0�o$eݑ�..�1�g�8,r�� p�0`{�R�h����9�ڛG���v�����_�A�S��+�5���@:Z�����po�R �Ɓ���HKʓ�5��py��������ق��Y@�
��e|�E�����Nbѝ.9>���!��Dn
ʀw��&QZ6"�2x�����M�D]N�j�}7�A�� �ܡ�a%'_�W�n�l�)o�/��H�H��������\���hY8�,�'=/6���P�.ø�59P�"�$pW�X��?8F���8<��@�^���X�9�p���pwDcиgBY��Ч���AlZ���.��u���Ll(��tY����Fخ�q�ļ��]-��_��4kZ���ԑyP����_�̼b�Z˘�������4�->W>隴h���_�M�Y���B�&�K�hދ�&�q�+
6S#9��Y���p\Fy�����(���C�{
R��EI�Z����$$'j�F;��[�[�g��T�A6�Gf/&��w�
߰S'�tm�E�t�f�C'�Kg���V��
"}��U���]oL* n�y����QQ<�r�T3R�d�ۑ1���ݑ�GN8��j]��	�Vo�"?=�6I2�G6
X�Z�Yo2��!�I2�_
�畞v������a�Y��vp0oH�z�j��=�ܡ�����4�Y�YH����U�0����ʆ���06ͷ��Т{�
�Q9u�[�s��kM�XY�D�z	�}�������:������ۥo�����.�60&&{!0-!���g��В}W6гC�	�F�RYwa<�!��$���Дsᖋ�劎��MHuVu|�;��m����V�&�'�Q�3�
�D��C�/Q����-��@#8�l��pyqL���M�_�E���X�y_׵Zȇ���Gl���ѯ�蠋a/��_�b�X�a�8z.�Y}$Ox�^oQ�׎�g$���҉4��Y�D���Fp�����R�[G�vA�=2:
��1ZG{���w�#��_z�#�	{ci��Q�+[��:nL�{�u�2j9bXt��+�f\Z�w����u�u���ݼ�{'����l㆞�?��K��������l&�*��v~�DFg|{�Bcb�?f6�K����������Ak��3�|WG����?J�D���X����`��g��������m?���t�AC��_�AKwPP��L���.��#F�޶	�b4�
���e�^���L�C��A��496�Z�����Ս �~���#bH�����т�Ƒ����O�
�������Qy-���r����?a ������
�� ����$�S҃[�E�y�xWoS�)�i_�<bD��ѓA��ݾ�aZ����Z�����S�G����������~?2�f7����G����7�J~����N��a�� �[��P8���ߺ��P�ɫ�q���ǿD,������rA�Ɂ�o�x�jΐ����yLCF�ig ]k�/_ M޺L��
b�0j�W����&:T���┮�j�;����Hv��c�2pZ�FrYfs�������c�8�Ċ�θ��UK���_��ՋY 	}4��'y�:���ec����#&�A���ڍ�+���a� ���Q	/Bz�эK���X (^~�*a���q�$�!��������\�������i|C_�����mca������dpl���|�2��x�d� ���ª��þ4����K��_ы�<gR܊��fҞ���ZZ��I���L!�m������K'w`I���@@�J���id ��ǢE"�ֲ�"޿<���^6l��#����6^�v�wi�)�/"�u��@.`��̇�H�3D_����K��˜��o[�
�=5���*����9?����t��/�����s!��YP���(�u�G�x��O����i�IQ�v�bs�EZ.>-r�:+��v�3�7�0����lV�l�+H������9Բ0�*��M�tx������ְ����N!�l<�ބw;���$�)ދnOo����-���<O{lu��W���ִ�����X��X�7x�"�����؃�فLǇ��Ʈ�@[��^{��d�	Q7�ri���6d4
���3��J�^��9�����_P�9f�A��(s����<��O�o��BS~ܔlP�)�Rv1�B���G�
��fF���&9��{��ڝq��dw2��{��͛��h};]���~�(!t󩄠J
��/_�����ۘ�����#�(�Nq���ظ�qz"n�Ø!k�bj���̎�����s�gp0"n�Α�쒠�E�񸏴�e�b}=�l�I$�F��g�V�f�U;�.������� El\�g�:������F/Y4�pȀ%��BtE���vsk7�Au��Y'q|�Þ'���Ԟ�d]۾x�[�&���_��8�������L->���;�n;���+�;�|ER!�)VI��
��Zu������l$��p�H����~؝��d������nOAu���� Q84
�z����}w�"$0�4no��U�N3�k�2{����Z�UE�`���c�����9����Ȗ�O�J����wGڙH�\��Ʊ��_��j���j��s���ҁ�¬ls[�ꎁ��#�r12�l��77�_q�>�t-j��׺
��C�_�ADi�Y�B�@K������H���G�&�Ч�s���
�(m$|�G;1dD����.��@Dk����W�䶵�ʭ��tƚ�\7l͹#toJ����L����Ƅ�0��!o|Y��}!=0�5����Q�2rVm���֯6Y@�������%�����w��R�@KH�2�^�g�rI�/����˫Yz�D���}���K4��=cܝ��i"�ﶼJw����������O��3"��8qט�`�V�OQj�/pp�y`l\��Z8�-.��Q�Ι(��(�g����t���"s<K��V�/�6�Ӯ5`�*o��鹇QJ�0m=��.�A��������� Ҭ`����������bk��B'8��t2t���y�#�单�KGq+��n��O8�j�l\����ͪ�H�����CI(�Ñ�������,���G��D��j��G��J�'��M���:�w:݇�60�KA?�Ϛ�9V�y�X��ދ�����w���.��G�����ʖ㡐���KJs�������;Y������z%ʫyHdy������ɇ��Nm.>���,_�	��������I��_�,�������qQ�H
MP�5�(:�F�G�M������x�@z`���.�w������@�
$�R��A�N�`&Z���A�i����v�$~��N����d`��L��@�O��v�=�܋ѱA)Ir֕\I	-��,��K�I�=�ٯ��Ԡ�F���b�e1��G�n>�ga�e]E�{��\�)~D�Vtn��M+I�G�Ĭ���z-��Y:{(�`�)L�$�F��Mkʧ��Ӌ��[E�Ev��p����䇷!�������.�s��:�M4C�ɜͣpG	��I���~iP��ދ���bXWϑ����J��3F�>����t��$˖��h���I&�ԥ>x���}��`��}��^e���oH�
�>j 	)����(�~��
,�y��/;���\�+4� f���[
��΍����dЊ�Bj�C����!-s ���:�n��6�1�r�&��ju�絧k6ʸ�j��+�U�r�ڗ��h%�r:����b��d���˺aE�׃�
<�H�����=�"���q�I��D���Þ���{A�(�|���h�`��BD��P�ө��p��S݇�ӆ����-HK7�ʝw�b���S�Z*b��"�i%�N^��u��YRDb��B5M�?
���eS�����X���
s��S�Cp��������>���
?K��Yݦ�>'����������I����.�j��\�m�cϧ��s�ؒd�Τ����M3I����¼��e�mF�����I�c�F�Ş����gX2���Ȭl+;&�c����7�'���穷Oy�2�C������b��r7����џ���5v埡���1�,����g&�Q��@���f��8K��y@��D���dd�7tX�ai6�|O?�
�H�T0�_�����V���S?p=9��G����ԍ_V=��P{�?��ң��Lд >�
x2Q+|��e-ې���ͭ�Ɖ<~%qv�R�J�%L<*J�����������؆S�����2}������W)T�/ o
x�徸ȏ
��z2�`�+3I���uj����8�㒻Ъ��4��� �ln[a��&��@���
��dI؅����FF�1�����[�O�������W�����
�Ӑ�y��5!x[W"��tZB��x! �����o�����m�⌮�_+�Z~g��m�S�!Jl��3�`4��*K�������8�Ξ�J�����O�J���"�.JDxv��G�a΃*d��'c��IkK���/_�Ы�+�٘�W���T«'T�b������&p7,���K���ẻLo�䚝����_2��䗋���s����	�
AD�$���9/+����g{�:V���3N��wºs��܎6K�Ƅ�!���2��3� ak����f��%z��J���Vw������I^���;�eߊ��O�����S�HV�g%I]�������ܶ!��p���@�Hub���\��u���]_�I�?�#	���F�j͉����ȧl/Ϡ�nf��P"t�uZ���C�佅1$�
Z��[�W��s��Pn�?L�dd����#�¥m�S���&QBo�#�ui01Y�KS�Z­���"��	���#4s$�C�0�ܧb���nꟖ9ú��~0�H��԰�	ԯ�,F��
[���^����0S����&g�⍫�F�p�v��b���'���g�V�J�����>�ʪ����k&�&��	g��K	"��k����ov�Wݰy�{���V:R�w��ܶ���DQ�4�(�"y�hCn��2���q����1؃KM'��(�{��E1�S�YL�6�`�C���
X�=�f]��v ��Jj����� ��X9�G�9��b�c4��L�.�|Z�ł��� 1����r�l����I��^�r����`*k\G�%�`����
Mu��h��י+���ę�o��A�?�P��t�
�ǵ.���I�/�'����J��W�В�v(��f�݊�J�ؽDN��XwD.w���|��u�C�YlVa�
�ʒڬ�ǆ�NA� km�C��	��Ue�co��]����w\��p
m6��y�P���>rUj��R���6��.w��Ǘ��l.FZ�(��̑)�����l��`p�m��]�m�����`'�IL���Yho���EQ;'�N�3���p�ќj�� ��}p�r�E��}�ǞM�S�Nw&�R��};�����f������O)_��K����螟+-5Q��+U�����.�$0nX_uuuu0;1nX�ɨK�ҩp�R��1