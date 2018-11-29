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
