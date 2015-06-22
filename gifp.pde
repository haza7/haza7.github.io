
PImage img[];
int  indiceImagen = 0;

void setup() {

  size (493, 227);
  img = new PImage[60];

  for (int i = 0; i < 60; i++) {
    println(i);
    if (i<10) {
      img[i] = loadImage("gif/frame_00"+i+".gif");
    } else {
      img[i] = loadImage("gif/frame_0"+i+".gif");
    }
  }
  frameRate(10);
}

void draw() {
  background(0);
  image(img[indiceImagen], 0, 0);

  indiceImagen = indiceImagen + 1;
  if (indiceImagen > 60 -1) {
    indiceImagen =0;
  }
}








