
difference() {
    linear_extrude(3) hull(){
        translate([-28,7,0]) circle(2,$fn=100);
        translate([28,7,0]) circle(2,$fn=100);
        translate([-28,-7,0]) circle(2,$fn=100);
        translate([28,-7,0]) circle(2,$fn=100);
    }
    translate([0,0,0.3]) linear_extrude(3) square([55,15],center=true);
}