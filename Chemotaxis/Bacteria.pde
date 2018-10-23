class Bacteria
{

  int x1;
  int y1;
  float movementSpeed;
  boolean found=true;
  boolean override=true;

  Bacteria(int x, int y, float m) {
    x1=x;
    y1=y;
    movementSpeed=m;
  }

  int getX() {
    return x1;
  }

  int getY() {
    return y1;
  }



  void move() {
    x1+=(float)(random(0, 5))-2;
    y1+=(float)(random(0, 5))-2;
    for (int i =1; i<11; i++) {
      if ((mouseX==x1+i || mouseX==x1-i) && (mouseY==y1+i || mouseY==y1-i)) {  
        check=false;
      }
    }
    if (mouseX>=x1 && mouseY>=y1) {
      x1+=movementSpeed; 
      y1+=movementSpeed;
    } 
    if (mouseX<=x1 && mouseY>=y1) {

      x1-=movementSpeed; 
      y1+=movementSpeed;
    } 
    if (mouseX>=x1 && mouseY<=y1) {

      x1+=movementSpeed; 
      y1-=movementSpeed;
    } 
    if (mouseX<=x1 && mouseY<=y1) {

      x1-=movementSpeed; 
      y1-=movementSpeed;
    }
  }


  void hit() {
    x1+=(float)(random(0, 5))-2;
    y1+=(float)(random(0, 5))-2;
    if (mouseX>=x1 && mouseY>=y1) {
      x1-=movementSpeed; 
      y1-=movementSpeed;
    } 
    if (mouseX<=x1 && mouseY>=y1) {
      x1+=movementSpeed; 
      y1-=movementSpeed;
    } 
    if (mouseX>=x1 && mouseY<=y1) {
      x1-=movementSpeed; 
      y1+=movementSpeed;
    } 
    if (mouseX<=x1 && mouseY<=y1) {
      x1+=movementSpeed; 
      y1+=movementSpeed;
    }
    if (x1<=110) {
      x1+=movementSpeed;
    } 
    if (x1>=790) {
      x1-=movementSpeed;
    }
    if (y1<=110) {
      y1+=movementSpeed;
    } 
    if (y1>=790) {
      y1-=movementSpeed;
    }
  }

  void show() {

    int ran1= (int)(random(0, 255));
    int ran2= (int)(random(0, 255));
    int ran3= (int)(random(0, 255));
    fill(ran1, ran2, ran3);
    ellipse(x1, y1, 20, 20);
  }

  boolean getHit() {
    for (int i =1; i<50; i++) {
      if ((mouseX==x1+i || mouseX==x1-i) && (mouseY==y1+i || mouseY==y1-i)) {  
        found=false;
      }
    }
    return found;
  }

  boolean getScore() {
    if(override){
      if (found==false) {
        get=false; 
        override=false;
      }
    }
    return get;
  }
}
