ArrayList<Cell> stage = new ArrayList<Cell>();
int sizeOfStage = 20;

void setup(){
  size(800,800);
  background(255);
  for( int i=0; i< (sizeOfStage); i++){
    for( int j=0; j<sizeOfStage; j++){
      stage.add(new Cell(i,j));
      stage.get((sizeOfStage*i)+j).draw();
    }
  }
}

void draw(){

}
