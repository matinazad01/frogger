Car red = new Car();
int fx=200;
int fy=380;
void setup(){
  size(400,400);
 
  red.x=0;
  red.y=290;
  red.w=50;
  red.h=40;
  red.r=255;
  red.g=0;
  red.b=0;
  red.xsped=10;
  red.ysped=0;
  
  
}
void draw(){
   background(0,0,255);
  fill(0,255,0);
  ellipse(fx,fy,50,60);
  
  if(fx<0){
    fx=0;}
  if(fx>400){
    fx=400;}
    if(fy>400){
    fy=400;}
    if(fy<=0){
    fy=0;

  text("YOU WIN!",200,50);
text("Press Enter To Restart",200,100);
if(keyCode==ENTER){fx=200; fy=380;}
red.draw();
    }


    
    
  
  
}
void keyPressed(){
  if(key==CODED){
    if(keyCode==UP)
    {
      fy-=60;
    }
    else if(keyCode==DOWN)
    {
      fy+=60;
    }
  else if(keyCode==RIGHT){
    fx+=50;
  }
  else if(keyCode==LEFT)
  {
  fx-=50;}
  }
  
  //WASD
   
    if(keyCode == 'W')
    {
      fy-=60;
    }
    else if(keyCode=='S')
    {
      fy+=60;
    }
  else if(keyCode=='D'){
    fx+=50;
  }
  else if(keyCode=='A')
  {
  fx-=50;}
  }
 
class Car{
  int x;
  int y;
  int w;
  int h;
  int r;
  int g;
  int b;
  int xsped;
  int ysped;
  void draw(){
    fill(r,g,b);
    rect(x,y,w,h);
    x+=xsped;
    
    
    
    
  }
  
}
  
  
  