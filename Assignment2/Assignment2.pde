void setup()
{
  size(900, 600);
  color bg = #9CF5FC;
  background(bg);
  smooth();
  noLoop();
}

void draw()
{
  noStroke();
  int i = 0;
  fill(#cccccc);
  
  while(i <= 25)
  {
    float randomX = (width - 600) / 2 + random(600);
    float randomXMax = randomX + random(200);
  
    float randomPeakX = randomX + (randomXMax -randomX) / 2 ;
    float randomPeakY = 100 + random(300);

    //face 1    
    triangle(randomX, 500, randomXMax, 500, randomPeakX, randomPeakY); 
 
    //face 2 
    triangle(randomX, 500, randomXMax, 500, randomPeakX, randomPeakY); 
    
    i++;
  }  

   
 
}
