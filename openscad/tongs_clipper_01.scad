difference(){
    linear_extrude(21) hull(){
        square([30,57],center=true);
        translate([0,18,0]) circle(15,$fn=100);
        translate([0,-18,0]) circle(15,$fn=100);
    }
    // メインくり抜き
    linear_extrude(18) square([30,37],center=true);
    // 良い感じのくぼみ（兼ストッパー）
    linear_extrude(18) hull(){
        translate([0,-13,0]) circle(7,$fn=100);
        translate([0,13,0]) circle(7,$fn=100);
    }
    // 磁石穴
    translate([0,26,0]) linear_extrude(3.5) circle(3.12,$fn=100);
    translate([0,-26,0]) linear_extrude(3.5) circle(3.12,$fn=100);
    // 溝
    linear_extrude(3.5) square([0.1,55],center=true);
}