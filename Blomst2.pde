int r = 60;
int xSpeed = 3;
int ySpeed = 3;
int xDirection = 2;
int yDirection = 2;

float ballX;
float ballY;
float FlowerCenterX = 300;
float FlowerCenterY = 200;


void setup() {
  size(800, 600);
}

void draw() {
  background(#1B7C21);
  flower(ballX, ballY);
}

void flower(float x, float y) {
  fill(200,0,255);
  for (float i = 0; i<PI*2; i = i + 2*PI/7) {
    float ballX = FlowerCenterX + r*cos(i);
    float ballY = FlowerCenterY + r*sin(i);
    ellipse(ballX, ballY, r, r);
  }
  fill(255, 0, 0);

  //Make it bounce off of the "walls"
  ellipse(FlowerCenterX, FlowerCenterY, r*1.2, r*1.2);
  FlowerCenterX = FlowerCenterX + (xSpeed * xDirection);
  FlowerCenterY = FlowerCenterY + (ySpeed * yDirection);

  if (FlowerCenterX > width - r/2|| FlowerCenterX < r/2) {
    xDirection *= -1;
  }
  if (FlowerCenterY > height - r/2|| FlowerCenterY < r/2) {
    yDirection *= -1;
  }
}
