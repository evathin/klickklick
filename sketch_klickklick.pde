String [] names = {"keine steigenden Mieten","und","Freiraum","Ich will",
"in einer gemeinschaftlichen Gesellschaft","ohne Angst","in der Natur",
"ich wünsche mir, dass","da sollen Tiere sein","selbstbestimmt",
"in Wägen", "in Höhlen", "in Wohnungen", "ohne viel Geld", "in Häusern",
"leben","wohnen", "zusammen", "frei", "ohne Kackscheiße","in der Stadt",
"ohne Raufasertapete", "mit viel Licht", "ohne Müll in den Ecken",
"mit Tieren", "mit vielen Menschen", "ruhig", "laut und bunt", "mit",
"mit der Möglichkeit zum ungestörten Rückzug", "auf einem Baum",
"zu Verdienst angemessenen Preisen", "beste City-Lage", "weit draußen",
"im Haus vom Nikolaus", "in einem teilsanierten Altbau", "zentrumsnah",
"mit sicherem Nachhauseweg", "umgeben von freundlichen Menschen", "Utopie",
"Heizung wäre toll", "ohne Ratten", "viel Platz", "im Schloss", "aus Keksen",
"Wohnraum ist gleich Lebensraum", "Gemeinschaftsküche", "Türen ohne Abschließen",
"ein kleiner Garten wäre nett", "günstig", "preiswert", "im Osten", "auf dem Bauernhof",
"geilo"};

String textHolder = "Wie willst du wohnen?"; //First Text displayed

float yPosition;
float xPosition = 0;
float ySpeed = 0.1;
float xSpeed = 0.1;


///////////////////////////////////////////
void setup() {
  size(900,600);
  smooth();
  noStroke();
  PFont myFont;
  myFont = loadFont("UniversCE-Medium-32.vlw");
  textFont(myFont, 32);
  textAlign(CENTER);
  
  yPosition = height/2;
  
}



/////////////////////////////////////
void draw (){
  background (255,80,15);
  text(textHolder,xPosition,yPosition);
  
  for(int i=0; i< names.length; i++){ // int = whole nrs, geht alle names durch
    
    if(xPosition>width){
     xSpeed= -0.05;
   }
     if(xPosition<0){
     xSpeed= 0.05;
   } 
     
  xPosition += xSpeed;
} // value of xPosition grows by 2 every frame  

 }



/////////////////////////////////////
void mousePressed(){
  textHolder = names[int(random(names.length))];
}
