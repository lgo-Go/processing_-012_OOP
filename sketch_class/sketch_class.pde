class Kvadrat {
    float x, y, s, v;
    Kvadrat(float _x, float _y, float _s, float _v) {
        x = _x;
        y = _y;
        s = _s;
        v = _v;
    }

    void right(float v) {
        x = x + v;
        if ((x + v) >= width) {
            v = -v;
        } else if (x <= 0) {
            v = -v;
        }
    }
}

class Cvet extends Kvadrat {
    color a;
    Cvet(float _x, float _y, float _s, float _v, color _a) {
        super(_x, _y, _s, _v);
        a = _a;
    }

    void draw() {
        fill(a);
        rect(x, y, s, s);
    }
}

Cvet[] k_array;

void setup() {
    size(600, 600);
    k_array = new Cvet[50];
    for (int i = 0; i < 50; i++) {
        k_array[i] = new Cvet(random(width - 50), random(height - 50), 50, 2, color(random(255), random(255), random(255)));
    }
}

void draw() {
    background(0);
    for (int i = 0; i < 50; i++) {
        k_array[i].draw();
        k_array[i].right(2);
    }
}