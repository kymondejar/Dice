void setup()
{
  size(600,700);
  noLoop();
}
void draw()
{
background(0,0,0);
int dotSum = 0;
for(int x = 11; x >= 0;x--){
 Die n = new Die (x*50,x*0);
 n.roll();
 n.show();
 dotSum = dotSum + n.roller;
  for( int y = 11; y>0;y--){
 Die g = new Die(x*50, y*50);
 g.roll();
 g.show();
 dotSum = dotSum + g.roller;
  }
}
fill(255);
textAlign(CENTER);
text("Sum:" + dotSum, 300, 650);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int coordinateX;
  int coordinateY;
  int roller=1;
  
  Die(int x, int y) 
  {
    this.coordinateX = x;
    this.coordinateY = y;
  }
  void roll()
  {
    this.roller = (int)(Math.random()*6+1);
   
  
  }
  void show()
  {
    fill(217, 29, 26);
    rect(this.coordinateX,this.coordinateY,50,50);
    if(roller==1){
      fill(255, 255, 255);
      ellipse(coordinateX+25, coordinateY+25, 8, 8);
    }else if (roller==2){
        fill(255, 255, 255);
      ellipse(coordinateX+35.5, coordinateY+35.5, 8, 8);
      ellipse(coordinateX+15.5, coordinateY+15.5, 8, 8);
    }else if (roller==3){
        fill(255, 255, 255);
    ellipse(coordinateX+35.5, coordinateY+35.5, 8, 8);
     ellipse(coordinateX+25, coordinateY+25,8, 8);
      ellipse(coordinateX+15.5, coordinateY+15.5, 8, 8);
  }else if (roller==4){
      fill(255, 255, 255);
   ellipse(coordinateX+35.5, coordinateY+35.5, 8, 8);
    ellipse(coordinateX+15.5, coordinateY+35.5, 8, 8);
     ellipse(coordinateX+35.5, coordinateY+15.5, 8, 8);
      ellipse(coordinateX+15.5, coordinateY+15.5, 8, 8);
  }else if (roller==5){
      fill(255, 255, 255);
     ellipse(coordinateX+35.5, coordinateY+35.5, 8, 8);
      ellipse(coordinateX+15.5, coordinateY+35.5, 8, 8);
       ellipse(coordinateX+25, coordinateY+25, 8, 8);
        ellipse(coordinateX+35.5, coordinateY+15.5, 8, 8);
         ellipse(coordinateX+15.5, coordinateY+15.5, 8, 8);
  }else if (roller==6){
      fill(255, 255, 255);
     ellipse(coordinateX+35.5, coordinateY+35.5, 8, 8);
      ellipse(coordinateX+35.5, coordinateY+25, 8, 8);
       ellipse(coordinateX+15.5, coordinateY+35.5, 8, 8);
        ellipse(coordinateX+35.5, coordinateY+15.5, 8, 8);
         ellipse(coordinateX+15.5, coordinateY+25, 8, 8);
          ellipse(coordinateX+15.5, coordinateY+15.5, 8, 8);
    }
  }
}
