difference() {
    //lid( 実際は 5 mm厚 )
    translate([-13,0,0]) linear_extrude(5) hull() {
        translate([1,11,0]) circle(3,$fn=100);
        translate([93,11,0]) circle(3,$fn=100);
        translate([1,55,0]) circle(3,$fn=100);
        translate([93,55,0]) circle(3,$fn=100);
    }
    // 指かけ
    translate([35,3,0]) linear_extrude(10) circle(10,$fn=100);
    translate([35,63,0]) linear_extrude(10) circle(10,$fn=100);
    //磁石
    translate([-10,33,2]) linear_extrude(4) circle(3.1,$fn=100);
    translate([78,33,2]) linear_extrude(4) circle(3.1,$fn=100);
    //蓋縁
    #translate([-16,4,6]) rotate([0,0,90]) rotate([0,45,0]) rotate([90,0,0]) linear_extrude(100) square([5,5]);
    #translate([-16,55,6]) rotate([0,0,90])  rotate([0,45,0]) rotate([90,0,0]) linear_extrude(100) square([5,5]);
    //剥し
    #translate([-19,85,-2]) rotate([0,45,0]) rotate([90,0,0]) linear_extrude(100) square([5,5]);
    #translate([80,85,-2]) rotate([0,45,0]) rotate([90,0,0]) linear_extrude(100) square([5,5]);
}

