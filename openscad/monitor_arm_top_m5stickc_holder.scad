union(){
    difference(){
        union(){
            // 腕のベース部分
            color([0,0.5,0])
            linear_extrude(5){
                circle(25,$fn=50);
                translate([60,0,0]){
                    circle(15,$fn=50);
                }
                polygon([[0,22],[0,-22],[60,-15],[60,15]]);
            }
            // 接続部分の飛び出た輪
            color([0.8,0,0])
            translate([0,0,5]){
                linear_extrude(2){
                    difference() {
                        circle(19.8,$fn=50);
                        circle(17.8,$fn=50);
                    }
                }
            }
        }
        // 磁石( 約 6 mm )
        linear_extrude(4){
            circle(3.05,$fn=50);
        }
        // 磁石穴の余分な空き
        linear_extrude(1){
            circle(12,$fn=50);
        }
        // M5StickC の穴
        union(){
            translate([40,-5.5,0]){
                linear_extrude(4.3){
                    square([25,13]);
                }
            }
            translate([48,1.8,4]){
                linear_extrude(1){
                    square([9,4]);
                }
            }
        }
    }
    // M5StickCを支える枠
    color([0,0,0.5])
    translate([38.5,-7,-2.5]){
        linear_extrude(2.5){
            difference(){
                square([28,16]);
                translate([1.5,1.5,0]){
                    square([25,13]);
                }
            }
        }
    }
}