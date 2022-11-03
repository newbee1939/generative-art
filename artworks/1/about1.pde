void setup() {
  // This creates a window that is 1180 pixels wide and 1200 pixels high
  size(1180, 1200);
}

void draw() {
  // when the mouse button is pressed
  if (mousePressed) {
    // black
    fill(0);
  } else {
    // white
    fill(255);
  }

  // write this before if is also ok
  ellipse(mouseX, mouseY, 80, 80);

  // This line of code means "draw an ellipse, with the center 50 pixels over from the left and 50 pixels down from the top, with a width and height of 80 pixels." 
  // ellipse(50, 50, 80, 80);
}

// article: https://processing.org/tutorials/gettingstarted