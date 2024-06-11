alphabet:.Q.A;
nameGen:{
   raze{
    alphabet rand til count alphabet
   }each til 5
 }
namesGen:{
    numName:x;
    names:nameGen each til numName;
    names
 }

names:namesGen[2000]