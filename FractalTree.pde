private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640, 480);    
  noLoop();
} 
public void draw() 
{   
  background(0);   
  fill  (104,104,104);
   ellipse(320,240,500,500);
  stroke(0, 255, 0);      
  drawBranches(390,450,50,3*Math.PI/2); 
  drawBranches(480,270,80,3*Math.PI/2); 
  drawBranches(180,220,40,3*Math.PI/2); 
  drawBranches(140,400,50,3*Math.PI/2); 
 
  
} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1, angle2;
  angle1 =angle + branchAngle;
  angle2 =angle - branchAngle;
  branchLength= branchLength*fractionLength;
  
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
int endY1 = (int)(branchLength*Math.sin(angle1) + y);
 int endX2 = (int)(branchLength*Math.cos(angle2) + x);
int endY2= (int)(branchLength*Math.sin(angle2) + y);
line(x,y,endX1,endY1);
line(x,y,endX2,endY2);
if(branchLength>smallestBranch){
  drawBranches(endX1,endY1,branchLength-.1,angle1+Math.PI/12);
  drawBranches(endX2,endY2,branchLength-.1,angle2-Math.PI/12);
}

} 

