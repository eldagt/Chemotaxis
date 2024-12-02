class Bacteria {
  int myX, myY, myColor;

  // Constructor to initialize position and color
  Bacteria() {
    myX = 250;  // Initial X position
    myY = 250;  // Initial Y position
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));  // Random color
  }

  // move() method to move the bacteria in a random walk pattern
  void move() {
    // Random movement in the X and Y directions (step size increased)
    myX += (int)(Math.random() * 7) - 3;  // Random step between -3 and 3
    myY += (int)(Math.random() * 7) - 3;  // Random step between -3 and 3

    // Keep the bacteria inside the window
    if (myX < 0) myX = 0;
    if (myX > width) myX = width;
    if (myY < 0) myY = 0;
    if (myY > height) myY = height;
  }

  // show() method to display the bacteria at its current position with its color
  void show() {
    fill(myColor);  // Set the fill color
    ellipse(myX, myY, 30, 30);  // Draw a circle with a diameter of 30
  }
}

// Array to hold many instances of Bacteria
Bacteria[] bobs;

void setup() {
  size(500, 500);  // Set the window size
  bobs = new Bacteria[200];  // Create an array to hold 200 bacteria

  // Initialize each bacteria in the array
  for (int i = 0; i < bobs.length; i++) {
    bobs[i] = new Bacteria();  // Create a new Bacteria object
  }
}

void draw() {
  background(0);  // Clear the screen with a black background

  // Move and display each bacteria
  for (int i = 0; i < bobs.length; i++) {
    bobs[i].move();  // Move the bacteria
    bobs[i].show();  // Draw the bacteria
  }
}
