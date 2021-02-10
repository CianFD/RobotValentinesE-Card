/*
Name : Cian Dunne
Student Number: 20091471

Brief description of the animation achieved:
Interactive Valentine's Day eCard starring "Frankie the Lovesick Robot".
User is first presented with Input Display Box asking Yes/No Question.
If No is Chosen a Goodbye Output Display appears and the Display Exits.
If Yes is Chosen a Thank You Output Display appears and then the Display opens showing Frankie.
If you Left Click on the Yellow Button, Frankie's Left Arm (Stage Left) will rise and he will be holding a Daisy.
If you release the Left Click, Frankie's Left Arm returns to his side.
If you Right Click on the Green Button, an Input Box will appear requesting your name.
When you input Text and click OK the Robot's Right Arm will rise and he will be holding a heart-shaped box.
On the Box will be the message "For *Inserted Name*".
if you press the B Key it will remove all previous Arms and return them to his sides.
If you press the Space Bar a Speech Bubble appears announcing Happy Valentine's Day.
If you release the Space Bar the Speech Bubble disappears again.
If you Left or Right Click on Frankie's Mouth 3 Red Circles appear running Top-Left to Middle-Right.
Each Circle will have 1 word inside "I", "Love" and "You" running left to right across the Display.
If you release the Clicked Mouse Button the Circles will disappear.


Known bugs/problems:
1. When using mousePress Functions to raise Left or Right Arms, the opposite arms Stroke will change size temporarily.
This bug will then return to normal once the mouse click is released.
2. When using mousePress Left Click Function the first Square i.e the Robot's Shoulder, will be removed.
This shouldn't be possible because the rectangle for loop is called after the background rectangles.
3. If You Press Enter or click OK after entering your name when presented with the "What is Your Name?" Input Box, one of 2 things will happen.
Either, the Name will still be accepted and will appear on the Box as originally determined, or the Box reappears and the "What is Your Name?" Box is empty again.
If you then enter your name again and press Enter or click OK again it will work the second time and the Heart-Shaped Box appears with For *Name* as it's supposed to.
4. If you attempt to perform the Right-Click on the Green Button Function the Arm will raise and appear as intended or will raise and appear for a split second and then disappear again with the arm returning to Frankie's Side.
This Bug appears to occur at random depending on when you open the Display.


Sources:
1. Rosco E-Colour #035 Light Pink 102300354825 B&H Photo Video. [ONLINE] Available at: https://www.bhphotovideo.com/c/product/163256-REG/Rosco_102300354825_E_Colour_035_Light_Pink.html. Accessed [10th February 2020].
2. How to Draw a Robot | Neil Slorance. [ONLINE] Available at https://neilslorance.wordpress.com/2010/09/04/how-to-draw-a-robot/. Accessed [10th February 2020].
3. Access Denied. [ONLINE] Available at http://www.homedepot.ca/product/graham-brown-majestic-grey-silver-wallpaper/1000763128. Accessed [10th February 2020].
4. rect() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/rect_.html. Accessed [10th February 2020].
5. ellipse() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/ellipse_.html. Accessed [10th February 2020].
6. Cadmium yellow lemon. [ONLINE] Available at https://www.isaro.be/shop/gb/oil-colours/48-jaune-de-cadmium-citron.html. Accessed [10th February 2020].
7. Quilters Percale - Light Blue#16 - The Fabric and Felt Studio. [ONLINE] Available at https://thefabricandfeltstudio.com.au/product/quilters-percale-light-blue/. Accessed [10th February 2020].
8. quad() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/quad_.html. Accessed [11th February 2020].
9. A32.7.2 DARK GREEN TRESPA® METEON® UNI COLOURS PANELS. [ONLINE] Available at https://expressexteriors.us/products/a32-7-2-dark-green-meteon-unicolor-trespa. Accessed [11th February 2020].
10. Buy 95% Viscose Vertex/5% Spandex Dark Red Colour Dyed Jersey Online - Textile Basket. [ONLINE] Available at https://textilebasket.com/collections/jersey/products/16gk01tb132?variant=32459108556. Accessed [11th February 2020].
11. arc() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/arc_.html. Accessed [12th February 2020].
12. for \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/for.html. Accessed [12th February 2020].
13. while \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/while.html. Accessed [12th February 2020].
14 if \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/if.html. Accessed [12th February 2020].
15. key \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/key.html. Accessed [13th February 2020].
16. keyPressed() \ Language (API) \ Processing 3+. [ONLINE] Available at https://www.processing.org/reference/keyPressed_.html. Accessed [13th February 2020].
17. text() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/text_.html. Accessed [13th February 2020].
18. textAlign() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/textAlign_.html. Accessed [13th February 2020].


*/
