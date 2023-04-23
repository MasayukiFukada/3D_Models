difference() {
    union(){
        linear_extrude(10,center=false,scale=[0.7,0.7]) circle(r=20,$fn=100);
        translate([0,0,5]) cylinder(20,13,13);
    }
    translate([0,0,5]) color("red") cylinder(20,8,8);
}