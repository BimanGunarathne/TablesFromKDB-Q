alphabet:.Q.A;
nameGen:{
   raze{
    alphabet rand til count alphabet
   }each til 4
 }
namesGen:{
    numName:x;
    names:nameGen each til numName;
    names
 }

names:namesGen[100000]