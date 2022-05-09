class Star {
  float x;
  float y;
  float z;
  float px;
  float py;
  float ppx;
  float ppy;
  float xSpeed;
  float ySpeed;
  float acc;
  
  
  Star(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(1, 2);
    px = x;
    py = y;
    ppx = px;
    ppy = py;
    acc = 1.07;
    xSpeed = x*0.02;
    ySpeed = y*0.02;
    
  }
  
  void show(){
    strokeWeight(z);
    stroke(255);
    line(ppx, ppy, x, y);
  }
  
  void update(){
    ppx = px;
    ppy = py;
    px = x;
    py = y;
    x += xSpeed;
    y += ySpeed;
    z *= 1.03;
    xSpeed *= acc;
    ySpeed *= acc;
    if (abs(x) > width/2 || abs(y) > height/2){
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      px = x;
      py = y;
      ppx = x;
      ppy = y;
      xSpeed = x*0.02;
      ySpeed = y*0.02;
      z = random(1,2);
    }
  }
}
