Flower myFlower1;
Flower myFlower2;  
Flower myFlower3;
Trail myTrail;


void setup() {
  size(1200, 800);

  int _r1= 60;
  int _r2 = 80;
  int _r3 = 100;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc = #FFA000;
  int pc = #3F24DE;
  int offset = 250;

  
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, 2); 
  myFlower2 = new Flower(_r2, _petals, _x+random(-300, 300), _y+offset, _pc, 5);
  myFlower3 = new Flower(_r3, _petals, _x, _y-offset, pc, 5);
  myTrail = new Trail();
}

void draw() {
  background(#43AF76);

  myTrail.t(); //Draws the trail
  
  myFlower1.display();    //Displays the little flower in the middle
  myFlower1.move(/*2*/);  //Calls the functinon move from the class flower which makes it move
  myFlower1.bounce();     //Makes it bounce of the borders
  myFlower1.mouseDragged(); //Enables it to be dragged when clicked on
  myFlower1.collision();    //Calls the collision function from the class flower
  
  //Same happens here as with Flower1
  //myFlower2.display();
  //myFlower2.move(/*5*/);
  //myFlower2.bounce();
  
  //Same happens here as with Flower1&2
  myFlower3.display();
  myFlower3.move(/*7*/);
  myFlower3.bounce();
  
  
}
