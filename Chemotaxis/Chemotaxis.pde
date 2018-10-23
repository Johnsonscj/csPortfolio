Bacteria[] dots;
PImage img;
boolean done =true;
int position;
boolean check =true;
boolean checkCol=true;
int lives=3;
boolean mode =false;
int score =0;
boolean check3=true;
int cells=25;
boolean get =true;
boolean override=true;
boolean check1=true;


//declare bacteria variables here   

void setup()   
{     
  size(900, 900);
  background(0);
  dots= new Bacteria[cells];
  if (check ) {
    img=loadImage("Thomas.Reinartz.jpg");
    image(img, 0, 0);
    for (int i=0; i<dots.length; i++) {
      dots[i]=new Bacteria((int)(random(100, 900)), (int)(random(100, 900)), (float)(Math.random()*3)+1);
    }
    //initialize bacteria variables here
  }
}   

void draw()   
{    
  if (mode==false) {
    background(0);
    fill(255, 255, 255);
    textSize(30);
    text("DO NOT let the dots touch Dr. R's face", 300, 800);

    imageMode(CENTER);
    image(img, mouseX, mouseY);
    for (int i=0; i<dots.length; i++) {
      if (check) {
        position=i;
     

          dots[i].move();
      dots[i].show();
   
        }
      

      }
    }
    if (check==false) {
      gameOver();
    }
  
  if (mode) {
    background(0);
    fill(255, 255, 255);
    textSize(30);
    text("Come here BOI", 300, 800);
    int total =cells-score;
    if(total==0){
     victory(); 
     check1=false;
    }
    text("You have " + total +" left to capture", 200,500);
    if(check1){
    imageMode(CENTER);
    image(img, mouseX, mouseY);
    }
    for (int i=0; i<dots.length; i++) {
      get=true;
      done=true;
      position=i;
      dots[i].hit();
      checkCol=true;
      if (dots[i].getHit()) {
       dots[i].show();
      } 
      if( dots[i].getScore()==false ){//gets count
        
        score++;
      
        print(score);
        
      }
      
    }
  }
}
//move and show the bacteria
void gameOver() {
  background(210, 180, 140);
  fill(255);
  text("Game Over", 300, 450);
}
void victory(){
   background(210, 180, 140);
  fill(255);
  text("Victory", 300, 450);

  
}
void mousePressed() {
  mode=true;
}

boolean checkCollusion() {
  for (int j=0; j < dots.length; j++) {
    if (position!=j) {
      if ((((dots[position].getX()-20<=dots[j].getX())  && (dots[position].getX()+20>=dots[j].getX())) && ((dots[position].getY()+20>=dots[j].getY()) && (dots[position].getY()-20<=dots[j].getY())))) {
        checkCol=false;
      }
    }
  }
  return checkCol;
}
boolean checkCollusion2() {
  for (int j=0; j < dots.length; j++) {
    if (position!=j) {
      if (((dots[position].getX()+10>=dots[j].getX()) && (dots[position].getY()+10>=dots[j].getY())) ||(dots[position].getX()-10<=dots[j].getX()) &&(dots[position].getY()-10<=dots[j].getY())) {

        checkCol=false;
      } else if (((dots[position].getX()+10>=dots[j].getX()) && (dots[position].getY()-10<=dots[j].getY())) ||(dots[position].getX()-10<=dots[j].getX()) &&(dots[position].getY()+10>=dots[j].getY())) {

        checkCol=false;
      } else {

        checkCol=true;
      }
    }
  }
  return checkCol;
}

void done() {
  background(255, 255, 255);
}
