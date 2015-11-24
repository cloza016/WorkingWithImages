//declare variables
PImage pusheen;
PImage kittens;

void setup(){
size(800,600);  //set size of screen

//initialize variables
pusheen=loadImage("pusheen.jpg");
kittens=loadImage("kittens2.jpg");

pusheen.mask(kittens);  //mask the pusheen image
}

void draw(){

background(map(mouseY,0,height,0,255));  //draw a background

image(pusheen,mouseX,mouseY);  //display the image

}