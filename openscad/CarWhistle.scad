/*
開発履歴メモ:
2025/03/09 : v 1.0 : 両方とも口で吹いて音が鳴った。空洞長い方に合わせた方がくっきり音が鳴る
- 斜めの切れ込みが結構潰れてたので厚さ 3 mm 欲しい( が、要検討 )
- 断面積減ると流速や圧力上がりそうなので、拭き口も狭めたりすると良さそう
- ピーホイッスルを意識したけど、ビートホイッスルの構造の方が良いかも
- ストームホイッスル気になる
- 雨水溜まっても水笛の構造には近づかない気がする( 要検証 )
*/
difference() {
    // 外形
    color("Salmon")
    union() {
        difference() {
            translate([17, -12, 0])
            rotate([0, 180, 0])
            rotate([-90, 0, 0])
            linear_extrude(60) // 52
                hull() {
                    translate([0,  -1, 0]) circle(1, $fn=50);
                    translate([33, -1, 0]) circle(1, $fn=50);
                    translate([28,  11, 0]) circle(1, $fn=50);
                    translate([ 5,  11, 0]) circle(1, $fn=50);
                }

            // 窓
            union() {
                translate([2, 16, 10])
                    linear_extrude(5)
                    square([8, 10]);

                translate([-9, 16, 10])
                    linear_extrude(5)
                    square([8, 10]);
            }
        }

        // 音鳴らす突起
        translate([11, 14, 11.5])
        rotate([0, -90, 0])
        linear_extrude(21)
            hull() {
                translate([0  , -1, 0]) circle(1, $fn=50);
                translate([0.5,  0, 0]) circle(1, $fn=50);
                translate([0  , 5, 0]) circle(1, $fn=50);
            }

        // 前方突起
        translate([11, 42, 11.5])
        rotate([0, -90, 0])
        linear_extrude(21)
            hull() {
                translate([0  , -3, 0]) circle(1, $fn=50);
                translate([1,  0, 0]) circle(1, $fn=50);
                translate([0  , 5, 0]) circle(1, $fn=50);
            }
    }

    // 内部の空洞
    color("aquamarine")
    union() {
        rotate([0, -90, 0])
        linear_extrude(10)
            hull() {
                circle(1, $fn=50);
                translate([10,  0, 0]) circle(1, $fn=50);
                translate([10, 25, 0]) circle(1, $fn=50);
                translate([ 0, 15, 0]) circle(1, $fn=50);
            }

        translate([0, 25, 9])
        rotate([0, -90, 0])    
        linear_extrude(10)
            square([2,15]);

        translate([11, 0, 0])
        rotate([0, -90, 0])
        linear_extrude(10)
            hull() {
                translate([0, -10, 0]) circle(1, $fn=50);
                translate([10,-10, 0]) circle(1, $fn=50);
                translate([10, 25, 0]) circle(1, $fn=50);
                translate([ 0, 15, 0]) circle(1, $fn=50);
            }

        translate([11, 25, 9])
        rotate([0, -90, 0])    
        linear_extrude(10)
            square([2,15]);
    }

    // 窓1
    color("DarkGreen")
    translate([0,1,9])
    rotate([-20, 0, 0])
    union() {
        translate([2, 16, 10])
            linear_extrude(1)
            square([8, 10]);

        translate([-9, 16, 10])
            linear_extrude(1)
            square([8, 10]);
    }

    // 窓2
    #color("Lime")
    translate([0,-5, 14.3])
    rotate([-30, 0, 0])
    union() {
        translate([2, 16, 10])
            linear_extrude(1.5)
            square([8, 10]);

        translate([-9, 16, 10])
            linear_extrude(1.5)
            square([8, 10]);
    }

    // 窓下側
    color("Violet")
    union() {
        translate([2, 10, 10])
            linear_extrude(1)
            square([8, 20]);

        translate([-9, 10, 10])
            linear_extrude(1)
            square([8, 20]);
    }

    // 吹き込み口
    #
    translate([20, 38, 3])
    difference() {
        rotate([0, -90, 0])
        linear_extrude(40)
        hull() {
            translate([-1, 10, 0]) circle(3, $fn=50);
            translate([2, 2, 0]) circle(1, $fn=50);
            translate([6.5, 0, 0]) circle(1, $fn=50);
            translate([3, 10, 0]) circle(3, $fn=50);
        }

        translate([-1.5, -5, -8])
        rotate([0, -23, 0])
        linear_extrude(20)
        square([10, 20]);

        translate([-46.5, -5, -3])
        rotate([0, 23, 0])
        linear_extrude(20)
        square([10, 20]);
    }
}
