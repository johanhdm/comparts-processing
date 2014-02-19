int i = 0; 
float x = 0, y = 0;
float side = 100;
int heading = 1;

color bg = #FFFFFF;

color[] colors = {#111111, #222222, #333333, #444444, #555555, #666666, #777777, #888888, #999999, #AAAAAA, #BBBBBB, #CCCCCC, #DDDDDD, #EEEEEE};

void setup()
{
  size(900, 600);
  x = width / 2;
  y = height / 2;

  background(bg);
  smooth();
  noStroke();
}

void draw()
{
  println(i % 2);

  heading = -heading;
  
  fill(colors[(int)random(0,14)]);   
  
  switch((int)random(0,3))
  {
    case 0:
      println("go left: " + x);
      if (x > 0)
      {
        triangle(x, y, x - side, y, x - side / 2, y + -heading * side * sqrt(3)/2);
        x -= side / 2;
        y = y + -heading * side * sqrt(3)/2;
      }
      break;
    case 1:
      println("go right: " + x);    
      if (x < width){
        triangle(x, y, x + side, y, x + side / 2, y + -heading * side * sqrt(3)/2);
        x += side / 2;
        y = y + -heading * side * sqrt(3)/2;
      }
      break;
    case 2:
      println("go up/down: " + y );
      if (y > 0 && y < height){
        triangle(x, y, x + side, y, x + side / 2, y + -heading * side * sqrt(3)/2);
      }
      break;
  }
  


//above
//  fill(colors[(int)random(0,6)]);  
//  triangle(x, y, x + side, y, x + side / 2, y + -side * sqrt(3)/2);
 
//right
/*  x += side / 2;
  y += side * sqrt(3)/2;
  fill(colors[(int)random(0,6)]);   
  triangle(x, y, x + side, y, x + side / 2, y + side * sqrt(3)/2);
*/
  i++;  
 
}
