void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
  drawBall();
  drawPaddles();
  rightLose();
  leftLose();
  displayScores();
  resetGame();
  
}

void drawGameScreen() {
  background(bgColor);// Draw background
   updateBallPosition();
   updateBallVelocity();
   updatePaddlePositions(); // Update Ball Velocity and Resolve Collisions
  // Update Ball and Paddle Positions
  // Draw Ball and Paddles
  // Display Scores
}

void drawBall() {
  // Display Ball in correct position
  background(bgColor);
  fill(ballColor);
  ellipse(ballX, ballY,ballWidth,ballHeight);
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(paddleColor);
  rect(0,leftPaddle,paddleWidth,paddleLength);
  fill(paddleColor);
  rect(displayWidth-paddleWidth,rightPaddle,paddleWidth,paddleLength);
}

void resetGame(){
  if(reset||(ballX>displayWidth-ballRadius)||(ballX<ballRadius)) {
  drawGameScreen();
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  drawBall();// Reset Ball and Paddle Positions
  drawPaddles();
  // Reset Ball Velocity
}
}

void displayScores() {
  text(leftScore,100,550);
  text(rightScore,550,550);// Display Left and Right player Scores
}