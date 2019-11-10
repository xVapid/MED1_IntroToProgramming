class Trail {
  int repeats = 200;
  
  void t(){
     int[] Tx = new int[repeats];  //Stores the position of the cursors X coordination
     int[] Ty = new int[repeats];  //Stores the position of the cursors Y coordination
      
     noStroke();
     fill(143,64,234,102);//Colour and opacity of the object

     
     //Shifts the values of the array to the right 
     for (int i = repeats-1; i > 0; i--){
        Tx[i] = Tx[i-1];
        Ty[i] = Ty[i-1];
     }
     
     //The newest value is added to the beginning
     Tx[0] = mouseX;
     Ty[0] = mouseY;
     
     //Draw the circles
     for(int i = 0; i < repeats; i++){
       ellipse(Tx[i], Ty[i], i/2, i/2);
     }
     
  }
}
