class Cell{
  private int x;
  private int y;
  private int size;
  private boolean isActive;
  public boolean[] walls = {true, true, false, false};
  
  Cell (int X, int Y){
    this.x = X;
    this.y = Y;
    this.size = 40;
    //U,R,D,L
  }
  
  public void draw(){
    for (int i=0; i<3;i++){
      if(this.walls[i]){
        drawWall(i);
      }
    }
  }
  
  private void drawWall(int wallID){
    int realX = this.x * this.size;
    int realY = this.y * this.size;
    stroke(0);
    
    switch(wallID){
      case 0:
        line(realX,           realY,           realX+this.size, realY);
      case 1:
        line(realX+this.size, realY,           realX+this.size, realY+this.size);
      case 2:
        line(realX,           realY+this.size, realX+this.size, realY+this.size);
      case 3:
        line(realX,           realY,           realX,           realY+this.size);
    }
  }
  
}
