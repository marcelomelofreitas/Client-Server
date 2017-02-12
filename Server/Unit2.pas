unit Unit2;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, Project1_TLB, StdVcl, Provider, DB, ADODB;

type
  Trdmw = class(TRemoteDataModule, Irdmw)
    ADOConnection1: TADOConnection;
    ADOPers: TADOTable;
    ADOTelephon: TADOTable;
    ADOInform: TADOTable;
    DataPers: TDataSource;
    DataSourcePers_inf: TDataSource;
    DataSetPers: TDataSetProvider;
    DataSetTelephon: TDataSetProvider;
    DataSetInform: TDataSetProvider;
    ADOPersid_pers: TAutoIncField;
    ADOPersdep: TWideStringField;
    ADOPersfam: TWideStringField;
    ADOPersnam: TWideStringField;
    ADOPerspar: TWideStringField;
    ADOPersyear_b: TIntegerField;
    ADOPerspol: TWideStringField;
    ADOPerscharact: TMemoField;
    ADOPersphoto: TWideStringField;
    procedure RemoteDataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure Trdmw.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure Trdmw.RemoteDataModuleCreate(Sender: TObject);
begin
    AdoPers.Active := true;
    AdoTelephon.Active := true;
    AdoInform.Active := true;
end;

initialization
  TComponentFactory.Create(ComServer, Trdmw,
    Class_rdmw, ciMultiInstance, tmApartment);
end.
