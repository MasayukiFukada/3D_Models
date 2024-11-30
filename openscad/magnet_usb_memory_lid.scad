difference(){
    linear_extrude (4.5) hull(){
        translate([12,12,0]) circle(9,$fn=100);
        translate([12,-12,0]) circle(9,$fn=100);
        translate([-12,-12,0]) circle(9,$fn=100);
        translate([-12,12,0]) circle(9,$fn=100);
    }
    // 磁石穴
    translate([15,15,1]) linear_extrude(4) circle(3.12,$fn=100);
    translate([-15,-15,1]) linear_extrude(4) circle(3.12,$fn=100);
    // 溝
    translate([17,17,1]) linear_extrude(4)  rotate(-45) square([0.5,2]);
    translate([-18.5,-18.5,1]) linear_extrude(4)  rotate(-45) square([0.5,2]);
    // 指を掛ける部分
    translate([20,0,1.5]) linear_extrude(3) circle(8,$fn=6);
    translate([-20,0,1.5]) linear_extrude(3) circle(8,$fn=6);
}
