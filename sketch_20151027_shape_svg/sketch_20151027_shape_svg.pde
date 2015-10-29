PShape svgdata;

float blurRadius = 0;
float threshouldRecio = 1;

boolean applyFilter = true;

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
  svgdata = loadShape("boo.svg");
  
}
void draw(){
  background(255);
  shape(svgdata, 0, 0, 600, 600);
  
  if(applyFilter) {
    filter(BLUR, blurRadius);
    filter(THRESHOLD, threshouldRecio);
  }
}

void mouseClicked() {
  applyFilter = !applyFilter;
}
void mouseMoved() {
  blurRadius      = mouseX * 0.02;
  threshouldRecio = min(mouseY * 0.003, 1);
}