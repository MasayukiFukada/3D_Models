union(){
        // 長い方の溝
        color([0,0.8,0])
            linear_extrude(4.7){
                square([46.5,2.7]);
            }
        // 短い方の溝
        color([0,0.8,0.8])
            linear_extrude(4.5){
                square([46.5,6]);
            }
            // 半円
            linear_extrude(39){
                translate([23.25,6,0]){
                    difference(){
                        circle(20,$fn=50);
                        translate([-23.25,-23.25,0]) square([46.5,23.25]);
                    }
                }
            }
        color([0.8,0,0])
        translate([-10,15,39]){
            rotate([0,90,0]){
                cylinder(66,5,5);
            }
        }        
}