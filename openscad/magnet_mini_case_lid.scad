difference(){
    // 蓋を入れるスペース
    linear_extrude(7) translate([1,1,0]) {
        hull(){
            // 1 mm 短いやつ
            // 小丸
            translate([41,3,0]) circle(2,$fn=100);
            translate([3,95,0]) circle(2,$fn=100);
            // 大丸
            translate([55,85,0]) circle(12,$fn=100);
            translate([-11,13,0]) circle(12,$fn=100);
        }
    }
    // 端の欠け
    translate([25,2,0]) linear_extrude(4) circle(7,$fn=100);
    translate([25,98,0]) linear_extrude(4) circle(7,$fn=100);
    // 中央
    translate([25,25,0]) linear_extrude(4) circle(7,$fn=100);
    translate([25,75,0]) linear_extrude(4) circle(7,$fn=100);
    // 磁石埋め込み穴
    translate([58,88,0]) linear_extrude(4) circle(3.1,$fn=100);
    translate([-12,12,0]) linear_extrude(4) circle(3.1,$fn=100);
}
