/*
日本の硬貨
  1円 20.0mm 約1.5mm 1.0g
  5円 22.0mm 約1.5mm 3.75g
 10円 23.5mm 約1.5mm 4.5g
 50円 21.0mm 約1.7mm 4.0g
100円 22.6mm 約1.7mm 4.8g
500円 26.5mm 約1.8mm 7.0g
*/

difference() {
    linear_extrude(15) hull() {
        translate([-15,-10,0]) circle(2,$fn=100);
        translate([-15,30,0]) circle(2,$fn=100);
        translate([145,30,0]) circle(2,$fn=100);
        translate([145,-10,0]) circle(2,$fn=100);
    }
    color("blue")translate([0,0,2]) linear_extrude(20) union() {
        translate([-2,8,0]) circle(11,$fn=100);
        translate([22.5,8,0]) circle(12,$fn=100);
        translate([48,8,0]) circle(12,$fn=100);
        translate([73,8,0]) circle(11,$fn=100);
        translate([98,8,0]) circle(11.5,$fn=100);
        translate([130,8,0]) circle(13.5,$fn=100);
    }
    translate([0,0,2]) linear_extrude(20) union() {
        translate([-9.5,-15,0]) square([15,15]);
        translate([15.5,-15,0]) square([15,15]);
        translate([40.5,-15,0]) square([15,15]);
        translate([65.5,-15,0]) square([15,15]);
        translate([90.5,-15,0]) square([15,15]);
        translate([122,-15,0]) square([15,15]);
    }
}
difference() {
    color("green") union() {
        translate([-17,-7,15]) linear_extrude(53) square([3,30]);
        translate([-17,22,15]) linear_extrude(63) square([5,8]);
        translate([110,-12,15]) linear_extrude(5) square([5,44]);
        translate([115,25,15]) linear_extrude(17) square([15,7]);
    }

    color("red") translate([-12,0,67]) rotate([20,20,0]) // 傾き
    difference() {
        union() {
            translate([-30,-5,0]) linear_extrude(2) square([170,34]);
            translate([-30,-5,2]) linear_extrude(3) square([170,2]);
            // translate([-30,-5,5]) linear_extrude(1,scale=[1.0,1.2]) square([170,2]);
            translate([-30,27,2]) linear_extrude(3) square([170,2]);
            // translate([140,29,5]) rotate([180,180,0]) linear_extrude(1,scale=[1.0,1.2]) square([170,2]);
        }
        translate([0,0,0]) linear_extrude(6) square([22,17.3]);
        translate([24,0,0]) linear_extrude(6) square([23,18.3]);
        translate([49,0,0]) linear_extrude(6) square([24,19.3]);
        translate([75,0,0]) linear_extrude(6) square([24.6,19.9]);
        translate([102,0,0]) linear_extrude(6) square([25.5,20.8]);
    }
}