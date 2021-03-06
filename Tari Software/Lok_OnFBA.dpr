//program Lok_OnFBATS;
program Lok_OnFBA;

uses
  Forms,
  DIYMain in 'DIYMain.pas' {DIYMainF},
  DMClient in 'DMClient.pas' {DataModuleClient: TDataModule},
  DIYPlanExpenses in 'DIYPlanExpenses.pas' {DIYPlanExpensesF},
  MonitoringInvoices in 'MonitoringInvoices.pas' {MonitoringInvoicesF},
  Workback in 'Workback.pas' {WorkBackF},
  DMUsers in 'DMUsers.pas' {DMUserM: TDataModule},
  MaintainUsers in 'MaintainUsers.pas' {MaintainUserF},
  HelpProdFTE in 'HelpProdFTE.pas' {HelpProdFTEF},
  HelpTotalFte in 'HelpTotalFte.pas' {HelpTotalFteF},
  HelpActualHours in 'HelpActualHours.pas' {HelpActualHoursF},
  HelpPotentialUnits in 'HelpPotentialUnits.pas' {HelpPotentialUnitsF},
  Monitoring in 'Monitoring.pas' {MonitoringF},
  ReportingTargets in 'ReportingTargets.pas' {ReportingTargetsF},
  ReportingTracking in 'ReportingTracking.pas' {ReportingTrackingF},
  About in 'About.pas' {AboutDialogFm},
  TrackingPDFReports in 'TrackingPDFReports.pas',
  TargetGrep in 'TargetGrep.pas' {TargetGRepF},
  TargetDetailGrep in 'TargetDetailGrep.pas' {TargetDetailGRepF},
  Splash1 in 'Splash1.pas' {SplashForm},
  MonitoringExpenses in 'MonitoringExpenses.pas' {MonitoringExpensesF},
  Invoices in 'Invoices.pas' {InvoicesF},
  MonitoringOtherIncome in 'MonitoringOtherIncome.pas' {MonitoringOtherIncomeF},
  MonitoringSales in 'MonitoringSales.pas' {MonitoringSalesF},
  PlanExtension in 'PlanExtension.pas' {PlanExtensionF},
  DBMaint in 'DBMaint.pas' {DBMaintF},
  CustomPDFReport in 'CustomPDFReport.pas',
  HelpPotentialHours in 'HelpPotentialHours.pas' {HelpPotentialHoursF},
  TargetPDFReports in 'TargetPDFReports.pas',
  LicenceCalc in 'LicenceCalc.pas',
  TrackGrep in 'TrackGrep.pas' {TrackGRepF},
  CashFlowEngine in 'CashFlowEngine.pas',
  Quotes in 'Quotes.pas' {QuotesF},
  showcaption in 'showcaption.pas' {ShowLabelF},
  ServerSel in 'ServerSel.pas' {ServerSelF},
  ServerMaint in 'ServerMaint.pas' {ServerMaintF},
  BackupRestore in 'BackupRestore.pas' {BackupFrm},
  LicenceA in 'LicenceA.pas' {LicenceFA},
  DBemail in 'DBemail.pas' {DBEmailF},
  NewBusinessWizard in 'NewBusinessWizard.pas' {NewBusinessWizardF},
  DBUpdate in 'DBUpdate.pas' {DBUpdateF},
  DatePrefers in 'DatePrefers.pas' {DatePrefersF},
  LicenceExpiry in 'LicenceExpiry.pas' {LicExpiryDlg},
  TimingUnit in 'TimingUnit.pas',
  Lok_OnFBA_TLB in 'Lok_OnFBA_TLB.pas',
  rbPrvDlg in 'rbPrvDlg.pas' {rbPrintPreview},
  Planning in 'Planning.pas' {PlanningF},
  LGlobals in 'LGlobals.pas',
  DMTestCon in 'DMTestCon.pas' {DMTestConM: TDataModule},
  CashFlowEdit in 'CashFlowEdit.pas' {CashFlowEditF},
  PrintInvoices in 'PrintInvoices.pas' {PrintInvoicesF},
  detailExpenses in 'detailExpenses.pas' {DetailExpensesF},
  CashFlowDE in 'CashFlowDE.pas' {CashFlowDEF},
  CashFlowOptionsEdit in 'CashFlowOptionsEdit.pas' {CashFlowOptionsEditF},
  ExpenseAccEdit in 'ExpenseAccEdit.pas' {ExpenseAccEditF},
  detailTargets in 'detailTargets.pas' {DetailTargetsF};
//  TestGrid in 'TestGrid.pas';

//  Unit1 in 'C:\Program Files\Borland\Delphi5\Projects\Unit1.pas' {Form1};

//{$R *.TLB}

{$R *.RES}
{$R LokonBitmaps.res}
// Command Line Arguments
// Flag   Argument Description
// /B     Database File Name of business (If exists, access to other Businesses is denied)
// /L     Full Path to Ini File for the Session (If non-existent or invalid, Registry Default is used)
// /U     UserName for Session
// /P     UserPassword for Session (If Username and not given User is prompted)
begin
  Application.Initialize;
  if GGlobals.initfailed = False then
    begin
    Application.Title := 'Lok-On';
  Application.Run;
    end
  else
    Application.Terminate;
end.
