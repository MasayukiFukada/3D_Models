difference(){
    linear_extrude(6) hull(){
        translate([-13,0,0]) circle(10,$fn=100);
        translate([13,0,0]) circle(10,$fn=100);
    }
    translate([0,0,4]) linear_extrude(2) color("red") hull() {
        translate([-13,0,0]) circle(7.1,$fn=100);
        translate([13,0,0])  circle(7.1,$fn=100);
    }
    // 磁石埋め込み穴
    translate([-13,0,0.5]) linear_extrude(4) circle(3.1,$fn=100);
    translate([0,0,0.5]) linear_extrude(4) circle(3.1,$fn=100);
    translate([13,0,0.5]) linear_extrude(4) circle(3.1,$fn=100);
    // 穴強化スリット
    translate([-10,0,0.5]) linear_extrude(4) square([20,0.1]);
}