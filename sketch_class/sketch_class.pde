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
        x += s;
    }
}

Kvadrat[] k_array;

void setup() {
    size(600, 600);
    k_array = new Kvadrat[10];
    for (int i = 0; i < 10; i++) {
        k_array[i] = new Kvadrat(random(width-50), random(height-50), 50);
    }
}

void draw() {
    background(0);
    for (int i = 0; i < 10; i++) {
        k_array[i]. draw();
        k_array[i].right(random(3));
    }
}