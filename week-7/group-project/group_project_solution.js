//As a user, I want to be able to submit a group of numbers then it will return the average, median and sum of the group.

function arrayMath(array){

  var sum = getSum(array), median = getMedian(array), mean = getMean(array);
  console.log('Your calculations are complete, the sum is '+sum+', the median is '+median+' and the mean is '+mean);
};


//As a user, I want to be able to submit a group of numbers then it will return the sum of all the numbers in the group.
function getSum(array){
  return array.reduce(function(a,b) {return a+b;});  //Not supported by all browsers
};

//As a user, I want to be able to submit a group of numbers then it will return the median of the group.
function getMedian(array){
  array.sort(function(a, b){return a-b});
  var len = array.length;
  if(len % 2 == 0){
    return (array[len/2] + array[(len/2)-1])/2;
  }
  else{
    return array[(len-1)/2];
  }
};

//As a user, I want to be able to submit a group of numbers then it will return the average of the group.
function getMean(array){
  return getSum(array)/array.length;
};

arrayMath([5, 1, 9, 10, 100]);


