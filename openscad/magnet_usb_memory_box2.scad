difference() {
    translate([-16,-3,-3]) linear_extrude(20.5) hull() {
        circle(3,$fn=100);
        translate([100,0,0]) circle(3,$fn=100);
        translate([0,72,0]) circle(3,$fn=100);
        translate([100,72,0]) circle(3,$fn=100);
    }
    //usb memories
    /*
    translate([0,-2,0]) union() {
        linear_extrude(12) square([22,70]);
        translate([23,0,0]) linear_extrude(12) square([22,70]);
        translate([46,0,0]) linear_extrude(12) square([22,70]);
    }
    */

    linear_extrude(18) hull() {
        circle(3,$fn=100);
        translate([68,0,0]) circle(3,$fn=100);
        translate([0,66,0]) circle(3,$fn=100);
        translate([68,66,0]) circle(3,$fn=100);
    }
    //lid( 実際は 5 mm厚 )
    translate([-13,0,12]) linear_extrude(7) hull() {
        translate([0,10,0]) circle(3,$fn=100);
        translate([94,10,0]) circle(3,$fn=100);
        translate([0,56,0]) circle(3,$fn=100);
        translate([94,56,0]) circle(3,$fn=100);
    }
    //磁石
    translate([-10,33,8]) linear_extrude(4) circle(3.1,$fn=100);
    translate([78,33,8]) linear_extrude(4) circle(3.1,$fn=100);
    //剥し
    translate([-23,85,-4]) rotate([0,45,0]) rotate([90,0,0]) linear_extrude(100) square([5,5]);
    translate([84,85,-4]) rotate([0,45,0]) rotate([90,0,0]) linear_extrude(100) square([5,5]);
}

