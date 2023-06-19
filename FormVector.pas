unit FormVector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, UCvector,
  Vcl.Menus, math, UCvectorString;

type
  TForm1 = class(TForm)
    SGVector: TStringGrid;
    ScrollBar1: TScrollBar;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Metodos1: TMenuItem;
    Button2: TButton;
    Secuencial1: TMenuItem;
    Label1: TLabel;
    Binaria1: TMenuItem;
    Button3: TButton;
    AlgOrdenamiento1: TMenuItem;
    Intercambio1: TMenuItem;
    Burbuja1: TMenuItem;
    Seleccion1: TMenuItem;
    shell1: TMenuItem;
    MegerSort1: TMenuItem;
    QuickSort1: TMenuItem;
    Button4: TButton;
    String1: TMenuItem;
    Inssertarstring1: TMenuItem;
    OrdDescendente1: TMenuItem;
    PalabrasNorepetidas1: TMenuItem;
    Button5: TButton;
    EliminarElemento1: TMenuItem;
    EliminarSubCadena1: TMenuItem;
    procedure ScrollBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Secuencial1Click(Sender: TObject);
    procedure Binaria1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Delete;
    procedure Intercambio1Click(Sender: TObject);
    procedure Burbuja1Click(Sender: TObject);
    procedure Seleccion1Click(Sender: TObject);
    procedure shell1Click(Sender: TObject);
    procedure MegerSort1Click(Sender: TObject);
    procedure QuickSort1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Inssertarstring1Click(Sender: TObject);
    procedure OrdDescendente1Click(Sender: TObject);
    procedure PalabrasNorepetidas1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure EliminarElemento1Click(Sender: TObject);
    procedure EliminarSubCadena1Click(Sender: TObject);
  private
    { Private declarations }
    v: Vector;
    VS: vectorString;
    Numero: boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Binaria1Click(Sender: TObject);
begin
label1.Caption:= 'Se encuentra en la posicion '+floatToStr(v.BusquedaBIn(strToFloat(inputBox('Busqueda','Coloque el Valor: ', ''))));
end;

procedure TForm1.Burbuja1Click(Sender: TObject);
begin
 v.OrdBurbuja;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i: word;
begin
 Numero:= true;
 while (SGvector.Cells[SGVector.ColCount-1,0]='')and(sGVector.ColCount<>1) do begin
   SGvector.ColCount:= SGvector.ColCount-1;
   scrollbar1.Position:=scrollbar1.Position-1;
 end;
 V.Redimensionar(SGVector.ColCount);
 for I := 1 to v.GetDim do
     v.ModElement(i,strTofloat(SGvector.Cells[i-1,0]))
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   i: word;
begin
 if NUmero=true then begin
    SGVector.ColCount:= v.GetDim;
    for I := 1 to v.GetDim do
        SGvector.Cells[i-1,0]:= floatToStr(v.GetElement(i));
 end else begin
    SGVector.ColCount:= vS.GetDim;
    for I := 1 to vS.GetDim do
        SGvector.Cells[i-1,0]:= vS.GetElement(i);
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,s,t,cantidad: word; valor: real;
begin
 numero:=true;
 cantidad:= StrToint(inputBox('Cantidad', 'Cantidad de valores: ',''));
 s:= StrToint(inputBox('Rango de valores', 'Desde(>=): ',''));
 t:= StrToint(inputBox('Rango de valores', 'Hasta(<): ',''));
 Delete;
 v.Redimensionar(cantidad);   scrollBar1.Position:= cantidad;
 for I := 1 to cantidad do
 Begin
    valor:=RandomRange(s,t);
    v.ModElement(i,valor);
 End;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
   I: word;
begin
 Numero:= false;
  while (SGvector.Cells[SGVector.ColCount-1,0]='')and(sGVector.ColCount<>1) do begin
   SGvector.ColCount:= SGvector.ColCount-1;
   scrollbar1.Position:=scrollbar1.Position-1;
 end;
 VS.Redimensionar(SGVector.ColCount);
 for I := 1 to vS.GetDim do
     vS.ModElement(i,SGvector.Cells[i-1,0]);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Delete;
end;

procedure TForm1.Delete;
var  I: word;
begin
 for I := SGvector.ColCount downto 1 do begin
     SGVector.Cells[i,0]:= '';
     v.DelElemenFinal;
 end;
 Scrollbar1.Position:= 1;
 SGvector.Cells[0,0]:='';
end;

procedure TForm1.EliminarElemento1Click(Sender: TObject);
begin
 vs.DelElemento(strToint(inputBox('Elemento','Coloque la posicion del elemento: ','')));
end;

procedure TForm1.EliminarSubCadena1Click(Sender: TObject);
begin
 Vs.DelSubcad(inputBox('SubCadena','Coloque la SubCadena: ',''));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  v:= Vector.Create;
  Vs:= VectorString.Create;
end;

procedure TForm1.Inssertarstring1Click(Sender: TObject);
begin
 vs.InsElement(StrToint(inputBox('Posicion','Coloque la posicion: ','')), inputBox('Palabra','Coloque la palabra: ',''));
end;

procedure TForm1.Intercambio1Click(Sender: TObject);
begin
 v.OrdIntercambio;
end;

procedure TForm1.MegerSort1Click(Sender: TObject);
begin
 v.MergerSort;
end;

procedure TForm1.OrdDescendente1Click(Sender: TObject);
begin
 Vs.OrdDescendente;
end;

procedure TForm1.PalabrasNorepetidas1Click(Sender: TObject);
begin
 label1.Caption:= Vs.PalabrasNorepetidas;
end;

procedure TForm1.QuickSort1Click(Sender: TObject);
begin
 v.QuickSOrt;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
 SGVector.ColCount:= scrollbar1.Position;
end;

procedure TForm1.Secuencial1Click(Sender: TObject);
begin
 label1.Caption:= 'Se encuentra en la posicion '+floatToStr(v.BusquedaSec(strToFloat(inputBox('Busqueda','Coloque el Valor: ', ''))));
end;

procedure TForm1.Seleccion1Click(Sender: TObject);
begin
 v.OrdSeleccion;
end;

procedure TForm1.shell1Click(Sender: TObject);
begin
 v.OrdShell;
end;

end.
