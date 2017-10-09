abstract class Shape {
  protected float rot,scl,xpos,ypos;
  protected color colorrr;
  protected int figura;
  public Shape() {
    this(random(100, width-100), random(100, height-100), 0, 1,0);
  }
  public Shape(float x, float y, float r, float s,color c) {
    xpos=x;
    ypos=y;
    rot = r;
    scl = s;
    colorrr=c;
  }
  protected abstract void drawShape();
  public void draw() {
    if(figura==1) {
      pushStyle();
      pushMatrix();
      noStroke();
      translate(getTranslationx(),getTranslationy());
      rotate(getRotation()*PI/4);
      scale(getScaling(),getScaling());
      fill(getColor());
      drawShape();
      popMatrix();
      popStyle();
    }
    if(figura==2) {
      pushStyle();
      pushMatrix();
      noStroke();
      translate(getTranslationx(),getTranslationy());
      rotate(getRotation()*PI/4);
      scale(getScaling(),getScaling());
      fill(getColor());
      drawShape();
      popMatrix();
      popStyle();
    }
    if(figura==3) {
      pushStyle();
      pushMatrix();
      noStroke();
      translate(getTranslationx(),getTranslationy());
      rotate(getRotation()*PI/4);
      scale(getScaling());
      fill(getColor());
      drawShape();
      popMatrix();
      popStyle();
    }
    if(figura==4) {
      pushStyle();
      pushMatrix();
      noStroke();
      translate(getTranslationx(),getTranslationy());
      rotate(getRotation()*PI/4);
      scale(getScaling());
      fill(getColor());
      drawShape();
      popMatrix();
      popStyle();
    }
  }
  public void moveShape() {
    for(int i=0; i<7; i++) {
      if(mousePressed==true && (colorfigura[i]==coloraton) && traslapo==false){
        MoverPieza[i]=true;
        traslapo=true;
      }
      if(MoverPieza[i]) {
        posicionx[i]=mouseX;
        posiciony[i]=mouseY;
      }  
    }
  }
  public float getScaling() {
    return scl;
  }
  public void setScaling(float s) {
    scl=s;
  }
  public float getRotation() {
    return rot;
  }
  public void setRotation(float r) {
    rot=r;
  }
  public float getTranslationx() {
    return xpos;
  }
  public void setTranslationx(float x) {
    xpos=x;
  }
  public float getTranslationy() {
    return ypos;
  }
  public void setTranslationy(float y) {
    xpos=y;
  }
  public void setColor(color c) {
    colorrr=c;
  }
  public color getColor() {
    return colorrr;
  }
  
}
    