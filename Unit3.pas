unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TForm3 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    MenuPrincipal1: TMenuItem;
    Contatos1: TMenuItem;
    Saida1: TMenuItem;
    procedure Contatos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses UNIT1_CONTATOS2;

procedure TForm3.Contatos1Click(Sender: TObject);
begin
form2.show;
end;

end.
