PShape svgdata;

float blurRadius = 0;
float threshouldRacio = 1;

boolean applyFilter = false;

void setup() {
  size(500, 500);
  frameRate(30);
  
  //svgdata = loadShape("test_graphic_outline.svg");
  //svgdata = loadShape("test_graphic_negative-position.svg");
  //svgdata = loadShape("test_graphic_alpha.svg");
  //svgdata = loadShape("test_graphic_group.svg");
  //svgdata = loadShape("test_graphic_group+alpha.svg");
  //svgdata = loadShape("test_graphic_line.svg");
  //svgdata = loadShape("test_graphic_lines.svg");
  //svgdata = loadShape("test_graphics_nofilled-lines.svg");
  //svgdata = loadShape("test_graphics_styled-lines.svg");
  //svgdata = loadShape("test_graphics_styled-lines2.svg");
  //svgdata = loadShape("boo.svg");
  
}
void draw(){
  background(255);
  shape(svgdata, 0, 0, 500, 500);
  
  if(applyFilter) {
    filter(BLUR, blurRadius);
    filter(THRESHOLD, threshouldRacio);
  }
}

void mouseClicked() {
  applyFilter = !applyFilter;
}
void mouseMoved() {
  blurRadius      = mouseX * 0.02;
  threshouldRacio = min(mouseY * 0.003, 1);
}