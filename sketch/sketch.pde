// https://www.youtube.com/watch?v=WEd_UIKG-uc
// 1 millon de números --> https://www.piday.org/million/
String pi;
int[]  digits;
int index = 0;

void setup(){
  size(900,900);
  pi = loadStrings("pi-1million.txt")[0];
  //println(pi.length());
  String[] sdigits = pi.split("");
  //println(sdigits.length);
  digits = int(sdigits);
  //printArray(digits);
  background(0);
  stroke(255);
  noFill();
  translate(width/2,height/2);
  ellipse(0, 0, 800, 800);

}


void draw() {
  translate(width/2,height/2);
  int digit = digits[index];
  int nextDigit = digits[index+1];
  index++;
  
  float diff = TWO_PI/10;
  float a1 = map(digit,0,10,0,TWO_PI) + random(-diff,diff);
  float a2 = map(nextDigit,0,10,0,TWO_PI) + random(-diff,diff);
  
  float x1 = 400 * cos(a1);
  float y1 = 400 * sin(a1);
  
  float x2 = 400 * cos(a2);
  float y2 = 400 * sin(a2);
  
  stroke(random(255),random(255),random(255));
  line(x1,y1,x2,y2);
 }
  
