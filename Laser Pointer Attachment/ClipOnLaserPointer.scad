difference(){
cube([20.2,11,12],0);
rotate([-90,0,-90])
translate([-5.5,-6,3])
cylinder(20.43,4.65,4.65,0,$fn=100);
    rotate ([-90,0,-90])
translate([-5.5,-6,0])
cylinder(5,2,2,0,$fn=100);
}

templeHeight = 10;
totalHeight = 12.8;
ridgeHeight=8;
gapHeight=6;
UpHeight=12;

difference(){
    rotate([0,0,90])
    translate([-1,-14,UpHeight]) 
    cube([totalHeight,8,8],0);
     rotate ([0,0,90])
     translate([0,0,UpHeight])
    translate([(totalHeight-gapHeight)/2-1,-14,6])
   
cube([gapHeight,8,2],0);
     rotate ([0,0,90])
    translate ([(totalHeight-ridgeHeight)/2-1,-14,5.5])
translate([0,0,UpHeight])
  
cube([ridgeHeight,8 ,0.5],0);
     rotate ([0,0,90])
translate ([(totalHeight-templeHeight)/2-1,-14,2])
translate([0,0,UpHeight])
   
cube([templeHeight, 8,3.5],0);
    
}



