difference() {
    union() {
        translate([0,-20,0]) linear_extrude(49.5) circle(5,$fn=100);
        translate([-10,20,0]) linear_extrude(49.5) circle(5,$fn=100);
        translate([30,-30,0]) linear_extrude(50)  square([8,60]);
        translate([34,20,50]) linear_extrude(10) square([4,10]);
        translate([30,-30,50]) linear_extrude(10) square([4,10]);
        linear_extrude(5) hull() {
            translate([0,-20,0]) circle(5,$fn=100);
            translate([-10,20,0]) circle(5,$fn=100);
            translate([30,8,0]) circle(5,$fn=100);
            translate([30,-8,0]) circle(5,$fn=100);
        }
    }
    translate([33.5,20,0]) linear_extrude(10.5) square([4.5,10]);
    translate([29.5,-30,0]) linear_extrude(10.5) square([4.5,10]);
    linear_extrude(10) hull() {       
        translate([4,-9,0]) circle(5,$fn=100);
        translate([0,10,0]) circle(5,$fn=100);
        translate([24,-3,0]) circle(5,$fn=100);
        translate([24,3,0]) circle(5,$fn=100);
    }        
}