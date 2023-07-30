difference() {
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