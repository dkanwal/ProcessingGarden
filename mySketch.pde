
void setup() {
	// Initializes the canvas size.
	size(1000, 1000, P3D);
	
	// Sets background color to Brown in order to represent soil.
	background (200, 157, 124);
}

void draw() {
	if (keyPressed) {
		// 's' key creates a stem to a flower wherever the user's mouse is.
		if (key == 's'){
			theStem = new Stem(this, mouseX, mouseY);
			theStem.display();
		}
		// The 'p' key creates a flower petal wherever the user's mouse is.
		if (key == 'p'){
			thePetal = new Petal(this, mouseX, mouseY);
			thePetal.display();
		}
		// The 'g' key creates a blade of grass wherever the user's mouse is. 
		if (key == 'g'){
			theGrass = new Grass(this, mouseX, mouseY);
			theGrass.display();
		}
		// The 't' key creates a tree trunk wherever the user's mouse is. 
		if (key == 't'){
			theTrunk = new Trunk(this, mouseX, mouseY);
			theTrunk.display();
		}	
		// The 'l' key creates a circular bunch of leaves for a tree trunk.
		if (key == 'l'){
			theLeaves = new Leaves(this, mouseX, mouseY);
			theLeaves.display();
		}	
	}
}

class Stem {
	// Position of stem
	private float x;
	private float y;
	
	// Size of stem.
	private float size;
	
	// Store a reference to the canvas. 
	private PApplet canvas;
	
	Stem(PApplet canvas, float x, float y) {
		// Store a reference to the canvas.
		this.canvas = canvas;
		
		// Store locations x and y.
		this.x = x;
		this.y = y;
		
		// Sets the fixed size of the stem.
		size = 50;
	}	
	
	void display() {
		// Specifies a dark green color for the stem.
		this.canvas.stroke(0, 150, 0);
		
		// Draws a line to represent a Stem.
		this.canvas.line(x, y, x, y+size);
	}	
}

class Petal {
	// Position of the petal. 
	private float x;
	private float y;
	
	// Size of petal.
	private float size;
	
	// How much red, green, and blue this petal has. 
	private float myRed;
	private float myGreen;
	private float myBlue;
	
	// Store a reference to the canvas.
	private PApplet canvas;
	
	Petal(PApplet canvas, float x, float y) {
		// Store a reference to the canvas.
		this.canvas = canvas;
		
		// Store locations x and y.
		this.x = x;
		this.y = y;
		
		// Set the size of the petal.
		size = 10;
		
		// Randomize the color of the petal.
		myRed = this.canvas.random(0,255);
		myGreen = this.canvas.random(0, 255);
		myBlue = this.canvas.random(0, 255);
	}
	void display() {
		// Specifies no outline for the petal.
		this.canvas.noStroke();
		
		// Specifies the fill color for the petal.
		this.canvas.fill(myRed, myGreen, myBlue);
		
		//Draws an ellipse to represent a petal.
		this.canvas.ellipse(x, y, size, size);
	}
}

class Grass {
	// Position of the grass.
	private float x;
	private float y;
	
	// Size of a blade of grass.
	private float size;
	
	// Store a reference to the canvas. 
	private PApplet canvas;
	
	Grass(PApplet canvas, float x, float y) {
		// Store a reference to the canvas.
		this.canvas = canvas;
		
		// Store locations x and y.
		this.x = x;
		this.y = y;
		
		// Sets the fixed size of the blade of grass.
		size = 10;
	}	
	
	void display() {
		// Specifies a light green color for the blad of grass.
		this.canvas.stroke(0, 300, 0);
		
		// Draws a line to represent a blade of grass.
		this.canvas.line(x, y, x, y+size);
	}	
}

class Trunk {
	// Posiiton of tree trunk.
	private float x;
	private float y;
	
	//Size of tree trunk (rectangle).
	private float width;
	private float height;
	
	// Red, green, and blue allocations.
	private float myRed;
	private float myGreen;
	private float myBlue;
	
	// Store a reference to the canvas.
	private PApplet canvas;
	
	Trunk(PApplet canvas, float x, float y) {
		// Store a reference to the canvas.
		this.canvas = canvas;
		
		// Store x and y.
		this.x = x;
		this.y = y;
		
		// Set the size of the tree trunk.
		width = 50;
		height = 200;
		
		// Set red, green, and blue to create a dark brown for the trunk.
		myRed = 150;
		myGreen = 75;
		myBlue = 0;
	}	
	
	void display() {
		// This method specifies that the trunk will have no outline.
		this.canvas.noStroke();
		
		// Specifies the dark brown fill color for the trunk.
		this.canvas.fill(myRed, myGreen, myBlue);
		
		// Draws a rectangle on the canvas to represent the tree trunk.
		this.canvas.rect(x, y, width, height);
	}	
}

class Leaves {
	// Position of the leaves. 
	private float x;
	private float y;
	
	// Size of bunch.
	private float size;
	
	// Color allocations to acheive a darker green. 
	private float myRed;
	private float myGreen;
	private float myBlue;
	
	// Store a reference to the canvas.
	private PApplet canvas;
	
	Leaves(PApplet canvas, float x, float y) {
		// Store a reference to the canvas.
		this.canvas = canvas;
		
		// Store locations x and y.
		this.x = x;
		this.y = y;
		
		// Set the size of the bunch.
		size = 50;
		
		// Randomize the color of the petal.
		myRed = 0;
		myGreen = 150;
		myBlue = 0;
	}
	void display() {
		// Specifies no outline for the leaves.
		this.canvas.noStroke();
		
		// Specifies the green fill color for the leaves.
		this.canvas.fill(myRed, myGreen, myBlue);
		
		//Draws an ellipse to represent a bunch of leaves. 
		this.canvas.ellipse(x, y, size, size);
	}
}
