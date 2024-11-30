/*
日本の硬貨
  1円 20.0mm 約1.5mm 1.0g
  5円 22.0mm 約1.5mm 3.75g
 10円 23.5mm 約1.5mm 4.5g
 50円 21.0mm 約1.7mm 4.0g
100円 22.6mm 約1.7mm 4.8g
500円 26.5mm 約1.8mm 7.0g
*/

// 雑に硬貨を放り込める投入口(ある程度束で突っ込めるやつ)
difference(){
    linear_extrude(10) union() {
        // 仮硬貨
        //translate([0,13.5,0]) circle(13.5,$fn=100);
        polygon([[-19,0],[-15.7,13.5],[15.7,13.5],[19,0]]);
        translate([-35,-60,0]) square([70,60]);
    }
    color("red")translate([0,0,4]) linear_extrude(6)  union(){
        //polygon([[-17,-2],[-13.7,13.5],[13.7,13.5],[17,-2]]);
        translate([-33,-58,0]) square([66,56]);
    }
    translate([0,0,2]) linear_extrude(8) polygon([[-17,-2],[-13.7,13.5],[13.7,13.5],[17,-2]]);
}
translate([0,0,3]) linear_extrude(1.9,scale=[1,0.01],center=true,slices=20) polygon([[-17,-2],[-13.7,13.5],[13.7,13.5],[17,-2]]);