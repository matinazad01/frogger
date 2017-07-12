Car red = new Car();
int fx=200;
int fy=365;
int fw=50;
int fh=60;
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
  ellipse(fx,fy,fw,fh);
 red.draw();
if(red.x>=400){
red.xsped=-red.xsped;
}
if(red.x<=0){
 red.xsped=-red.xsped;
}
 if(intersect(red)){
fx=200;
fy=365;
     text("YOU LOSE!",200,50);
text("Press Enter To Restart",200,100);
if(keyCode==ENTER){fx=200; fy=380;}
 }
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
 boolean intersect(Car car){
 if(car.x>fx+fw/2)
 return false;
 if(car.x+car.w<fx-fw/2)
  return false;
  if(car.y>fy+fh/2)
  return false;
  if(car.y+car.h<fy-fh/2)
  return false;
  
  return true;
  
  
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

  
  