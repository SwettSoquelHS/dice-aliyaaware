Die die1;
Die die2;
Die die3;
Die die4;
Die die5;
Die die6;
Die die7;
Die die8;
Die die9;


void setup() {
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size (800, 600);
  
  die1 = new Die(width-600, height-470);
  die2 = new Die(width-600, height-285);
  die3 = new Die(width-600, height-100);
  die4 = new Die(width-400, height-470);
  die5 = new Die(width-400, height-285);
  die6 = new Die(width-400, height-100);
  die7 = new Die(width-200, height-470);
  die8= new Die(width-200, height-285);
  die9 = new Die(width-200, height-100);
  noLoop();
}

void draw() {
  //your code here
  die1.show();
  die2.show();
  die3.show();
  die4.show();
  die5.show();
  die6.show();
  die7.show();
  die8.show();
  die9.show();
}

void mousePressed() {
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  //variable declarations for your Die instances here
  int x_pos, y_pos, result;

  //constructor
  Die(int x, int y) {
    //variable initializations here
    x_pos=x;
    y_pos=y;
  }

  //Simulate a roll of a die
  void roll() {
    //your code here, 
    //should randomly assign a value from 1 to 6
    
    int[] dieArray = new int[9];
    for (int i = 0; i < dieArray.length; i++){
      result = (int)(Math.random()*6+1);
      dieArray[i] = result;
    }
    
  }

  /*
    Use the randomly assigned roll value to draw the face of a die
   */
  void show() {
    //your code here
    pushMatrix();
    translate(x_pos, y_pos);
    fill (random(255), random(255),random(255));
    rect(-100, -100, 150, 150);
    
    fill(0);
    if (result == 1) { 
      ellipse(-25, -25, 25, 25);
    }
    if (result == 2) {
      ellipse(-15, -15, 25, 25);
      ellipse(15, 15, 25, 25);
    }
    if (result == 3){
      ellipse(10, 10, 25, 25);
      ellipse(-25, -25, 25, 25);
      ellipse(-60, -60, 25, 25);
    }
    if (result == 4) {
      ellipse(-15, -15, 25, 25);
      ellipse(15, 15, 25, 25);
      ellipse(15, -15, 25, 25);
      ellipse(15, -15, 25, 25);
    }
    if (result == 5) fill(0);{
      ellipse(10, 10, 25, 25);
      ellipse(-25, -25, 25, 25);
      ellipse(-60, -60, 25, 25);
      ellipse(10, -60, 25, 25);
      ellipse(-60, 10, 25, 25);
    }
    if (result == 6) {
      ellipse(-15, 0, 25, 25);
      ellipse(15, 0, 25, 25);
      ellipse(-15, -15, 25, 25);
      ellipse(15, 15, 25, 25);
      ellipse(15, -15, 25, 25);
      ellipse(15, -15, 25, 25);
    }
    popMatrix();
  }
}
