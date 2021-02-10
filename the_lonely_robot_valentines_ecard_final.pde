import javax.swing.*; //imports java swing functions to allow use of JOptionPane Functions.

void setup() { //calls setup.
  size(500, 700); //Created 500X700 Display - Rectangular Shape for Basic Card Design.
  noStroke(); //Removed overall Stroke for Display. Relevant Strokes were added in their respective functions.
  background(247, 200, 212); //Added Soft Pink Background as eCard Background.

  /* Used JOption Pane Yes/No Option Dialog Box to ask User a Yes/No Question.
   If User inputs No a Goodbye Dialog Box appears and the Display exits.
   If User inputs Yes a Thank You Dialog Box appears and the Display opens. */

  int givePower = JOptionPane.showConfirmDialog(null, "Frankie is a lonely little robot.\nHe runs on Love, but with no one to love him he has lost Power.\n\nWill you give Frankie the Power of Love?", "Meet Frankie", JOptionPane.YES_NO_OPTION); //Initial Dialog Box that appears on running Display. User is presented with a Message and a Question. User has choice of Yes/No. 
  if (givePower == JOptionPane.YES_OPTION) {
    JOptionPane.showMessageDialog(null, "You've brought Frankie back to life. Time to meet your new best friend."); //If User inputs Yes a Thank You Dialog Box appears with this Message and then the Display Opens.
    println("Thank you for saving Frankie!"); //If User presses Yes this Message will display in the Console.
  } else if (givePower == JOptionPane.NO_OPTION) {
    JOptionPane.showMessageDialog(null, "Frankie has no Power. Frankie will sleep until someone loves him again."); //If User inputs No a Goodbye Dialog Box appears with this Message.
    println("Frankie is still sleeping..."); //If User presses No this Message will display in the Console
    exit(); //If User presses No after a Goodbye Dialog Box appears the Display will exit.
  }
}

void draw() { //Calls Draw Method.

  /* Used a mixture of rect() and ellipse() Functions to create small Robot named Frankie.
   Used Rounded Corner rect() Functions for Frankie's Head & Body.
   Added single Hard Corner rect() function for Frankie's Left Button.
   Added a Stroke with Width of 3 to create Shapes.
   Added ellipse() functions for Frankie's Eyes and Right Buttons.
   Added Colour Fill of Light Silvery Grey to colour Frankie's Head & Body.
   Added Light Blue Colour Fill to colour Frankie's Eyes.
   Added Red, Green and Yellow Colour Fills to create Frankie's Buttons. */

  fill(207); // head & body colour grey
  stroke(0);
  strokeWeight(3);
  rect(150, 300, 200, 100, 15); //head
  rect(240, 400, 20, 20, 3); //neck
  rect(190, 420, 120, 120, 15); //torso

  //used For Loop and Bespoke Method drawLimb to create Legs

  for (int i=540; i<=600; i++) {
    drawLimb(210, i, 30, 20, 3); //left leg
    drawLimb(260, i, 30, 20, 3); //right leg
    i=i+20;
  }

  rect(190, 600, 50, 20, 3); //left foot
  rect(260, 600, 50, 20, 3); //right foot

  //used Bespoke Method drawEye inside a While Loop to create Robot's Eyes.

  int xCoord=200;
  int i=0;
  while (i<2)
  {
    drawEye(xCoord);
    xCoord+=100;
    i++;
  } 

  fill(255); //smile colour white
  arc(250, 380, 20, 20, 0, PI, CHORD); //Frankie's smile

  fill(255, 0, 0); //left button colour red
  rect(200, 435, 30, 10); //left button just for decoration
  fill(0, 255, 0); //right button colour green
  ellipse(270, 440, 10, 10); //right button 1 right-clickable for Arm Raise, Input Box & Heart-Shaped Box with Input Text Displayed
  fill(248, 244, 17); //right button 2 colour yellow
  ellipse(290, 440, 10, 10); //right button 2 left-clickable for Arm Raise

  /* Used Nested If Statement to process Mouse Click Commands.
   If Left Mouse is clicked on the Yellow Button, Frankie's Left Arm (Stage Left) will rise.
   He will be holding a Daisy.
   If Right Mouse is clicked on the Green Button, Frankie's Right Arm (Stage Right) will rise.
   He will be holding a Heart-Shaped Box.
   If neither Mouse Button is pressed, Frankie's Arms will rest at his sides. */

  if (mousePressed == true) { //calls mousePressed Function.
    if ((mouseButton == LEFT) && (mouseX <= 295) && (mouseX >= 285) && (mouseY <= 445) && (mouseY >= 435)) { //calls mousePressed Left Click Function for particular range of X/Y Coordinates.
      noStroke();
      fill(247, 200, 212);
      rect(98, 420, 90, 40);
      rect(60, 350, 89, 120);
      rect(134, 440, 30, 100);
      rect(311, 440, 30, 100); //Creates Series of Rectangles that blend into Background to remove previously placed Arms.
      stroke(0);
      drawFlower(); //calls drawFlower Bespoke Method creating raised Arm holding Daisy
      for (int a=460; a<=520; a++) {
        drawLimb(165, a, 25, 20, 3);
        a=a+20; //Other Arm will be rewritten to ensure it remains in the correct spot while Left Mouse Button is clicked.
      }
    } else if ((mouseButton == RIGHT) && (mouseX >= 265) && (mouseX <= 275) && (mouseY >= 435) && (mouseY <= 445)) { //calls mousePressed Left Click Function for particular range of X/Y Coordinates.
      noStroke();
      fill(247, 200, 212);
      rect(159, 440, 30, 100); //Creates blended in Rectangle to remove original Arm
      stroke(0);
      drawHeart(); //calls drawHeart Bespoke Method which triggers Input Dialog Box requesting User's Name. Once User enters Name, 
      for (int a=460; a<=520; a++) {
        drawLimb(310, a, 25, 20, 3);
        a=a+20; //Other Arm will be rewritten to ensure it remains in the correct spot while Arm is raised.
      }
    }
  } else if (mousePressed == false) {
    noStroke();
    fill(247, 200, 212);
    rect(98, 420, 90, 40);
    rect(60, 350, 89, 120);
    rect(134, 440, 30, 100);
    rect(312, 405, 100, 60);
    rect(355, 355, 60, 120); //Adds a Series of blended in Rectangles to remove raised Left/Right Arm and Flower/Heart Box.
    stroke(0);
    for (int a=440; a<=520; a++) {
      drawLimb(165, a, 25, 20, 3);
      drawLimb(310, a, 25, 20, 3);
      a=a+20; //Both Arms will be drswn held at Frankie's sides.
    }
  }

  /* If User presses 'Space Bar' a Speech Bubble will appear saying "Happy Valentine's Day!!!".
   If User releases 'Space Bar' the Speech Bubble will be removed.
   If User presses 'B' Key, it will lower the Robot's Right Arm (stage Right) and return it to his side. */

  if (keyPressed) { //calls keyPressed Command.
    if (key == ' ') { //specifies keyPressed as 'Space Bar'.
      speechBubble(400.0, 600.0, 110.0, 100.0); //calls Bespoke Method speechBubble which draws Speech Bubble saying "Happy Valentine's Day!!!" to Lower Right Corner of Display.
    } else if (key == 'b') { //specifies keyPressed as lowercase letter 'b'
      noStroke();
      fill(247, 200, 212);
      rect(98, 420, 90, 40);
      rect(60, 350, 89, 120);
      rect(134, 440, 30, 100);
      rect(312, 405, 100, 60);
      rect(355, 355, 60, 120); //Adds a series of Rectangles to remove raised Left/Right Arm and Flower/Heart Box.
      stroke(0);
      for (int a=440; a<=520; a++) {
        drawLimb(165, a, 25, 20, 3);
        drawLimb(310, a, 25, 20, 3);
        a=a+20; //Redraws both Arms held at Frankie's sides.
      }
    }
  } else {
    noStroke();
    fill(247, 200, 212);
    ellipse(400, 600, 140, 120); //Creates blended in Oval to remove speechBubble when Spacebar released.
    stroke(0);
  }

  /* Used Combination of Nested If Statements and Nested For Loops.
   If User clicks the Left or Right Mouse Button inside a range of X/Y Coordinates, a Series of 3 Red Circles with Black Outlines will appear.
   The Circles will run in a Top Left to Middle Right Direction.
   The Circles will have the Text "I", "Love" and "You" inside them, with 1 word per respective Circle.
   If the clicked Mouse Button is released, a Series of 3 slightly larger Circles with the same Colour as the Background and no Outlinenwill appear to remove the Red Circles. */

  if (mousePressed == true) { //calls mousePressed Function
    if (((mouseButton == LEFT) || (mouseButton == RIGHT)) && ((mouseX >=240) && (mouseX <= 260)) && ((mouseY >= 380) && (mouseY <= 390))) { //Specifies Mouse Button Pressed can be either Left or Right Mouse Button in a Range of X/Y Coordinates.
      for (int k = 100; k <= 410; k ++) {
        for (int d = 70; d <= 300; d ++) {
          stroke(0);
          strokeWeight(1);
          fill(255, 50, 50);
          ellipse(k, d, 100, 100);
          k+=150;
          d+=100; //Used Nested For Loop to create Series of 3 Circles running Diagonally from Top Left to Middle Right of Display.
        }
      }
      textSize(32); //Specifies Text Size.
      textAlign(CENTER); //Specifies Text Alignment - Center.
      fill(255); //Text Colour White.
      text("I", 100, 75); //Text "I" for Circle 1.
      text("Love", 250, 175); //Text "Love" for Circle 2.
      text("You", 400, 275); //Text "You" for Circle 3.
    }
  } else {
    noStroke();
    fill(247, 200, 212);
    for (int o = 100; o <= 410; o ++) {
      for (int p = 70; p <= 300; p ++) {
        ellipse(o, p, 120, 120);
        o+=150;
        p+=100; //Used Nested For Loop to create Series of 3 Blended-In Circles running Diagonally from Top Left to Middle Right of Display to remove "I Love You" Circles when Mouse Click is released.
      }
    }
  }
}

/* Created Bespoke Method with 5 Parameters to create a Grey Square.
 Utilised this Method inside For Loops to create Frankie's Arms & Legs in various positions. */

void drawLimb(int xCoord, int yCoord, int length, int heighth, int radius) { // Sets drawLimb Bespoke Method & specifies 5 Parameters.
  strokeWeight(3);
  fill(207); //Frankie's Body Colour Grey
  rect(xCoord, yCoord, length, heighth, radius); //Calls Rectangle Function at specified Coordinates, with specified Length, Height and Corner Radius.
}

/* Created Bespoke Method with 1 Parameter to create a Blue Circle.
 Used this with a While Loop to create Frankie's Eyes. */

void drawEye(int xCoord) { //Sets drawEye Bespoke Method & specifies 1 parameter for drawEye Bespoke Method.
  strokeWeight(3);
  fill(136, 221, 252); //Frankie's Eye Colour Blue.
  ellipse(xCoord, 350, 50, 50); //Calls Ellipse Function at specified xCoordinate.
}

/* Created Bespoke Method with No Parameters to create Robot's Raised Arm Holding Daisy.
 Utilised this method in an If mousePressed Processing Method to simulate robot raising/lowering his arm. */

void drawFlower() { //Sets drawFlower Bespoke Method with Zero Parameters.
  strokeWeight(1);
  fill(30, 109, 18);
  rect(381, 380, 12, 60, 3); //Used Thin Black Stroke, Dark Green Fill and Vertical Rectangle to create Daisy Stem.
  fill(255);
  ellipse(400, 380, 20, 20);
  ellipse(395, 390, 20, 20);
  ellipse(386, 395, 20, 20);
  ellipse(378, 390, 20, 20);
  ellipse(372, 382, 20, 20);
  ellipse(372, 374, 20, 20);
  ellipse(378, 369, 20, 20);
  ellipse(386, 368, 20, 20);
  ellipse(394, 370, 20, 20); //Used Thin Black Stroke, White Fill, and a Series of Circles overlapping each other to create Daisy's Petals.
  fill(248, 244, 17);
  ellipse(386, 380, 30, 30); //Used Thin Black Stroke, Yellow Fill (same Fill as Frankie's Right-most Button) to create Daisy Middle. Middle overlaps Petals to make their shape less circular/more petal-like.
  strokeWeight(3); //Changed Stroke Width back to 3 as with the rest of Frankie's Body.
  fill(207); //Grey Colour Fill for Frankie's Arm.
  for (int i=310; i<=390; i++) { //For Loop to create outstretched Arm.
    rect(i, 430, 20, 25, 3);
    i=i+20;
  }
}

/* Created Bespoke Method which lifts Frankie's Right Arm (Stage Right).
 Right Arm will be holding Heart-Shaped Box.
 Input Box will appear requesting User's Name.
 Once Name inputted "For *Name*" will appear on the Heart-Shaped Box. */

void drawHeart() { //Sets drawHeart Bespoke Method with Zero Parameters.
  fill(207); //Frankie's Arm Colour - Grey as before.
  for (int i=108; i<=190; i++) { //For Loop to create outstretched Arm.
    rect(i, 430, 20, 25, 3);
    i=i+20;
  }
  noStroke();
  fill(158, 6, 18); //Dark Red Colour for Heart.
  ellipse(90, 390, 50, 50); //Left Curve of Heart.
  ellipse(125, 390, 50, 50); //Right Curve of Heart.
  quad(72, 410, 110, 470, 142, 410, 110, 380); //Diamond Shape to complete Heart.
  String name = JOptionPane.showInputDialog(null, "What's your name?"); //Input Dialog Box appears requesting User's Name.
  fill(255); //Text Colour White.
  textSize(20); //Text Size.
  textAlign(CENTER); //Alignment of Text - Center.
  text("For\n" + name, 110, 390); //When User inputs their Name it is displayed as "For *Name*" on the Display. If no Input is made "For null" appears instead.
}

/* Created Bespoke Method with 4 Parameters. When Method is called a Speech Bubble appears.
 Speech Bubble will have "Happy Valentine's Day!!" written inside. */

void speechBubble(float xCoord, Float yCoord, float diameter, float heighth) { //sets speechBubble Bespoke Method & specifies 4 Parameters.
  strokeWeight(3);
  fill(255); //circle is white with black edge
  ellipse(xCoord, yCoord, diameter, heighth); //draws ellipse at requested parameters
  textSize(16); //size of text
  fill(255, 50, 50); //text colour red
  textAlign(CENTER); //alignment of text - Center
  text("HAPPY \n VALENTINE'S \nDAY!!!", xCoord, 580); //writes text "HAPPY VALENTINE'S DAY!!!" with each word on a seperate line inside the oval.
}
