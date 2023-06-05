*color([0.5,0,0]) linear_extrude(3) {
    translate([-10,-20,0]) hull(){
        circle(3,$fn=100);
        translate([76,0,0]) circle(3,$fn=100);
        translate([0,105.6,0]) circle(3,$fn=100);
        translate([76,105.6,0]) circle(3,$fn=100);
    }
}

difference() {
    translate([-15,-23,-3]) linear_extrude(44) hull(){
        circle(5,$fn=100);
        translate([84,0,0]) circle(5,$fn=100);
        translate([0,110.6,0]) circle(5,$fn=100);
        translate([84,110.6,0]) circle(5,$fn=100);
    }
    union() {
        translate([-12,-20,7]) linear_extrude(31.5) {
            hull(){
                circle(3,$fn=100);
                translate([79,0,0]) circle(3,$fn=100);
                translate([0,125,0]) circle(3,$fn=100);
                translate([79,125,0]) circle(3,$fn=100);
            }
        }
        translate([-12,-20,4]) linear_extrude(3) {
            hull(){
                translate([4,0,0]) circle(3,$fn=100);
                translate([75,0,0]) circle(3,$fn=100);
                translate([4,125,0]) circle(3,$fn=100);
                translate([75,125,0]) circle(3,$fn=100);
            }
        }
        translate([-12,-20,0]) linear_extrude(4) {
            hull(){
                circle(3,$fn=100);
                translate([79,0,0]) circle(3,$fn=100);
                translate([0,125,0]) circle(3,$fn=100);
                translate([79,125,0]) circle(3,$fn=100);
            }
        }
    }
    // 面取り
    translate([-30,-31.6,41.1]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(130) square([5,5]);
    translate([-30,-31.6,-3.1]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(130) square([5,5]);
    // 飾り窓
    translate([7,0,22]) rotate([90,0,0]) linear_extrude(30) circle(10,$fn=100);
    translate([7,-28.8,0]) linear_extrude(50) square([0.5,1.5]);
    // ケーブルを逃がす
    color([1,0,0]) translate([30,-35,17]) linear_extrude(50) square([60,130]);
}