color ([1.0,0,0,0.5])difference() {
    // ベース
    translate([0,0,-3]) linear_extrude(16.5) {
        translate([-14.25,5,0]) {
            hull(){
                translate([26.5,2]) circle(2,$fn=100);
                translate([26.5,31.5]) circle(2,$fn=100);
                translate([2,31.5]) circle(2,$fn=100);
                translate([2,2]) circle(2,$fn=100);
            }
        }
    }
    // 中の空洞
    translate([0,1,-1]) linear_extrude(12.5)  {
        square([23.5,68],center=true);
        circle(21,$fn=100);
    }
    // 穴
    translate([0,0,-3]) linear_extrude(20) {
        hull(){
            translate([0,30,0]) circle(2,$fn=100);
            translate([0,12,0]) circle(2,$fn=100);
        }
    }
    // 上カバーの欠け
    translate([0,0,11]) linear_extrude(3) square([30,32.5],center=true);
    // 穴の強化
    translate([0,0,-3]) linear_extrude(1) square([0.1,100]);
}
//*/
// 鍵
/*
translate([0,0,0]) difference(){
    color("gold") linear_extrude(12)  square([24,68],center=true);
    translate([0,30,0]) linear_extrude(12) circle(3);
}
//*/