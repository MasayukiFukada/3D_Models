difference(){
    // ベース部分
    linear_extrude(30){
        hull(){
            // 小丸
            translate([46,0,0]) circle(2,$fn=100);
            translate([0,100,0]) circle(2,$fn=100);
            // 大丸
            translate([62,90,0]) circle(12,$fn=100);
            translate([-16,10,0]) circle(12,$fn=100);
        }
    }
    
    // 中身のスペース
    linear_extrude(28) translate([3,1,2]) square([40,98]);
    
    // 蓋を入れるスペース
    linear_extrude(7) translate([1,1,0]) {
        hull(){
            // 1 mm 短いやつ
            // 小丸
            translate([42,2,0]) circle(2,$fn=100);
            translate([2,96,0]) circle(2,$fn=100);
            // 大丸
            translate([56,86,0]) circle(12,$fn=100);
            translate([-12,12,0]) circle(12,$fn=100);
        }
    }
    
    // 磁石埋め込み穴
    translate([58,88,7]) linear_extrude(5) circle(3.1,$fn=100);
    translate([-12,12,7]) linear_extrude(5) circle(3.1,$fn=100);
    
    // 剥すやつ
    translate([-30,-4,30]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(100) square([3,3]);
    translate([-30,100,30]) rotate([45,0,0]) rotate([0,90,0]) linear_extrude(100) square([3,3]);
}


