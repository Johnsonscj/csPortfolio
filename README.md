# csPortfolio

* WebPage [here](https://johnsonscj.github.io/TestWeb/climbPage/dogPage.html)
* Lightning Java [here](https://johnsonscj.github.io/lightning2/)
* Lightning JS [here]()
* Dice [here](https://johnsonscj.github.io/dice3/)

```Java
class Die //models one single dice cube
{

  int height1;
  int width1;
  
    //variable declarations here
    Die( int w, int h) //constructor
    {
    
      width1=w;
      height1=h;
      
        //variable initializations here
    }
    void roll( int numDie, int ySpot)
    {
      int ran4 = (int)(random(1,7));
      int ran1= (int)(random(0,255));
      int ran2= (int)(random(0,255));
      int ran3= (int)(random(0,255));
      
      total= total+ ran4;
      
      if(total>high1){
       high1=total; 
      }
     if(moreDice && dice1==false){
      max=max+ran4;
      if(max>high1){
       high1=max; 
      }
      
     }
      if(dice1){
      high=ran4;
      if(high> high1){
       high1=high; 
      }
      }
      
  
      //if(high>=6){
       // total= total+ran4;
      //}
      fill(ran1, ran2, ran3);
   
     
  if (ran4 == 1 || ran4 == 3 || ran4 == 5)
    
    
    ellipse(width1/2 +numDie  , height1/2 + ySpot, diceSize/5, diceSize/5); 
 
    
  if (ran4 == 2 ||ran4 == 3 || ran4 == 4 || ran4 == 5 || ran4 == 6) { 
    ellipse(width1/2 - diceSize/4+numDie, height1/2 - diceSize/4 + ySpot, diceSize/5, diceSize/5);
    ellipse(width1/2 + diceSize/4+numDie, height1/2 + diceSize/4 + ySpot, diceSize/5, diceSize/5);
    
  }
  if (ran4 == 4 || ran4 == 5 || ran4 == 6) {
    ellipse(width1/2 - diceSize/4+numDie, height1/2 + diceSize/4+ ySpot, diceSize/5, diceSize/5);
    ellipse(width1/2 + diceSize/4+numDie, height1/2 - diceSize/4+ ySpot, diceSize/5, diceSize/5);
   
  }
  if (ran4 == 6) {
    ellipse(width1/2 +numDie, height1/2 - diceSize/4+ ySpot, diceSize/5, diceSize/5);
    ellipse(width1/2 + numDie, height1/2 + diceSize/4+ ySpot, diceSize/5, diceSize/5);
    
  }
    }

}
```
```Java

```
