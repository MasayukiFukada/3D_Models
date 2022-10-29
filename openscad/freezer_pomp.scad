difference(){
    union(){
        linear_extrude(5) circle(9,$fn=100);
        translate([0,0,3]) linear_extrude(2)  hull() {
            translate([0,20,0]) circle(4,$fn=100);
            translate([0,-20,0]) circle(4,$fn=100);
        }
    }
    translate([5,-0.25,1]) linear_extrude(4) square([5,0.5]);
    translate([0,0,1]) linear_extrude(4) circle(6.6,$fn=100);
}
