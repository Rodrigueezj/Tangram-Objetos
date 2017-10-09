class Trian extends Shape{
  public Trian(float x, float y, float r, float s,color c) {
    xpos=x;
    ypos=y;
    rot = r;
    scl = s;
    colorrr=c;
    figura=1;
  }
  @Override
  protected void drawShape() {
    triangle(0,0,100,100,0,200);
  }
}