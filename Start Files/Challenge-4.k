/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/

import "turns";

function SolveChallenge(){
	move();
	while(beepersInBag()){
		tackleMountain();
	}
}


function tackleMountain(){
	climb();
	putBeeper();
	descend();
}

function climb(){
	while(frontIsBlocked()){
		turnLeft();
		if(frontIsClear()){move();}
		turnRight();
		move();
	}
}

function descend(){
	while(frontIsClear()){
	move();
	turnRight();
	if(frontIsClear()){
		move();
		turnLeft();}}
	if(facingSouth()){turnLeft();}
}
