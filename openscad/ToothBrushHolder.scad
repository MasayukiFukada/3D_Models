difference() {
    union() {
        linear_extrude(4) hull() {
            translate([-8,-2]) circle(r=5,$fn=100);
            translate([-8,2]) circle(r=5,$fn=100);
            translate([6,-9.5]) circle(r=5,$fn=100);
            translate([6,9.5]) circle(r=5,$fn=100);
        }
        color("green") translate([6,9.5,0]) cylinder(20,5,3,$fn=100);
        color("green") translate([6,-9.5,0]) cylinder(20,5,3,$fn=100);
        color("green") translate([-8.0,0,0]) cylinder(20,5,3,$fn=100);
    }
    color("blue") translate([0,0,1.5]) linear_extrude(10) circle(r=6.6,$fn=100);
    color("gray") translate([-1,25,12]) rotate([90,0,0]) cylinder(50,7,7,$fn=100);
}