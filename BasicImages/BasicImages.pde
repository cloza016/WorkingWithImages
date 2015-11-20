//sketch->add file: select file to add to data folder
//control+k is shortcut to access data folder

//declare variables
PImage pusheen;
float scaleFactor = .1;
PVector loc, vel; 

void setup(){
size(600,800);  //set size of screen
noCursor();  //rid of cursor

//initialize variables
pusheen=loadImage("Pusheen.jpg");
loc = new PVector(width/2, height/2);
vel = PVector.random2D();
}

void draw(){
background(255, 242, 204);  //set background color
image(pusheen,mouseX,mouseY,pusheen.width*scaleFactor,pusheen.height*scaleFactor);  //display image

//move the image around
  loc.add(vel);
  if (loc.x > width) {
    loc.x = 0;
  } else if (loc.x < 0) {
    loc.x = width;
  }
  if (loc.y > height) {
    loc.y = 0;
  } else if (loc.y < 0) {
    loc.y = height;
  }
}

void keyPressed(){
  
if(keyCode==UP){
  scaleFactor+=.01;
    }else if(keyCode==DOWN&&scaleFactor>.2){
      scaleFactor-=.1;
    }
}