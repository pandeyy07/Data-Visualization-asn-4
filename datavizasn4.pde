PImage img;
Table table_jan;
Table table_feb;
Table table_mar;
Table table_apr;
Table table_may;
Table table_jun;
Table table_jul;
Table table_aug;
Table table_sep;
Table table_oct;
Table table_nov;
Table table_dec;
Table table;

int amount = 70;

PVector[] positions_x = new PVector[amount];
PVector[] positions_y = new PVector[amount];
PVector[] positions_z = new PVector[amount];

float[] x = new float[amount];
float[] y = new float[amount];
float[] z = new float[amount];

float[] x_jan = new float[amount];
float[] y_jan = new float[amount];
float[] z_jan = new float[amount];
float[] n_jan = new float[amount];

float[] x_feb = new float[amount];
float[] y_feb = new float[amount];
float[] z_feb = new float[amount];
float[] n_feb = new float[amount];

float[] x_apr = new float[amount];
float[] y_apr = new float[amount];
float[] z_apr = new float[amount];
float[] n_apr = new float[amount];

float[] x_mar = new float[amount];
float[] y_mar = new float[amount];
float[] z_mar = new float[amount];
float[] n_mar = new float[amount];

float[] x_may = new float[amount];
float[] y_may = new float[amount];
float[] z_may = new float[amount];
float[] n_may = new float[amount];

float[] x_jun = new float[amount];
float[] y_jun = new float[amount];
float[] z_jun = new float[amount];
float[] n_jun = new float[amount];

float[] x_jul = new float[amount];
float[] y_jul = new float[amount];
float[] z_jul = new float[amount];
float[] n_jul = new float[amount];

float[] x_aug = new float[amount];
float[] y_aug = new float[amount];
float[] z_aug = new float[amount];
float[] n_aug = new float[amount];

float[] x_sep = new float[amount];
float[] y_sep = new float[amount];
float[] z_sep = new float[amount];
float[] n_sep = new float[amount];

float[] x_oct = new float[amount];
float[] y_oct = new float[amount];
float[] z_oct = new float[amount];
float[] n_oct = new float[amount];

float[] x_nov = new float[amount];
float[] y_nov = new float[amount];
float[] z_nov = new float[amount];
float[] n_nov = new float[amount];

float[] x_dec = new float[amount];
float[] y_dec = new float[amount];
float[] z_dec = new float[amount];
float[] n_dec = new float[amount];

int currentMonth=0;

int stageX = 250;
int stageY = 200;
int stageZ = 120;

PFont fontwo;


void setup() {
  size(1368, 700, P3D);
  fontwo = loadFont("YuGothicUI-Bold-48.vlw"); 

 img = loadImage("bgi.png");
  img.resize(width,height);
  background(img);
  fill(255,100);

  strokeWeight(1);
  smooth();

  loadData();
  writeText();

}


void loadData() {

  table_jan = loadTable("janu.csv", "header");

  int rowCount = 0;
  for (TableRow row : table_jan.rows ()) {

    x_jan[rowCount] = row.getFloat("Max_temp");
    y_jan[rowCount] = row.getFloat("Min_temp");
    z_jan[rowCount] = row.getFloat("Rainfall");
    n_jan[rowCount] = row.getFloat("Year_jan");
    rowCount++;
  }   

  table_feb = loadTable("feb.csv", "header");

  rowCount = 0;
  for (TableRow row : table_feb.rows ()) {

    x_feb[rowCount] = row.getFloat("Max_temp");
    y_feb[rowCount] = row.getFloat("Min_temp");
    z_feb[rowCount] = row.getFloat("Rainfall");
    n_feb[rowCount] = row.getFloat("Year_feb");
    rowCount++;
  }  
  table_mar = loadTable("mar.csv", "header");

  rowCount = 0;
  for (TableRow row : table_mar.rows ()) {

    x_mar[rowCount] = row.getFloat("Max_temp");
    y_mar[rowCount] = row.getFloat("Min_temp");
    z_mar[rowCount] = row.getFloat("Rainfall");
    n_mar[rowCount] = row.getFloat("Year_mar");
    rowCount++;
  } 
  table_apr = loadTable("apr.csv", "header");

  rowCount = 0;
  for (TableRow row : table_apr.rows ()) {

    x_apr[rowCount] = row.getFloat("Max_temp");
    y_apr[rowCount] = row.getFloat("Min_temp");
    z_apr[rowCount] = row.getFloat("Rainfall");
    n_apr[rowCount] = row.getFloat("Year_apr");
    rowCount++;
  } 
  table_may = loadTable("may.csv", "header");

  rowCount = 0;
  for (TableRow row : table_may.rows ()) {

    x_may[rowCount] = row.getFloat("Max_temp");
    y_may[rowCount] = row.getFloat("Min_temp");
    z_may[rowCount] = row.getFloat("Rainfall");
    n_may[rowCount] = row.getFloat("Year_may");
    rowCount++;
  } 
  table_jun = loadTable("jun.csv", "header");

  rowCount = 0;
  for (TableRow row : table_jun.rows ()) {

    x_jun[rowCount] = row.getFloat("Max_temp");
    y_jun[rowCount] = row.getFloat("Min_temp");
    z_jun[rowCount] = row.getFloat("Rainfall");
    n_jun[rowCount] = row.getFloat("Year_jun");
    rowCount++;
  } 
  table_jul = loadTable("jul.csv", "header");

  rowCount = 0;
  for (TableRow row : table_jul.rows ()) {

    x_jul[rowCount] = row.getFloat("Max_temp");
    y_jul[rowCount] = row.getFloat("Min_temp");
    z_jul[rowCount] = row.getFloat("Rainfall");
    n_jul[rowCount] = row.getFloat("Year_jul");
    rowCount++;
  } 
  table_aug = loadTable("aug.csv", "header");

  rowCount = 0;
  for (TableRow row : table_aug.rows ()) {

    x_aug[rowCount] = row.getFloat("Max_temp");
    y_aug[rowCount] = row.getFloat("Min_temp");
    z_aug[rowCount] = row.getFloat("Rainfall");
    n_aug[rowCount] = row.getFloat("Year_aug");
    rowCount++;
  } 
  table_sep = loadTable("sept.csv", "header");

  rowCount = 0;
  for (TableRow row : table_sep.rows ()) {

    x_sep[rowCount] = row.getFloat("Max_temp");
    y_sep[rowCount] = row.getFloat("Min_temp");
    z_sep[rowCount] = row.getFloat("Rainfall");
    n_sep[rowCount] = row.getFloat("Year_sept");
    rowCount++;
  } 
  table_oct = loadTable("oct.csv", "header");

  rowCount = 0;
  for (TableRow row : table_oct.rows ()) {

    x_oct[rowCount] = row.getFloat("Max_temp");
    y_oct[rowCount] = row.getFloat("Min_temp");
    z_oct[rowCount] = row.getFloat("Rainfall");
    n_oct[rowCount] = row.getFloat("Year_oct");
    rowCount++;
  } 
  table_nov = loadTable("nov.csv", "header");

  rowCount = 0;
  for (TableRow row : table_nov.rows ()) {

    x_nov[rowCount] = row.getFloat("Max_temp");
    y_nov[rowCount] = row.getFloat("Min_temp");
    z_nov[rowCount] = row.getFloat("Rainfall");
    n_nov[rowCount] = row.getFloat("Year_nov");
    rowCount++;
  } 
  table_dec = loadTable("dec.csv", "header");

  rowCount = 0;
  for (TableRow row : table_dec.rows ()) {

    x_dec[rowCount] = row.getFloat("Max_temp");
    y_dec[rowCount] = row.getFloat("Min_temp");
    z_dec[rowCount] = row.getFloat("Rainfall");
    n_dec[rowCount] = row.getFloat("Year_dec");
    rowCount++;
  } 
}

void label(color c1, color strokeC, float x, float y, String text) {
  fill(c1, 150);
  stroke(strokeC);
  rect(x, y, 10, 10);
  textSize(15); 
  fill(#FFFFFF, 190);
  textAlign(LEFT, CENTER);
  text(text, x+20, y+3);}

void graphing(int month)
{
 
if(month == 1){
  table = loadTable("janu.csv", "header");}
else if(month == 2){ 
  table = loadTable("feb.csv", "header");}
else if(month == 3){ 
  table = loadTable("mar.csv", "header");}
else if(month == 4){ 
  table = loadTable("apr.csv", "header");}
else if(month == 5){ 
  table = loadTable("may.csv", "header");}
else if(month == 6){ 
  table = loadTable("jun.csv", "header");}
else if(month == 7){ 
  table = loadTable("jul.csv", "header");}
else if(month == 8){ 
  table = loadTable("aug.csv", "header");}
else if(month == 9){ 
  table = loadTable("sept.csv", "header");}
else if(month == 10){ 
  table = loadTable("oct.csv", "header");}
else if(month == 11){ 
  table = loadTable("nov.csv", "header");}
else if(month == 12){ 
  table = loadTable("dec.csv", "header");}

  int rowCount = 0;
  for (TableRow row : table.rows ()) {

    x[rowCount] = row.getFloat("Max_temp");
    y[rowCount] = row.getFloat("Min_temp");
    z[rowCount] = row.getFloat("Rainfall");
    rowCount++;
  }

  float xMin = -5.0;
  float xMax = 25.0;
  float zMin = 0.0;
  float zMax = 1000.0;

  int margin = 48;
  float graphHeight = height/1.2;

  for ( int i = 0; i < amount; i++) {

    float xMap = map (x[i], xMin, xMax, 0, graphHeight);
    float xYPos = height/1.1- margin - xMap;
    float xXPos =  margin*i/2.6 + 55;
    
    float yMap = map (y[i], xMin, xMax, 0, graphHeight);
    float yYPos = height/1.1 - margin - yMap;
    float yXPos =  margin*i/2.6 + 55 ;
    
    float zMap = map (z[i], zMin, zMax, 0, graphHeight);
    float zYPos = height/1.1 - margin - zMap;
    float zXPos =  margin*i/2.6 + 55 ;
    
    
    
    positions_x[i] = new PVector(xXPos, xYPos);
    positions_y[i] = new PVector(yXPos, yYPos);
    positions_z[i] = new PVector(zXPos, zYPos);
  }
  for (int i = 0; i<amount; i++) {
    fill(#FF0009);
    noStroke();
    ellipse(positions_x[i].x, positions_x[i].y, 5, 5); 
    fill(#050BFF);
    ellipse(positions_y[i].x, positions_y[i].y, 5, 5); 
    fill(#ffffff);
    ellipse(positions_z[i].x, positions_z[i].y, 5, 5); 
    stroke(255, 255,255, 200);
    line (positions_x[i].x, positions_x[i].y, positions_z[i].x, positions_z[i].y);
     stroke(255, 255,255, 200);
    line (positions_x[i].x, positions_x[i].y, positions_y[i].x, positions_y[i].y);
    
  }
}
void draw() {
  pushMatrix();
  translate(width/2, height/2);


  rotateY(frameCount/100.0);
  rotateX(frameCount/100.0);


  //box(300);
  for (int i = 0; i<amount; i++) {
    if (currentMonth==1) {
      point(map(x_jan[i], -5, 25, -stageX, stageX), map(y_jan[i], -5, 25, -stageY, stageY), map(z_jan[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==2) {
      point(map(x_feb[i], -5, 25, -stageX, stageX), map(y_feb[i], -5, 25, -stageY, stageY), map(z_feb[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==3) {     
      point(map(x_mar[i], -5, 25, -stageX, stageX), map(y_mar[i], -5, 25, -stageY, stageY), map(z_mar[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==4) {     
      point(map(x_apr[i], -5, 25, -stageX, stageX), map(y_apr[i], -5, 25, -stageY, stageY), map(z_apr[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==5) {     
      point(map(x_may[i], -5, 25, -stageX, stageX), map(y_may[i], -5, 25, -stageY, stageY), map(z_may[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==6) {     
      point(map(x_jun[i], -5, 25, -stageX, stageX), map(y_jun[i], -5, 25, -stageY, stageY), map(z_jun[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==7) {     
      point(map(x_jul[i], -5, 25, -stageX, stageX), map(y_jul[i], -5, 25, -stageY, stageY), map(z_jul[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==8) {     
      point(map(x_aug[i], -5, 25, -stageX, stageX), map(y_aug[i], -5, 25, -stageY, stageY), map(z_aug[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==9) {     
      point(map(x_sep[i], -5, 25, -stageX, stageX), map(y_sep[i], -5, 25, -stageY, stageY), map(z_sep[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==10) {     
      point(map(x_oct[i], -5, 25, -stageX, stageX), map(y_oct[i], -5, 25, -stageY, stageY), map(z_oct[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==11) {     
      point(map(x_nov[i], -5, 25, -stageX, stageX), map(y_nov[i], -5, 25, -stageY, stageY), map(z_nov[i], 0, 1000, -stageZ, stageZ));
    } else if (currentMonth==12) {     
      point(map(x_dec[i], -5, 25, -stageX, stageX), map(y_dec[i], -5, 25, -stageY, stageY), map(z_dec[i], 0, 1000, -stageZ, stageZ));
    }
  }
  popMatrix();
}

void mousePressed() {

  saveFrame("saved-2/"+currentMonth+"-##.png");

}

void keyPressed() {

  writeText();

  if (key == '1') {
    stroke(#0352FA);    
    currentMonth = 1;
  } else if (key == '2') {
    stroke(#0C8AF5);     
    currentMonth = 2;
  } else if (key == '3') {
    stroke(#0CF5DF);     
    currentMonth = 3;
  } else if (key == '4') {
    stroke(#1EF50C);     
    currentMonth = 4;
  } else if (key == '5') {
    stroke(#9FF50C);     
    currentMonth = 5;
  } else if (key == '6') {
    stroke(#F0F50C);    
    currentMonth = 6;
  } else if (key == '7') {
    stroke(#FCD405);     
    currentMonth = 7;
  } else if (key == '8') {
    stroke(#FC9E05);    
    currentMonth = 8;
  } else if (key == '9') {
    stroke(#BEFC05);    
    currentMonth = 9;
  } else if (key == 'a') {
    stroke(#05FC93);     
    currentMonth = 10;
  } else if (key == 'b') {
    stroke(#05A8FC);     
    currentMonth = 11;
  } else if (key == 'c') {
    stroke(#5B05FC);    
    currentMonth = 12;
  }
  else if(key == 'q'){
  graphing(1);
   label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
  textSize(20);
  fill(#FA6108, 300);
    text("January", (width-135), (height/2-250));
    textSize(50);
    text("1", (width-85), (height/2 - 200));
  }
   else if(key == 'w'){
  graphing(2);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
   textSize(20);  
   fill(#FA6108, 300);
    text("February", (width-135), (height/2-250));
    textSize(50);
    text("2", (width-85), (height/2 -200));
  }
   else if(key == 'e'){
  graphing(3);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
  textSize(20);
  fill(#FA6108, 300);
    text("March", (width-135), (height/2-250));
    textSize(50);
    text("3", (width-85), (height/2 -200));
  }
   else if(key == 'r'){
  graphing(4);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
  textSize(20);
  fill(#FA6108, 300);
    text("April", (width-135), (height/2-250));
    textSize(50);
    text("4", (width-85), (height/2- 200));
  }
   else if(key == 't'){
  graphing(5);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
  textSize(20);
  fill(#FA6108, 300);
    text("May", (width-135), (height/2-250));
    textSize(50);
    text("5", (width-85), (height/2 -200));
  }
   else if(key == 'y'){
  graphing(6);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
  textSize(20);
  fill(#FA6108, 300);
    text("June", (width-135), (height/2-250));
    textSize(50);
    text("6", (width-85), (height/2 -200));
  }
   else if(key == 'u'){
  graphing(7);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
   textSize(20);
   fill(#FA6108, 300);
    text("July", (width-135), (height/2-250));
    textSize(50);
    text("7", (width-85), (height/2 -200));
  }
   else if(key == 'i'){
  graphing(8);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
   textSize(20);
   fill(#FA6108, 300);
    text("August", (width-135), (height/2-250));
    textSize(50);
    text("8", (width-85), (height/2 -200));
  }
   else if(key == 'o'){
  graphing(9);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
   textSize(20);
   fill(#FA6108, 300);
    text("September", (width-140), (height/2-250));
    textSize(50);
    text("9", (width-85), (height/2 -200));
  }
   else if(key == 'p'){
  graphing(10);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
  textSize(20);
  fill(#FA6108, 300);
    text("October", (width-135), (height/2-250));
    textSize(50);
    text("10", (width-85), (height/2 + 200));
  }
   else if(key == 'z'){
  graphing(11);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
  textSize(20);
  fill(#FA6108, 300);
    text("November", (width-140), (height/2-250));
    textSize(60);
    text("11", (width-85), (height/2 -200));
  }
   else if(key == 'x'){
  graphing(12);
  label(#FF0009, #FF0009, width/2 + 200, height/2 + 250, "MaxTemp");
  label(#050BFF, #050BFF, width/2 + 200, height/2 + 270, "MinTemp");
  label(#ffffff, #ffffff, width/2 + 200, height/2 + 290, "Rainfall");
   textSize(20);
   fill(#FA6108, 300);
    text("December", (width-140), (height/2-250));
    textSize(50);
    text("12", (width-85), (height/2 -200));
  }
}

void writeText() {

  background(img);
  fill(255,100);

  if (key == '1') {  
    currentMonth = 1;
    textSize(20);
    fill(#FA6108, 300);
    text("January", (width-135), (height/2));
    textSize(50);
    text("1", (width-85), (height/2 + 80));
  } else if (key == '2') {  
    textSize(20);
    fill(#FA6108, 300);
    text("February", (width-135), (height/2));
    textSize(50);
    text("2", (width-85), (height/2 + 80));
  } else if (key == '3') {
    textSize(20);
    fill(#FA6108, 300);
    text("March", (width-135), (height/2));
    textSize(50);
    text("3", (width-85), (height/2 + 80));
  } else if (key == '4') {
    textSize(20);
    fill(#FA6108, 300);
    text("April", (width-135), (height/2));
    textSize(50);
    text("4", (width-85), (height/2 + 80));
  } else if (key == '5') {
    textSize(20);
    fill(#FA6108, 300);
    text("May", (width-135), (height/2));
    textSize(50);
    text("5", (width-85), (height/2 + 80));
  } else if (key == '6') {
    textSize(20);
    fill(#FA6108, 300);
    text("June", (width-135), (height/2));
    textSize(50);
    text("6", (width-85), (height/2 + 80));
  } else if (key == '7') {
    textSize(20);
    fill(#FA6108, 300);
    text("July", (width-135), (height/2));
    textSize(50);
    text("7", (width-85), (height/2 + 80));
  } else if (key == '8') {
    textSize(20);
    fill(#FA6108, 300);
    text("August", (width-135), (height/2));
    textSize(50);
    text("8", (width-85), (height/2 + 80));
  } else if (key == '9') {
    textSize(20);
    fill(#FA6108, 300);
    text("September", (width-140), (height/2));
    textSize(50);
    text("9", (width-85), (height/2 + 80));
  } else if (key == 'a') {
    textSize(20);
    fill(#FA6108, 300);
    text("October", (width-135), (height/2));
    textSize(50);
    text("10", (width-85), (height/2 + 80));
  } else if (key == 'b') {
    textSize(20);
    fill(#FA6108, 300);
    text("November", (width-140), (height/2));
    textSize(60);
    text("11", (width-85), (height/2 + 80));
  } else if (key == 'c') {
    textSize(20);
    fill(#FA6108, 300);
    text("December", (width-140), (height/2));
    textSize(50);
    text("12", (width-85), (height/2 + 80));
  }
 textFont(fontwo, 18);
  fill(#000000);
  text(":", 0.1, (height/2+245));
  

  textFont(fontwo, 18);
  fill(#FA6108, 300);
  text("Press 1(Jan) to 9 and a,b,c(Dec) to watch 3D weather visualisation of different months",40, (height/2+250));
   textFont(fontwo, 18);
  fill( #FA6108, 300);
  text("Press q(Jan),w,e,r,t,y,u,i,o and p and z,x(Dec) to watch weather graph visualisation of different months",40, (height/2+270));
   textFont(fontwo, 28);
  fill(#FA6108, 300);
  text("3D and Grapical visualisation of the Weather(1949-2018) in Dublin",(width/4-90), (height/2-300));
  
  textFont(fontwo, 18);
  fill(#FA6108, 300);
  text("Click frame to save", 40, (height/2 + 290));
}
