void updateBallVelocity() {
  if(ballX>displayWidth-ballRadius)
  ballX=displayWidth;
  ballVx *= -1;
  if(ballX<ballRadius)
  ballX=ballRadius;
  ballVx *= -1;
  if(ballY>displayHeight-ballRadius)
  ballY=displayHeight;
  ballVy *= -1;
  if(ballY<ballRadius)
  ballY=ballRadius;
  ballVy *= -1;
  
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
 if(left_up)
 leftPaddle-=PADDLE_VELOCITY;
 if(left_down)
 leftPaddle+=PADDLE_VELOCITY;
 // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
}