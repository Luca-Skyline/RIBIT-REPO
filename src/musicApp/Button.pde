//zcack wellbron
class Button {
  //m,
  int x, y, w, h;
  String text, localPhase, nextPhase, info;
  color c1, c2;
  boolean on; // whether or not the mouse is over it

  // Constructador
  Button(int x, int y, int w, int h, String text,  String localPhase, String nextPhase, String info) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.localPhase = localPhase;
    this.nextPhase = nextPhase;
    this.info = info;
    c1 = color(#DF928E);
    c2 = color(#C58882);
    on = false;
  }

  void display() {
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }
    rect(x,y,w,h,8);
    fill(255);
    rect(x+5, y+5, w-10, h-10, 8);
    fill(0);
    //textAlign(CENTER);
    //textSize();
    text(text, x+w/2, y+(h/2)+5);
  }

  void hover(int mx, int my) {
    on = (mx > x && mx < x+w && my > y && my < y+60);
  }
  String inside() {
    if (mouseX>x && mouseX<(x+w) && mouseY>y && mouseY<(y+h)) {
       return nextPhase;
    } else {
       return localPhase;
    }
  }
}


//TODO/IDEAS for zack ;;
// --- trying to figure out how to encode a value to each button (i.e. tempo of 120); 
// ---- slider class next! also include display for the slider value (will be in main); 
// https://coolors.co/ef798a-f7a9a8-ba96b0-9c8cb4-7d82b8-7672a8-6f6197-613f75-a381a3-e5c3d1           lmao
// - more phases for options, 
//SECONDARY things
//
// - customizable color pallete
// - settings tab for color pallette, screen size, textSize, 
