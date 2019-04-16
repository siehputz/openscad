module polypanel(side) {
// make a cylinder for whole length, subtract out
// the gaps, then modify the shapes
 rotate([0,90,0])
  difference() {
   union() {
    difference() {
     union() {
      cylinder (d=5, h=26.6, $fn=64);
      if (side == "L") { //left side
       translate([-.5,-3,26.6]) 
        rotate([0,90,0])
         cube([26.6,2.6,3]);
      }
      else {  //right side
       translate([-.5,0,26.6]) 
        rotate([0,90,0])
         cube([26.6,2.6,3]);
      }
     }
   translate([-.1,-.1,4.4])
    cylinder(d=8, h=8.1,$fn=64);
   translate([-.1,-.1,15.3])
    cylinder(d=8, h=5.7,$fn=64);
   translate([-.1,-.1,24.6])
    cylinder (d=8,h=10,$fn=64);
  }
  // rounded ends 
   
   translate([0,0,13])
    sphere (d=5,$fn=64);
   translate([0,0,24.1])
     sphere (d=5,$fn=64);
  // slightly rounded ends on first 'nub'
   translate([0,0,5.5])
    difference() {
     sphere (d=12,$fn=64);
      translate([-6.5,-6.5,-5.5])
       cube([13,13,13]);
    }
    translate([0,0,-1.1])
    difference() {
     sphere (d=12,$fn=64);
     translate([-6.5,-6.5,-7.5])
      cube([13,13,13]);
    }
  }
  // subtract out for dents in 2nd and 3rd 'nubs'
   translate([0,0,16.5])
    sphere (d=5,$fn=64);
   translate([0,0,19.7])
    sphere (d=5,$fn=64);
  }
}

