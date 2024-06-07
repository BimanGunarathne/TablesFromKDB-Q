number:1 2 3 4 5 6 7 8 9 0;
numNumbers:{
   raze{
    number rand til count number
   }each til 10
 }
numsGen:{
    numNums:x;
    numbers:numNumbers each til numNums;
    numbers
 }

numbers:numsGen[100000]