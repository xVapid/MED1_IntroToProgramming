Flower myFlower1;
Flower myFlower2;  
Flower myFlower3;

boolean colour = false;

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
  myFlower3 = new Flower(_r3, _petals, _x, _y-offset, pc, 7);
}

void draw() {
  background(#43AF76);

  myFlower1.display();
  myFlower1.move(/*2*/);  
  myFlower1.bounce();
  myFlower1.mouseDragged();
  myFlower1.collision();
  
  
  myFlower2.display();
  myFlower2.move(/*5*/);
  myFlower2.bounce();
  
  myFlower3.display();
  myFlower3.move(/*7*/);
  myFlower3.bounce();
  
  
}
