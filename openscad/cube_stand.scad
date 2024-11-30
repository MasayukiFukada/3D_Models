difference() {
    color("red") translate([-35,0,0])  rotate([0,90,0]) linear_extrude(70) hull(){
        translate([7,12,0]) circle(r=3,$fn=100);
        translate([-7,12,0]) circle(r=3,$fn=100);
        translate([7,-12,0]) circle(r=3,$fn=100);
        translate([-7,-12,0]) circle(r=3,$fn=100);
    }
    translate([0,-15,18]) rotate([30,0,0]) translate([-75/2,0,0]) rotate([0,90,0]) linear_extrude(75) square([20,20]);
}
