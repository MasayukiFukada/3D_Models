difference() {
    union(){
        //てっぺん部分
        linear_extrude(3){
            difference(){
                // 単純な輪
                difference(){
                    circle(25);
                    difference() {
                        circle(20);
                        circle(17);
                    }
                }
                // 溝
                for(i=[0:45:+360]){
                    rotate([0,0,i])
                    translate([19,-1.5,0]) {
                        square([6,3]);
                    }
                }
            }
        }
        // 円筒部分
        translate([0,0,3]) {
            color([0,0,0.5])
            linear_extrude(5){
                circle(25);
            }
            translate([0,0,5]){
                color([0.5,0.5,0])
                cylinder(3,25,19);
            }
            translate([0,0,8]){
                color([0.8,0,0])
                linear_extrude(20){
                    difference(){
                        circle(19);
                        circle(17.5);
                    }
                }
            }
        }
    }
    translate([0,0,1]){
        union(){
            // 磁石穴周りの余分なスペース
            translate([0,0,4]){
                linear_extrude(7){
                    circle(12);
                }
            }
            // 磁石(13mm)穴
            color([0,0.8,0])
            linear_extrude(10){
                circle(6.5);
            }
        }
    }    
}