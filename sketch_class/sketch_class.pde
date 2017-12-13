class Kvadrat {
    float x, y, s;
    Kvadrat(float _x, float _y, float _s) {
        x = _x;
        y = _y;
        s = _s;
    }
    
    void draw() {
       rect(x, y, s, s);  
    }

    void right(float s) {
        x+= s;
    }
}

class Cvet extends Kvadrat {
    color a;
    Cvet(float _x, float _y, float _s, color _a) {
        super(_x, _y, _s);
        a = _a;
    }

    void kras (color a) {
        fill(a);
    }
}

Cvet[] k_array;

void setup() {
    size(600, 600);
    k_array = new Cvet[50];
    for (int i = 0; i < 50; i++) {
        k_array[i] = new Cvet(random(width - 50), random(height - 50), 50, color(random(255), random(255), random(255)));
    }
}

void draw() {
    background(0);
    for (int i = 0; i < 50; i++) {
        k_array[i].kras (color(random(255), random(255), random(255)));
        k_array[i].draw();
        k_array[i].right(2);
    }
}