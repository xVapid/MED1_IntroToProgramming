int repeats = 50;
int[] x = new int[repeats]; //Stores the position of the X value
int[] y = new int[repeats]; //Stores the position of the Y value

int[] x1 = new int[repeats]; //Stores the position of the X value
int[] y1 = new int[repeats]; //Stores the position of the Y value

int startPosition = 0;

int rectX = 600;
int rectY = 400;
int speed = -5;

void setup(){
size(1200,800);
}

void draw(){
  background(0);
  
//Linear Buffer Array Trail
  //Shifts the values of the array to the right
  for(int i = repeats-1; i > 0; i--){
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  
  rectX = rectX + speed;
  
  if(rectX > width - repeats || rectX < 0){
    speed = speed*-1;
  }
  
  x[0] = rectX;
  y[0] = rectY;
  
  
  //Draw the squares
  for(int i = 0; i < repeats; i = i + 1){
    noStroke();
    fill(255,0,0, 102); //Colors the object
    ellipse(x[i], y[i]+25, i, i);
  }
  
    fill(0,0,255);
    stroke(255);
    rect(rectX, rectY, 50,50);
    
    
  
//Circular Buffer Array Trail
  x1[startPosition] = mouseX;
  y1[startPosition] = mouseY;
  
  //Cycle between 0 and the number of elements which is 50 in this case
    startPosition = (startPosition + 1) % repeats;
    for(int i = 0; i < repeats; i++){
      noStroke();
      
      // Set the array position to read
        int pos = (startPosition + i) % repeats;
        float radius = (repeats - i)/2.0;
        
        fill(0,255,0);
        rect(x1[pos], y1[pos], radius, radius);
        
        fill(255,0,0);
        rect(x1[pos] + 30, y1[pos], radius, radius);
        
        fill(0,0,255);
        rect(x1[pos] - 30, y1[pos], radius, radius);
    }

    




}
