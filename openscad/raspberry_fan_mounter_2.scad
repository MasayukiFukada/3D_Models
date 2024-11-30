%translate([0,0,46]) rotate([-90,0,0]) difference() {
    color("red") union(){
        linear_extrude(3) square([31,43]);
        translate([0,7.3,0]) linear_extrude(8) square([31,35.7]);
        linear_extrude(25)  square([40,4]);
    }
    translate([20,-0.5,11]) rotate([-90,0,0]) linear_extrude(50) hull() {
        circle(4.5,$fn=100);
        translate([-4.5,-25,0]) square([9,9]);
    }
    translate([20,12,0]) rotate([-90,0,0]) linear_extrude(50) hull() {
        circle(4.5,$fn=100);
        translate([-4.5,-25,0]) square([9,9]);
    }
    translate([-2,45,-1]) rotate([0,45,0]) rotate([90,0,0]) linear_extrude(50) square([3,3]);
}

difference() {
    union(){
        translate([0,80,0]) union() {
            %color("blue") translate([0,0,3]) linear_extrude(13) square([30,30]);
            %translate([3,3,0]) linear_extrude(13) square([24,24]);
            color("green") linear_extrude(3) hull() {
                translate([0,-79,0]) circle(4,$fn=100);
                translate([30,-79,0]) circle(4,$fn=100);
                translate([0,30,0]) circle(4,$fn=100);
                translate([30,30,0]) circle(4,$fn=100);
            }
        }
        color("green") translate([0,-3,2]) linear_extrude(30) square([30,3]);
    }
    // light weight hole
    translate([0,40,0]) linear_extrude(5) hull() {
        translate([5,-25,0]) circle(4,$fn=100);
        translate([25,-25,0]) circle(4,$fn=100);
        translate([5,30,0]) circle(4,$fn=100);
        translate([25,30,0]) circle(4,$fn=100);
    }
    // screw hole
    translate([3.25,83.25,0]) linear_extrude(5) circle(1.5,$fn=100);
    translate([26.75,83.25,0]) linear_extrude(5) circle(1.5,$fn=100);
    translate([3.25,106.75,0]) linear_extrude(5) circle(1.5,$fn=100);
    translate([26.75,106.75,0]) linear_extrude(5) circle(1.5,$fn=100);
    // fan hole
    translate([15,95,0]) linear_extrude(5) circle(13,$fn=100);
    // scrape line
    translate([-10,-5.5,-0.5]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(50) square([3,3]);
}