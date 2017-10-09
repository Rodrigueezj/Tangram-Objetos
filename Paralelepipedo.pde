class Rect2 extends Shape {
  public Rect2(float x, float y, float r, float s,color c) {
    xpos=x;
    ypos=y;
    rot = r;
    scl = s;
    colorrr=c;
    figura=3;
  }
  @Override
  protected void drawShape() {
    if(reflejo==true) {
      quad(0,0,0,200,-100,300,-100,100);
    }else{
       scale(escala1,escala2);
       quad(0,0,0,200,-100,300,-100,100);
    }
    }
}