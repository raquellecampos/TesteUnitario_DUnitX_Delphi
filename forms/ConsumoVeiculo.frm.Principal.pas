unit ConsumoVeiculo.frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.TitleBarCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Consumo.Classe;

type
  TfrmPrincipal = class(TForm)
    pnlCorpo: TPanel;
    pnlCorpoConsumo: TPanel;
    gbxConsumo: TGroupBox;
    pnlCorpoImagem: TPanel;
    imgCarro: TImage;
    edtKmInicial: TLabeledEdit;
    edtMediaConsumo: TLabeledEdit;
    edtKmFinal: TLabeledEdit;
    edtValorLitro: TLabeledEdit;
    btnCalcular: TBitBtn;
    edtResultado: TEdit;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure InicializarVariaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  InicializarVariaveis;
end;

procedure TfrmPrincipal.InicializarVariaveis;
var
  lKMInicial: Double;
  lKMFinal: Double;
  lMediaConsumo: Double;
  lValorCombustivel: Double;
  lResultado: Double;
  lConsumo: TConsumo;
begin
  lKMInicial := strToFloat(edtKmInicial.Text);
  lKMFinal := strToFloat(edtKmFinal.Text);
  lMediaConsumo := StrToFloat(edtMediaConsumo.Text);
  lValorCombustivel := StrToFloat(edtValorLitro.Text);

  lConsumo:= TConsumo.Create;
   try
    lResultado := lConsumo.Calcular(lKMInicial, lKMFinal,lMediaConsumo, lValorCombustivel)
   finally
     lConsumo.Free;
   end;

  edtResultado.Text := lResultado.ToString;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
