union(){
    difference(){
        linear_extrude(70){
                union(){
                    polygon([[0,8],[2,10],[44.5,10],[46.5,8],[46.5,0],[0,0]]);
                    translate([0,-5,0]) square([5,8]);
                    translate([41.5,-5,0]) square([5,5]);
                }
        }
        // 長い方の溝
        color([0.8,0,0])
        translate([0,3.5,28.6]){
            linear_extrude(12.8){
                square([46.5,3]);
            }
        }
        // 短い方の溝
        color([0,0,0.8])
        translate([0,4,29]){
            linear_extrude(12){
                square([46.5,6]);
            }
        }
    }
    // 補正（上の溝）
    color([0,0.8,0])
    translate([0,5.3,41.4]){
        hull(){
            translate([0,0.5,-0.4]) cube([46.5,1,0.01]);
            cube([46.5,1.5,0.01]);
        }
    }

    // 補正（下の溝）
    color([0,0.8,0])
    translate([0,5.3,28.59]){
        hull(){
            translate([0,0.5,0.4]) cube([46.5,1,0.01]);
            cube([46.5,1.5,0.01]);
        }
    }
}