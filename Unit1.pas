unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DOLAR: TEdit;
    Label1: TLabel;
    Button1: TButton;
    REAL: TEdit;
    Label2: TLabel;
    COMPRA: TButton;
    MSG: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure COMPRAClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VARREAL : REAL;
  VARNOME : STRING;


implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
begin


    IF DOLAR.TEXT ='' THEN
       begin
       SHOWMESSAGE('DIGITE O VALOR EM DOLAR');
       end

    ELSE
      begin
        COMPRA.Enabled := TRUE;
        VARREAL := STRTOFLOAT(DOLAR.Text) * 5.5;
        REAL.Text := FLOATTOSTR(VARREAL);
      end;

end;

procedure TForm1.COMPRAClick(Sender: TObject);

begin
   VARNOME := INPUTBOX('NOME','DIGITE SEU NOME','');


   if (VARNOME <> '') AND (DOLAR.Text <> '0') THEN
   MSG.CAPTION := 'PARABENS ' + VARNOME + ', VOC� COMPROU ' + DOLAR.Text + ' DORLAR(ES)'

   else
   SHOWMESSAGE ('FALTA NOME OU VALOR N�O PODE SER ZERO');


end;

end.
