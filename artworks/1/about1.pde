void setup() {
  size(1180, 1200);
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

// article: https://processing.org/tutorials/gettingstarted