ODB = 83;
ODT = 80;
IDB = 78;
IDT = 75;
h = 12;
steps = (360+270);
$fn = 100;
union(){
    difference(){
        union(){
            cylinder(h,ODB/2,ODT/2);
            for(i = [0:360/18:360]){
                rotate([0,0,i])translate([ODB/2-9,0,0])
                cylinder(h,10,8.5);
            }
        }
        cylinder(9.5,IDB/2,IDT/2);
        difference(){
            translate([0,0,h-2])cylinder(2,ODT/2+2,ODT/2+2);
            translate([0,0,h-2])cylinder(2,ODT/2-2,ODT/2-2);
        }
    }
    translate([0,0,h-2])rotate_extrude(){
        translate([ODT/2-2, 0,0])
        circle(r = 2);
    }
}


difference(){
    for(i = [1:1:steps]){
        rotate([0,0,i])translate([IDB/2-1.5-i*1.5/(steps),0,1+i*8.5/(   steps)])cube([1.5,1,1.5]);
    }
    translate([IDB/2-1.5,0,1])rotate([0,0,18])cube([1.5,10,2]);
}