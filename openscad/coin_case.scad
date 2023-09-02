difference() {
    // ベース部分
    linear_extrude(15) union() {
        translate([5,5,0]) hull(){
            translate([-2.5,-2.50]) circle(3,$fn=100);
            translate([52.5,-2.5,0]) circle(3,$fn=100);
            translate([-2.5,72.5,0]) circle(3,$fn=100);
            translate([52.5,72.5,0]) circle(3,$fn=100);
        }
        translate([3,3,0]) circle(8,$fn=100);
        translate([58,3,0]) circle(8,$fn=100);
        translate([3,78,0]) circle(8,$fn=100);
        translate([58,78,0]) circle(8,$fn=100);
    }
    // 収納
    translate([5,18,3]) linear_extrude(20) square([50,45]);
    // マグネット埋め込み
    translate([45,10,6]) linear_extrude(4) circle(3.1,$fn=100);
    translate([15,70,6]) linear_extrude(4) circle(3.1,$fn=100);
    
    translate([0,0,10]) color("red") difference() {
        // ベース部分
        linear_extrude(5) union() {
            translate([5,5,0]) hull(){
                translate([0,0,0]) circle(3.3,$fn=100);
                translate([50,0,0]) circle(3.3,$fn=100);
                translate([0,70,0]) circle(3.3,$fn=100);
                translate([50,70,0]) circle(3.3,$fn=100);
            }
            translate([3,3,0]) circle(5.3,$fn=100);
            translate([58,3,0]) circle(5.3,$fn=100);
            translate([3,78,0]) circle(5.3,$fn=100);
            translate([58,78,0]) circle(5.3,$fn=100);
        }
        // マグネット埋め込み
        //translate([45,10,2]) linear_extrude(4) circle(3.1,$fn=100);
        //translate([15,70,2]) linear_extrude(4) circle(3.1,$fn=100);
    }
}