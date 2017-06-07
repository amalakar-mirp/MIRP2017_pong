void rightLose() {
  if(ballX>displayWidth-ballRadius){
  leftScore+=1;
  }
}

void leftLose() {
  if(ballX<ballRadius)
  rightScore+=1;
}