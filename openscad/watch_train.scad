difference() {
    union() {
        // 消える対象外
        translate([30,-30,0]) linear_extrude(50)  square([8,60]);
        linear_extrude(49.5) hull() {
            translate([0,-20,0]) circle(5,$fn=100);
            translate([-10,20,0]) circle(5,$fn=100);
            translate([30,8,0]) circle(5,$fn=100);
            translate([30,-8,0]) circle(5,$fn=100);
        }
    }
    rotate([0,0,13]) translate([10,-23,5]) linear_extrude(30) hull() {
        square([5,50]);
        translate([10,40,0]) square([5,5]);
    }
    rotate([0,0,13]) translate([-13,-5,5]) linear_extrude(50) square([15,10]);
    rotate([0,0,13]) translate([-13,-15,15]) linear_extrude(50) square([15,30]);
    rotate([0,-90,13]) translate([15,5,-5]) linear_extrude(20) circle(10,$fn=100);
    rotate([0,-90,13]) translate([15,-5,-5]) linear_extrude(20) circle(10,$fn=100);
    rotate([90,0,13]) translate([10.4,15,-30]) linear_extrude(55) circle(10,$fn=100);
    rotate([90,0,0]) translate([20,15,-30]) linear_extrude(70) circle(10,$fn=100);
    linear_extrude(55) hull() {
        translate([4,-13,0]) circle(5,$fn=100);
        translate([-2,13,0]) circle(5,$fn=100);
        translate([24,-3,0]) circle(5,$fn=100);
        translate([24,3,0]) circle(5,$fn=100);
    }
    translate([0,0,15]) linear_extrude(50) hull(){
        translate([25,15,0]) square([5,5]);
        translate([-4,20,0]) rotate([0,0,13]) square([5,5]);
        translate([25,-20,0]) square([5,5]);
        translate([6.2,-25,0]) rotate([0,0,13]) square([5,5]);
    }
}