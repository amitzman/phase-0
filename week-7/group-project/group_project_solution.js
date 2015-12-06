function arrayMath(array){

  var sum = getSum(array), median = getMedian(array), mean = getMean(array);
  console.log('Your calculations are complete, the sum is '+sum+', the median is '+median+' and the mean is '+mean);
};

function getSum(array){
  return array.reduce(function(a,b) {return a+b;});  //Not supported by all browsers
};

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

function getMean(array){
  return getSum(array)/array.length;
};

arrayMath([5, 1, 9, 10, 100]);



// INITIAL SOLUTION

// function arrayMath(array){

//   var sum, median, mean;
//      sum = getSum(array);
//   median = getMedian(array);
//     mean = getMean(array);
//   console.log('Your calculations are complete, the sum is '+sum+', the median is '+median+' and the mean is '+mean);
// }

// function getSum(array){
//   var total = 0;
//   array.forEach(function(el){
//     total += el;
//   });
//   return total;
// }
// function getMedian(array){
//   array.sort(function(a, b){return a-b});
//   var median, center;
//   var len = array.length;
//   isEven = (len % 2 == 0) ? true: false;
//   if(isEven){
//      var indexes = [len/2,len/2-1];
//      var total = 0;
//      indexes.forEach(function(el){
//        total += this[el];
//      }, array);
//      median = total/2;
//   }
//   else{
//     center = (len-1)/2;
//     median = array[center];
//   }

//   return median;
// }

// function getMean(array){
//   var total = 0;
//   array.forEach(function(el){
//     total += el;
//   });
//   return total/array.length;

// }

// arrayMath([5,4,1,20,5]);