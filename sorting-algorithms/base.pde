int width = 1080;
int height = 720;
int numberOfNumbers = 125;
int[] randomNumbers = new int[numberOfNumbers]; 

void settings() {
  size(width, height);
}

void setup() {
  background(0);
  for(int i = 0; i < numberOfNumbers; i++) {
    randomNumbers[i] = int(random(0, height));
  }
}

void draw() {
  float rectWidth = (float)width / numberOfNumbers;
  for(int i = 0; i < numberOfNumbers; i++) {
    rect(i * rectWidth, height - randomNumbers[i], rectWidth, randomNumbers[i]);
  }
}
