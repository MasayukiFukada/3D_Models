difference() {
    // ベース部分
    linear_extrude(17) union() {
        translate([5,5,0]) hull(){
            translate([-8,-8]) circle(3,$fn=100);
            translate([59,-8,0]) circle(3,$fn=100);
            translate([-8,79,0]) circle(3,$fn=100);
            translate([59,79,0]) circle(3,$fn=100);
        }
    }
    // 収納
    //translate([5,18,3]) linear_extrude(20) square([50,45]);
    translate([0,0,3]) linear_extrude(20) hull() {
        translate([4.5,20]) circle(4,$fn=100);
        translate([55.5,20,0]) circle(4,$fn=100);
        translate([4.5,60,0]) circle(4,$fn=100);
        translate([55.5,60,0]) circle(4,$fn=100);
    }
    // マグネット埋め込み
    translate([45,10,6]) linear_extrude(4) circle(3.1,$fn=100);
    translate([15,70,6]) linear_extrude(4) circle(3.1,$fn=100);
    // 蓋
    translate([0,0,10]) color("red") difference() {
        linear_extrude(10) union() {
            translate([5,5,0]) hull(){
                translate([0,0,0]) circle(4.5,$fn=100);
                translate([50,0,0]) circle(4.5,$fn=100);
                translate([0,70,0]) circle(4.5,$fn=100);
                translate([50,70,0]) circle(4.5,$fn=100);
            }
            translate([3,3,0]) circle(7,$fn=100);
            translate([58,3,0]) circle(7,$fn=100);
            translate([3,78,0]) circle(7,$fn=100);
            translate([58,78,0]) circle(7,$fn=100);
        }
        // マグネット埋め込み
        //translate([45,10,2]) linear_extrude(4) circle(3.1,$fn=100);
        //translate([15,70,2]) linear_extrude(4) circle(3.1,$fn=100);
    }
}


%translate([0,0,20]) difference() {
    // ベース部分
    linear_extrude(5) union() {
        translate([5,5,0]) hull(){
            translate([0,0,0]) circle(3,$fn=100);
            translate([50,0,0]) circle(3,$fn=100);
            translate([0,70,0]) circle(3,$fn=100);
            translate([50,70,0]) circle(3,$fn=100);
        }
        translate([3,3,0]) circle(5,$fn=100);
        translate([58,3,0]) circle(5,$fn=100);
        translate([3,78,0]) circle(5,$fn=100);
        translate([58,78,0]) circle(5,$fn=100);
    }
    // 指をかける部分とか
    translate([20,3,2]) linear_extrude(4) circle(8,$fn=100);
    translate([42,77,2]) linear_extrude(4) circle(8,$fn=100);
    // マグネット埋め込み
    translate([45,10,2]) linear_extrude(4) circle(3.1,$fn=100);
    translate([15,70,2]) linear_extrude(4) circle(3.1,$fn=100);
    // 装飾
    translate([9,-2,5]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(43) square([5,5]);
    translate([9,75,5]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(43) square([5,5]);
    translate([2,9,9]) rotate([0,45,0]) rotate([-90,0,0]) linear_extrude(63) square([5,5]);
    translate([58,9,9]) rotate([0,45,0]) rotate([-90,0,0]) linear_extrude(63) square([5,5]);
}