int total;
int overall;
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
  //die positions
  die1 = new Die(width-600, height-470);
  die2 = new Die(width-600, height-285);
  die3 = new Die(width-600, height-100);
  die4 = new Die(width-400, height-470);
  die5 = new Die(width-400, height-285);
  die6 = new Die(width-400, height-100);
  die7 = new Die(width-200, height-470);
  die8= new Die(width-200, height-285);
  die9 = new Die(width-200, height-100);
  total=0;
  overall=0;
  noLoop();
}

void draw() {
  //your code here
  background(random(200), random(100), 250);
  die1.show();
  total+= die1.total;
  die2.show();
  total+= die2.total;
  die3.show();
  total+= die3.total;
  die4.show();
  total+= die4.total;
  die5.show();
  total+= die5.total;
  die6.show();
  total+= die6.total;
  die7.show();
  total+= die7.total;
  die8.show();
  total+= die8.total;
  die9.show();
  total+= die9.total;

  overall+=total;
  fill(0);
  textSize(20);
  text("Total roll: " + total, 300, 580);
  text("Overall roll: " + overall, 500, 580);
}

void mousePressed() {
  redraw();
  die1.roll();
  die2.roll();
  die3.roll();
  die4.roll();
  die5.roll();
  die6.roll();
  die7.roll();
  die8.roll();
  die9.roll();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  //variable declarations for your Die instances here
  int x_pos;
  int y_pos;
  int num;
  int total;
  //constructor
  Die(int x, int y) {
    //variable initializations here
    x_pos=x;
    y_pos=y;
    roll();
    total = 0;
  }

  //Simulate a roll of a die
  void roll() {
    //your code here, 
    //should randomly assign a value from 1 to 6
    num = (int)((Math.random()*6)+1);
  }

  /*
    Use the randomly assigned roll value to draw the face of a die
   */
  void show() {
    //your code here
    pushMatrix();

    //rectangle
    translate(x_pos, y_pos);
    fill (random(255), random(255), random(255));
    rect(-100, -100, 150, 150);

    // circle work
    fill(0);
    if (num == 1) {
      ellipse(-25, -25, 25, 25);
      total=1;
    } 
    if (num == 2) {
      ellipse(10, 10, 25, 25);
      ellipse(-60, -60, 25, 25);
      total=2;
    } 
    if (num == 3) {
      ellipse(10, 10, 25, 25);
      ellipse(-25, -25, 25, 25);
      ellipse(-60, -60, 25, 25);
      total=3;
    } 
    if (num == 4) {
      ellipse(10, 10, 25, 25);
      ellipse(-60, -60, 25, 25);
      ellipse(10, -60, 25, 25);
      ellipse(-60, 10, 25, 25);
      total=4;
    } 
    if (num == 5) {
      ellipse(10, 10, 25, 25);
      ellipse(-25, -25, 25, 25);
      ellipse(-60, -60, 25, 25);
      ellipse(10, -60, 25, 25);
      ellipse(-60, 10, 25, 25);
      total=5;
    } 
    if (num == 6) {
      ellipse(10, 10, 25, 25);
      ellipse(-60, -25, 25, 25);
      ellipse(-60, -60, 25, 25);
      ellipse(10, -60, 25, 25);
      ellipse(-60, 10, 25, 25);
      ellipse(10, -25, 25, 25);
      total=6;
    }

    popMatrix();
  }
}
