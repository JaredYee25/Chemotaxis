Bacteria [] virus;

void setup()  
{    
  size(500,500);
  background(0);
  
  //frameRate(10);
  virus = new Bacteria[500];
  
  for(int i = 0; i < virus.length; i = i + 1)
    {
      virus[i] = new Bacteria();
    }
}  

void draw()  
{   
  background(0);
  for (int i = 0; i < virus.length; i++)
  {
    virus[i].move();
    virus[i].show();
  }
} 

class Bacteria
{    
  int myX, myY, myColor;
  Bacteria()
  {
    myX = 250;
    myY = 250;
    myColor = color(#AD40CB);
  }
  void move()
  {
    myX = myX + (int)(Math.random()*2);
    myX = myX - (int)(Math.random()*2);
    myY = myY + (int)(Math.random()*2);
    myY = myY - (int)(Math.random()*2);
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,25,25);
  }
}
 
 //declare bacteria variables here   
 //void setup()   
 //{     
 	//initialize bacteria variables here   
// }   
// void draw()   
// {    
 	//move and show the bacteria   
// }  
// class Bacteria    
// {     
 	//lots of java!   
// }    
