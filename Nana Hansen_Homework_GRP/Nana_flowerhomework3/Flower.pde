class Flower {

  // Variables
  float speed = 2; //Der blev lavet en speed variable så man kunne flytte på blomsten og sætte den til forskellig hastighed
  float ballX;
  float ballY;


  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  color petalColor = #3F24DE;//hexadecimal number for the color of petals

  //Array
  int num = 30;
  int[] arrayX = new int[num];
  int[] arrayY = new int[num];


  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speed) {
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
    speed = temp_speed;
  }

  void display () {
    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    stroke(0);
    fill(200, 0, 0);
    ellipse(x, y, r*1.3, r*1.3);
  }

  void move(/*float speed*/) {
    x = x + speed;
  }

  void bounce() {
    if (x > width-r || x < r || y > height || y < 0) {
      speed = speed * (-1);
    }
  }

  void mouseDragged() {
    if (mousePressed) {
      x = mouseX;
      y = mouseY;
      if (mouseX > width/2) {
        petalColor = #DA67FA;
      } else if (mouseX < width/2) {
        petalColor = #FFA000;
      }
    }
  }

  void collision() {
    float d = dist(myFlower1.x, myFlower1.y, myFlower3.x, myFlower3.y);
    //float d2 = dist(myFlower1.x, myFlower1.y, myFlower2.x, myFlower2.y);

    if (d < myFlower1.r + myFlower3.r + 70) {
      petalColor = #000000;
    }// else if (d2 < myFlower1.r + myFlower2.r + 70){
    //background(#03F9FF);
    //}
  }
}
