// 大枠サイズ
l= 95;
// 肉抜き穴サイズ
s=l/2.8;

difference(){
    union(){
        // 一応１枚板
        linear_extrude(1) square([l,l]);
        // 補強の骨
        translate([0,0,1]) linear_extrude(1){
            difference(){
                square([l,l]);
                // 肉抜き
                translate([((l/2)-s)/2,((l/2)-s)/2,0]) square([s,s]);
                translate([((l/2)-s)/2+l/2,((l/2)-s)/2,0]) square([s,s]);
                translate([((l/2)-s)/2,((l/2)-s)/2+l/2,0]) square([s,s]);
                translate([((l/2)-s)/2+l/2,((l/2)-s)/2+l/2,0]) square([s,s]);
                // 一筆書き工夫
                translate([0,(l/2)/2,0]) square([l/1.5,0.5]);
                translate([l-l/1.5,(l/2)+(l/4),0]) square([l/1.5,0.5]);
            }
        }
        translate([0,0,2]){
            rotate([-20,0,0]){
                hull(){
                    leg=25;
                    linear_extrude(leg) square([1,3]);
                    translate([l-1,0,0]) linear_extrude(leg) square([1,3]);
                }
            }
        }
    }
    color([0.8,0,0]) translate([0,-4.5,1.5]) rotate([-45,0,0]) linear_extrude(3) square([l,5]);
}

translate([0,4,1.8]){
    rotate([90,360,90]){
        linear_extrude(95)
        polygon([[1,0],[0,3],[-1,0]]);
    }
}