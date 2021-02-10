/* Reflection

Name : Cian Dunne

Student Number: 20091471

Part A - Mark (5 /5)
-----------------------------

I attempted to add comments - both single lined and double lined, as much as I believed necessary.
Single line examples at lines 01, 41, 52.
Double line examples at lines 25-32, 73-78, 121-123.

I attempted to indent all code correctly to the best of my ability throughout the file.

I attempted to name all methods appropriately and relevantly to the context of the animation.
I also used camelCase where necessary.
Relevant Method Name examples at lines 259, 238, 209.
camelCase examples at lines 200, 191, 99.

I have included the Readme and Reflection as requested.
Each of these files I have attempted to fill out to the best of my ability

Based on the above I believe for this section my work falls into the Excellent Category.
I believe I should be awarded a Mark of 5 out of 5 for this section.


Part B - Mark (8 /10)
-----------------------------

line 03 - draw() 
line 23 - setup()

I included both the setup() and draw() functions in this assignment.

setup() is found at line 03.
draw() is found at line 23.

The setup() function is working without any current issues.
The draw function has 4 minor bugs which I cannot determine how to remove.
1. When using mousePress Functions to raise Left or Right Arms, the opposite arms Stroke will change size temporarily.
This bug will then return to normal once the mouse click is released.
2. When using mousePress Left Click Function the first Square i.e the Robot's Shoulder, will be removed.
This shouldn't be possible because the rectangle for loop is called after the background rectangles.
3. If You Press Enter or click OK after entering your name when presented with the "What is Your Name?" Input Box, one of 2 things will happen.
Either, the Name will still be accepted and will appear on the Box as originally determined, or the Box reappears and the "What is Your Name?" Box is empty again.
If you then enter your name again and press Enter or click OK again it will work the second time and the Heart-Shaped Box appears with For *Name* as it's supposed to.
4. If you attempt to perform the Right-Click on the Green Button Function the Arm will raise and appear as intended or will raise and appear for a split second and then disappear again with the arm returning to Frankie's Side.
This Bug appears to occur at random depending on when you open the Display.

I believe for this section my work falls into the Excellent Category.
setup and draw are both used. setup works correctly. draw has minor bugs but works for the most part.
I believe I should be awarded a Mark of 08 out of 10 for this section.


Part C - Mark (08/10)
-----------------------------

Use of if statements:
If statement found at lines 13-20.
Nested If statement found at lines 80-119.
Nested If statement found at lines 125-147.
Nested If statement found at lines 156-185.

As part of the JOptionPane String Method on lines 13-20 I have incorporated a Yes/No If Statemeent.
If Yes will give a Thank You Response Dialog Box and Activate the Drawing.
If No will give a Goodbye Response Dialog Box and Exit the Display.

A Nested If Statement was used to incorporate the mousePressed() method. This method is called from lines 80-119.
If mouse pressed is true and mouse click is left click in a certain range of X/Y Coordinates (on yellow button), Frankie's Arm rises using a For Loop to draw the Squares that make up his arm and he is holding a flower.
If left click is released and mouse pressed becomes false both arms return to his sides using a For Loops to draw the Squares that make up his arms.
If mouse pressed is true and mouse click is right click in a certain range of X/Y Coordinates (on green button) an Input Box appears requesting the User's Name.
If User inputs their name Frankie's other arm rises For Loop to draw the Squares that make up his arm and he is holding a Heart-Shaped Box with "For *Name*" written on it.
If right click is released the arm holding the Heart-Shaped Box remains in place (a keyPress function was added to remove this).

A Second Nested If Statement was used to incorporate the keyPressed() method. This method is called from lines 125-147.
If keyPressed is true and key Pressed is Space it calls the speechBubble  Bespoke Method and a small bubble proclaiming "Happy Valentine's Day" appears in the bottom right corner.
If keyPressed is true and a key Pressed is "b" it calls a series of rectangles that blend into the background to remove the upraised arm holding the Heart-Shaped Box and returns both of Frankie's arm to his sides using a For Loop to draw the Squares that make up his arms.
Else statement creates a Blended-In Ellipse to remove the Speech Bubble.

Another Nested If statement was used to incorporate a second series of mousePressed functions. This If Statement is called at lines 156-185.
If mousePressed is true and mouseButton Clicked is either Left or Right and mouse is clicked within a range of X/Y Coordinates(on Frankie's smile), a Nested For Loop is called to bring up a Series of 3 Red Circles.
These circles run left to right diagonally from top left to middle right of display.
Each circle has a single word inside "I", "Love", "You" respectively.
Else statement calls a Nested For Loop to create a series of 3 circles that blend into the background at the same locations as the red circles to remove the red circles.

Based on the above usage of If statements I would state that I have achieved the majority of conditions requested in this section.
I have used multiple If statements and Nested If Statements
I am unsure if I used Branched If Statements so I am unsure if I should receive full marks for this section.
I believe I should be awarded 08 Marks out of 10 for this Section.


Part D - Mark (20 /20)
-----------------------------

Use of loops:
For Loops found at lines 43-47, 90-93, 100-103, 114-118, 137-140, 227-230 and lines 240-243.
While Loop found at lines 54-61.
Nested For Loops found at lines 158-167 and lines 178-184.

At lines 43-47, I incorporated the drawLimb Bespoke Method into 2 For Loops to create Frankie's Legs.
The drawLimb Bespoke Method was again incorporated into For Loops on multiple occassions to create Frankie's Arms in different positions depending on other commands.
This occurred at lines 90-93, 100-103, 114-118, 137-140, 227-230 and lines 240-243.

At line 54-61, I incorporated the drawEye Bespoke Method into a While Loop to create the Frankie's Eyes.

At line 158-167, I incorporated a Nested For Loop into a Nested If Statement.
If mousePressed is true, mouseButton is Left Click OR Right Click within a range of X/Y Coordinates, it calls the Nested For Loop that draws 3 Red Circles.
The 3 Red Circles are drawn diagonally from Top-Left to Middle-Right.
Each Circle has the Words "I", "Love" and "You" inside it, with 1 word per circle respectively.

At line 178-184, I incorporated a Nested For Loop into an Else Statement.
The Else Statement calls 3 Circles at the same locations as the 3 Red Circles but slightly larger.
These 3 circles are the same colour as the Display Background, which removes them from the Display.

As I have used Multiple Loops including For & While, and Multiple Nested Loops I believe I have achieved Excellent Parameters for this Section.
I believe I should be awarded 20 Marks out of 20 for this Section.


Part E - Mark (16 /20)
-----------------------------
Use of Bespoke methods:
At lines 191-195 with 5 Parameters
At lines 200-204 with 1 Parameter.
At lines 209-231 and lines 238-254 with No Parameters.
At lines 259-267 with 4 Parameters.

At lines 191-195 I created the Bespoke Method drawLimb with 5 Parameters.
These Parameters are all int Values - xCoord, yCoord, length, heighth, radius.
This method creates a round edged rectangle with a strokeWeight and fill.

At lines 200-204 I created the Bespoke Method drawEye with 1 Parameter - int Value Xcoord
This creates an ellipse with a strokeWeight and a fill.

At lines 209-231 I created the Bespoke Method drawFlower with no Parameters.
This calls a For Loop to create Frankie's Outstretched Arm. In his "Hand" is a Green Rectangle denoting a Daisy Stem.
At the top of the Stem is a Series of Overlapping White Circles (I had initially planned to use a Loop for this but was unsure how).
These circles denote the Daisy Petals with a Yellow Circle over them to create the Daisy Middle.

At lines 238-254 I creaated the Bespoke Method drawHeart with no Parameters.
This calls a For Loop to create Frankie's Outstretched Arm.
In his "Hand" is a Combination of a Quad and 2 Ellipses to create a Heart-Shaped Box.
JOption.Pane is used to call a Dialog Box requesting the User's Name.
When the User enters their name the Message "For *Name*" is displayed on the Box.

At lines 259-267 I created the Bespoke Method speechBubble with 4 Parameters.
These Parameters are all float Values - xCoord, yCoord, diameter, heighth.
This creates a White Circle in the Bottom-Right of the Display.
Inside the White Circle written in Pink is "Happy Valentine's Day!!!"

I have included 5 Bespoke Methods which take varying numbers of Parameters.
I have used Overloading in my Bespoke Methods.
I did not use a Bespoke Method with a Return Value.
Based on these criteria I believe I should be awarded 16 Marks out of 20 for this Section.


Part F - Mark (13 /20)
-----------------------------
Use of Processing methods:
line 80 - mousePressed Method is called.
line 125 - keyPressed Method is called.
line 156 - a 2nd mousePressed Method is called.

At line 80 the Mouse Pressed Method is called inside a Nested If Statement.
If mouse pressed is true and mouse click is left click in a certain range of X/Y Coordinates (on yellow button), Frankie's Arm rises using a For Loop to draw the Squares that make up his arm and he is holding a flower.
If left click is released and mouse pressed becomes false both arms return to his sides using a For Loops to draw the Squares that make up his arms.
If mouse pressed is true and mouse click is right click in a certain range of X/Y Coordinates (on green button) an Input Box appears requesting the User's Name.
If User inputs their name Frankie's other arm rises For Loop to draw the Squares that make up his arm and he is holding a Heart-Shaped Box with "For *Name*" written on it.
If right click is released the arm holding the Heart-Shaped Box remains in place (a keyPress function was added to remove this).

At line 125 the keyPressed Method is called inside another Nested If Statement.
If keyPressed is true and key Pressed is Space it calls the speechBubble  Bespoke Method and a small bubble proclaiming "Happy Valentine's Day" appears in the bottom right corner.
If keyPressed is true and a key Pressed is "b" it calls a series of rectangles that blend into the background to remove the upraised arm holding the Heart-Shaped Box and returns both of Frankie's arm to his sides using a For Loop to draw the Squares that make up his arms.
Else statement creates a Blended-In Ellipse to remove the Speech Bubble.

At line 156 a 2nd mousePressed method is called, again inside a Nested If Statement.
If mousePressed is true and mouseButton Clicked is either Left or Right and mouse is clicked within a range of X/Y Coordinates(on Frankie's smile), a Nested For Loop is called to bring up a Series of 3 Red Circles.
These circles run left to right diagonally from top left to middle right of display.
Each circle has a single word inside "I", "Love", "You" respectively.
Else statement calls a Nested For Loop to create a series of 3 circles that blend into the background at the same locations as the red circles to remove the red circles.


Other Processing Methods used include:
size()
noStroke()
background()
println()
exit()
fill()
stroke()
strokeWeight()
rect()
arc()
ellipse()
quad()
textSize()
textAlign()
text()

I have used 3 Processing Methods as shown above and incorporated them meaningfully into my Display.
I believe based on thse criteria I should be awarded 13 Marks out of 20.


Part G - Mark (9 /15)
-----------------------------
Use of String methods:
Lines 12-20 - Yes/No JOptionPane Dialog Box
Lines 249-253 - JOptionPane User Input Dialog Box

At Lines 12-20, I have use the JOptionPane String Method to call a Dialog Box asking a Yes/No Question.
This is then incorporated into an If Statement.
If the User answers Yes a new Display Box appears with a Thank You Message and the Display Opens.
If the User answers No a new Display Box appears with a Goodbye Message and the Display Exits.

At Lines 249-253, I have used the JOptionPane String Method to call an Input Dialog Box.
This is incorporated into a mousePress function inside a Nested If Statement.
If the User Right Clicks within a Range of X/Y Coordinates the Input Dialog Box is called.
The Dialog Box requests the User's name.
If the User enters their name, a For Loop is triggered creating Frankie's outstrectched Arm.
In his "Hand" he is holding a Heart-Shaped Box, with "For *Name*" written on it.

I have incorporated 2 String Methods meaningfully into the Project.
I believe I should be awarded 9 Marks out of 15 for this Section.
*/
