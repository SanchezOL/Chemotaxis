Bacteria [] bob;
void setup()   
{     background(0);
  size(500, 500);
  bob = new Bacteria[30];
  for (int i=0; i<bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}

void draw()   
{    
  
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}

class Bacteria    
{   
  int myX;
  int myY;
  int myColor;
  Bacteria () {
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void show ()
  {
    fill(myColor);
    ellipse (myX,myY,20,20);
  }
  void move(){
    myX = myX + (int)(Math.random() * 11) - 5;
    myY = myY + (int)(Math.random() * 11) - 5;
  }
}   