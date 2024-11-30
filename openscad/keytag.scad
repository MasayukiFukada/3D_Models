difference() {
    linear_extrude(5) union() {
        hull(){
            translate([0,0,0]) circle(3,$fn=100);
            translate([50,0,0]) circle(3,$fn=100);
            translate([50,15,0]) circle(3,$fn=100);
            translate([0,15,0]) circle(3,$fn=100);
        }
        translate([-2.5,7.5,0]) circle(5,$fn=100);
    }
    translate([-3.5,7.5,0]) linear_extrude(5) circle(2,$fn=100);
    color("red") translate([1,0,3]) linear_extrude(3) hull(){
        translate([2,2,0]) circle(2,$fn=100);
        translate([38,2,0]) circle(2,$fn=100);
        translate([38,13,0]) circle(2,$fn=100);
        translate([2,13,0]) circle(2,$fn=100);
    }
}
