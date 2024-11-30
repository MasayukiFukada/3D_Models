difference() {
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