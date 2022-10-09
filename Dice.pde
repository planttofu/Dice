void setup()
  {
    size(500, 500);
    noLoop();
  }
  void draw()
  {
      background(255, 255, 255);
      int sum = 0;
       for(int y = 2; y <= 450 ; y += 50) {
      for(int x = 0; x <= 500; x += 50) {
        Die cube = new Die(x,y);
         strokeWeight(1);
         fill((int)(Math.random()*220), (int)(Math.random()*245), 260);
        cube.roll();
        if(cube.dots < 7) {
          sum += cube.dots;
        cube.show();
        }
       }
    }
    fill(0, 0, 0);
    strokeWeight(2);
    textSize(25);
    text("Total:" + " " + sum, 210, 480);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;
      double dots;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          
      }
      void roll()
      {
         dots = (int)(Math.random()*6 + 1); 
      }
      void show()
      {
          rect(myX+5, myY+5, 40, 40);
         
          //circles 
       if(dots == 1) {
         fill(255, 255, 255);
         ellipse(myX + 25, myY + 25, 10, 10);
       }
       if(dots == 2) {
         fill(255, 255, 255);
         ellipse(myX + 19, myY + 30, 10, 10);
         ellipse(myX + 31, myY + 20, 10, 10);
       }
       if(dots == 3) {
         fill(255, 255, 255);
         ellipse(myX + 15, myY + 32, 10, 10);
         ellipse(myX + 25, myY + 23, 10, 10);
         ellipse(myX + 35, myY + 15, 10, 10); 
       }
       if(dots == 4) {
         fill(255, 255, 255);
         ellipse(myX + 18, myY + 18, 10, 10);
         ellipse(myX + 18, myY + 32, 10, 10);
         ellipse(myX + 32, myY + 18, 10, 10);
         ellipse(myX + 32, myY + 32, 10, 10);
       }
       if(dots == 5) {
         fill(255, 255, 255);
         ellipse(myX + 15, myY + 15, 10, 10);
         ellipse(myX + 15, myY + 35, 10, 10);
         ellipse(myX + 25, myY + 25, 10, 10);
         ellipse(myX + 34, myY + 15, 10, 10);
         ellipse(myX + 34, myY + 35, 10, 10);
       }
       if(dots == 6) {
         fill(255, 255, 255);
         ellipse(myX + 12, myY + 15, 10, 10);
         ellipse(myX + 24, myY + 15, 10, 10);
         ellipse(myX + 36, myY + 15, 10, 10);
         ellipse(myX + 12, myY + 30, 10, 10);
         ellipse(myX + 24, myY + 30, 10, 10);
         ellipse(myX + 36, myY + 30, 10, 10);
	 }
 
  	}
  }
