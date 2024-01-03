difference(){
    union() {
        rotate([0,15,0]) translate([-10,-10,0]) linear_extrude(30) square([115,115]);
        translate([48,47.5,2.5]) rotate([0,180,45]) cylinder(33,250,65,$fn=4);
    }
    // メモスペース
    rotate([0,15,0]) translate([0,0,3]) linear_extrude(50) square([95,95]);
    // 指めくり
    rotate([0,15,0]) translate([105,47.5,-20]) linear_extrude(50) circle(20,$fn=100);
    // 斜めカット
    rotate([0,29,0]) translate([-10,-20,32]) linear_extrude(50) square([150,150]);
    // 飾り
    translate([-20,-35,25]) rotate([0,15,0]) rotate([40,0,0]) rotate([0,90,0]) linear_extrude(200) square([20,50]);
    translate([-20,95,55]) rotate([0,15,0]) rotate([-40,0,0]) rotate([0,90,0]) linear_extrude(200) square([20,50]);
    // 切り落し
    translate([95,300,-50]) rotate([0,15,0]) rotate([90,0,0]) linear_extrude(500) square([150,150]);
    translate([80,300,-37]) rotate([0,65,0]) rotate([90,0,0]) linear_extrude(500) square([50,50]);
    translate([-221.5,300,0]) rotate([0,70,0]) rotate([90,0,0]) linear_extrude(500) square([200,200]);
    translate([-20,105,50]) rotate([0,90,0]) linear_extrude(200) square([200,200]);
    translate([-20,-210,50]) rotate([0,90,0]) linear_extrude(200) square([200,200]);
    translate([-50,-114.5,1.0]) rotate([0,0,-6.5]) rotate([23.5,0,0]) rotate([0,90,0]) linear_extrude(200) square([100,100]);
    translate([-50,102,5]) rotate([0,0,6.5]) rotate([-23.5,0,0]) rotate([0,90,0]) linear_extrude(200) square([100,100]);
}