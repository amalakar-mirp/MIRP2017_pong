void updateBallVelocity() {
  if(ballY>displayHeight-ballRadius) {
  ballY=displayHeight-ballRadius;
  ballVy *= -restitutionCoeff;
  }
  if(ballY<ballRadius) {
  ballY=ballRadius;
  ballVy *= -restitutionCoeff;
  }
  if(ballX>displayWidth-(paddleWidth+ballRadius)&&((ballY>=rightPaddle)&&(ballY<=buffer+rightPaddle))) {
  ballX=displayWidth-(paddleWidth+ballRadius);
  ballVx *= -restitutionCoeff;
  ballVy=BALL_VELOCITY*(ballY-(rightPaddle+buffer))/buffer;
  }
  if(ballX>displayWidth-(paddleWidth+ballRadius)&&((ballY>=buffer+rightPaddle)&&(ballY<=rightPaddle+paddleLength))) {
  ballX=displayWidth-(paddleWidth+ballRadius);
  ballVx *= -restitutionCoeff;
  ballVy=BALL_VELOCITY*(ballY-(rightPaddle+buffer))/buffer;
  }
  if(ballX>displayWidth-(paddleWidth+ballRadius)&&(ballY==rightPaddle+buffer)) {
  ballX=displayWidth-(paddleWidth+ballRadius);
  ballVx *= -restitutionCoeff;
  ballVy=0;
  }
  if(ballX<ballRadius+paddleWidth&&ballY>leftPaddle&&ballY<=leftPaddle+buffer) {
  ballX=ballRadius+paddleWidth;
  ballVx *= -restitutionCoeff;
  ballVy=BALL_VELOCITY*(ballY-(leftPaddle+buffer))/buffer;
  }
  if(ballX<ballRadius+paddleWidth&&ballY>=leftPaddle+buffer&&ballY<=leftPaddle+paddleLength) {
  ballX=ballRadius+paddleWidth;
  ballVx *= -restitutionCoeff;
  ballVy=BALL_VELOCITY*(ballY-(leftPaddle+buffer))/buffer;
  }
   if(ballX<ballRadius+paddleWidth&&(ballY==leftPaddle+buffer)) {
  ballX=ballRadius+paddleWidth;
  ballVx *= -restitutionCoeff;
  ballVy=0;
  }
  
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
  if(right_up)
 rightPaddle-=PADDLE_VELOCITY;
 if(right_down)
 rightPaddle+=PADDLE_VELOCITY;
 if(leftPaddle>displayHeight-paddleLength)
 leftPaddle=displayHeight-paddleLength;
if(leftPaddle<0)
 leftPaddle=0;
  if(rightPaddle>displayHeight-paddleLength)
 rightPaddle=displayHeight-paddleLength;
if(rightPaddle<0)
 rightPaddle=0;
 // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
}