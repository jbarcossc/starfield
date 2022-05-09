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
    z = random(1, 3);
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
    fill(255);
    line(ppx, ppy, x, y);
    //ellipse(x, y, z, z);
    
  }
  
  void update(){
    ppx = px;
    ppy = py;
    px = x;
    py = y;
    x += xSpeed;
    y += ySpeed;
    z *= 1.04;
    xSpeed *= acc;
    ySpeed *= acc;
    if (x < -width/2 || x > width/2 || y < -height/2 || y > height/2){
      x = random(-width/2, width/2);
      px = x;
      ppx = x;
      xSpeed = x*0.02;
      y = random(-height/2, height/2);
      py = y;
      ppy = y;
      ySpeed = y*0.02;
      z = 1;
    }
  }
}
