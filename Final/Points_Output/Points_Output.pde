import peasy.*;  // To import the Peasy Package

PeasyCam cam;  //PeasyCam Object
float x=0.01;
float y=0;
float z=0;

float alpha=10;
float beta=28;
float gamma=8.0/3.0;

ArrayList<PVector> point = new ArrayList<PVector>();  // ArrayList of PVector objects to store the position vectors of the points to be plotted. 

void setup()
{
  size(800,500,OPENGL);  //Creating the Window for Output using OPENGL as renderer
  cam=new PeasyCam(this,500);  //Initailizes the Cam Object
}

void draw()
{
  background(0);  //To turn the background of Output Window to black i.e 0
  
  float dt=0.01;  // Implementing the Differential Equation
  float dx=(alpha*(y-x))*dt;
  float dy=(x*(beta-z)-y)*dt;
  float dz=(x*y-gamma*z)*dt;
  x +=dx;
  y +=dy;
  z +=dz;
  
  println(x,y,z);
  point.add(new PVector(x,y,z));  //Storing the point vector generated in Arraylist
  
  //translate(width/2,height/2);  //to plot the image to the center of the canvas
  stroke(255);  //The plotting dots turn white i.e 255
  scale(5);  //To enlarge the image by 5 times
  
  for(PVector v:point)
  {
    point(v.x,v.y,v.z);
  }
}
