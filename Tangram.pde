Shape[] shapes, fondos;
  int[] colorfigura={-16711936,-16711681,-1,-65281,-16776961,-256,-65536};
  color[] colorr={color(0,255,0),color(0,255,255),color(255,255,255),
  color(255,0,255),color(0,0,255),color(255,255,0),color(255,0,0)};
  int[] posicionx={450,100,1100,800,1000,250,600};
  int[] posiciox={1000,717,717,717,717,717,1000};
  int[] posiciony={140,350,250,100,50,130,350};
  int[] posicioy={350,373,374,374,574,292,151};
  int[] rota={4,1,2,3,5,-1,1};
  float[] escala={1,sqrt(2),2,2,1,1,1};
  int[]rotar=new int[7];
  float escala2=1,escala1=1;
  boolean[]MoverPieza=new boolean[7];
  boolean ganar,espacio,reflejo,traslapo;
  color coloraton;
  
    void keyPressed() {
      for(int i=0; i<7; i++) {
        if(MoverPieza[i]) {
          if(keyCode==LEFT){
            rotar[i]+=1;
          }
          if (keyCode==RIGHT){
            rotar[i]-=1;
          }
        }  
      } 
      if(keyCode==UP && MoverPieza[6]==true) {  
        reflejo=false;
        escala1=-1;
        escala2=1;
      }
      if(keyCode==DOWN && MoverPieza[6]==true) {   
        reflejo=true;
        escala1=-1; 
        escala2=1;
      }
      if (key==' ') {
        espacio=true;
      }
    }
    
    void mouseReleased() {
      for(int i=0; i<7; i++) {
        MoverPieza[i]=false;
      }
      traslapo=false;
    }
    
    void ganar(){
      loadPixels();
      int cuadros=0;
      for(int x=0; x<(width*height); x++) {
        if(pixels[x]==-13605938){
        cuadros ++; 
        }
      }
      updatePixels();
      if(cuadros<2000) {
        ganar=true;
        textSize(32);
        text("¡Ganaste!", 700, 30); 
        text("¡Presiona espacio para continuar!", 700, 60); 
        fill(0, 102, 153); 
      }
      if(key==' '&&get(652,211)==-10855846&&ganar==true) {
        background(90);
        fill(0,0,0);
        textSize(100);
        text("Felicitaciones", 400,400); 
      }
    }
    
    void niveldos() {
      if(ganar==true && espacio==true) {
        background(90);
        fill(48,99,206);
        fondos=new Shape[7];
        for (int i=0; i<5; i++)
          fondos[i] = new Trian(posiciox[i],posicioy[i],rota[i],escala[i],color(48,99,206));
        fondos[5] = new Rect(posiciox[5],posicioy[5],rota[5],escala[5],color(48,99,206));
        fondos[6]= new Rect3(posiciox[6],posicioy[6],rota[6],escala[6],color(48,99,206));
        for (int i=0; i<7; i++)
          fondos[i].draw();
      }
    }

void setup() {
  size(1350,690);
  shapes = new Shape[7];
}
void draw() {
  coloraton=get(mouseX, mouseY);
  background(90);
  textSize(20);
  fill(255,255,255);
  text("Instrucciones", 10, 30); 
  text("Para mover cualquier figura, arrástrela con el mouse.", 10, 50);  
  text("Para girar las figura en sentido horario, utilice la flecha ←", 10, 70);
  text("Para girar las figura en sentido antihorario, utilice la flecha →", 10, 90);
  text("Para voltear el paralelepípedo, utilice la flecha ↑", 10, 110); 
  fill(48,99,206);
  rect(475,145,400,400);
  niveldos();
  for (int i=0; i<5; i++)
    shapes[i] = new Trian(posicionx[i],posiciony[i],rotar[i],escala[i],colorr[i]);
  shapes[5] = new Rect(posicionx[5],posiciony[5],rotar[5],escala[5],colorr[5]);
  shapes[6]= new Rect2(posicionx[6],posiciony[6],rotar[6],escala[6],colorr[6]); 
  for (int i=0; i<7; i++) { 
    shapes[i].draw();
    shapes[i].moveShape();
  }
  ganar();
}