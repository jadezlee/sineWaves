
Wave wave = new Wave();
Wave w2 = new Wave();
Wave w3 = new Wave();

void setup() {
  size(1280, 720);
  wave.initWave(16, 0.0, 30.0, 300.0);
  w2.initWave(20, 0.0, 50.0, 299.0);
  w3.initWave(16, 0.0, 80.0, 300.0);

}

void draw() {
  background(0);
  wave.calcWave(0.1);
  wave.renderWave();
  
  w2.calcWave(0.05);
  w2.renderWave();
  
  w3.calcWave(0.025);
  w3.renderWave();
 
}
