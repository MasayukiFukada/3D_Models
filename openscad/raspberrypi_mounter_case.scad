*color([0.5,0,0]) linear_extrude(3) {
    translate([-10,-20,0]) hull(){
        circle(3,$fn=100);
        translate([76,0,0]) circle(3,$fn=100);
        translate([0,105.6,0]) circle(3,$fn=100);
        translate([76,105.6,0]) circle(3,$fn=100);
    }
}

difference() {
    translate([-15,-25,-3]) linear_extrude(44) hull(){
        circle(5,$fn=100);
        translate([90,0,0]) circle(5,$fn=100);
        translate([0,110.6,0]) circle(5,$fn=100);
        translate([90,110.6,0]) circle(5,$fn=100);
    }
    union() {
        translate([-10,-20,6.5]) linear_extrude(31.5) {
            hull(){
                circle(3,$fn=100);
                translate([76,0,0]) circle(3,$fn=100);
                translate([0,110.5,0]) circle(3,$fn=100);
                translate([76,110.5,0]) circle(3,$fn=100);
            }
        }
        translate([-10,-20,3.5]) linear_extrude(3) {
            hull(){
                translate([4,0,0]) circle(3,$fn=100);
                translate([72,0,0]) circle(3,$fn=100);
                translate([4,110.5,0]) circle(3,$fn=100);
                translate([72,110.5,0]) circle(3,$fn=100);
            }
        }
        translate([-10,-20,0]) linear_extrude(3.5) {
            hull(){
                circle(3,$fn=100);
                translate([76,0,0]) circle(3,$fn=100);
                translate([0,110.5,0]) circle(3,$fn=100);
                translate([76,110.5,0]) circle(3,$fn=100);
            }
        }
    }
    // 面取り
    translate([-30,-33.6,41.1]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(130) square([5,5]);
    translate([-30,-33.6,-3.1]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(130) square([5,5]);
    // ケーブルを逃がす
    color([1,0,0]) translate([30,-35,20]) linear_extrude(50) square([60,130]);
}