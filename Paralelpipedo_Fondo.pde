class Rect3 extends Shape {
  public Rect3(float x, float y, float r, float s,color c) {
    xpos=x;
    ypos=y;
    rot = r;
    scl = s;
    colorrr=c;
    figura=4;
  }
  @Override
  protected void drawShape() {
      quad(0,0,0,200,-100,300,-100,100);
    }
}