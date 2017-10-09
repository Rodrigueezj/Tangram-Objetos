class Rect extends Shape {
  public Rect(float x, float y, float r, float s,color c) {
    xpos=x;
    ypos=y;
    rot = r;
    scl = s;
    colorrr=c;
    figura=2;
  }
  @Override
  protected void drawShape() {
    quad(0,0,100,100,0,200,-100,100);
  }
}