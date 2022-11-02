// The Wave class

class Wave{
  
 int xspacing;
 int w;
 float theta;
 float amplitude; 
 float period;
 float dx;
 float[]yvalues;
 
  void initWave(int spacing, float t, float a, float p){
    xspacing = spacing;   // How far apart should each horizontal location be spaced
    theta = t;  // Start angle at 0
    amplitude = a;  // Height of wave
    period = p;  // How many pixels before the wave repeats
    w = width + 16;
    dx = (TWO_PI / period) * xspacing;
    yvalues = new float[w/xspacing];
  }
  
  void calcWave(float t) {
    // Increment theta (try different values for 'angular velocity' here
    theta += t;
  
    // For every x value, calculate a y value with sine function
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      yvalues[i] = sin(x)*amplitude;
      x+=dx;
    }
  }
  
  void renderWave() {
    noStroke();
    fill(255);
    // A simple way to draw the wave with an ellipse at each location
    for (int x = 0; x < yvalues.length; x++) {
      //fill(random(0, 300));
      ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
    }
  }
  
}
