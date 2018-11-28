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
	while(frontIsClear()){
    move();
  }
	repeat(2){
    checkObject();
  }
}

function checkObject(){
	turnLeft();
	move();
	while(rightIsClear()){
		climbMountain();
		descend();
		if(frontIsClear()){
      move();
    }
	}
}

function climbMountain(){
	turnRight();
	move();
	while(frontIsBlocked()){
		turnLeft();
		move();
		turnRight();
		move();
	}
	putBeeper();
}

function descend(){
	move();
	turnRight();
	while(frontIsClear()){
		move();
		turnLeft();
		if(frontIsClear()){
			move();
			turnRight();
		}
	}
	turnLeft();
}
