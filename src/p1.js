import * as R from "rambda";

//create a range

const range = R.range(1, 1000);

//check if number divisible by 3
const divBy3 = (n) => n % 3 === 0;

//check if number is divisible by 5
const divBy5 = (n) => n % 5 === 0;

//compose a function that will check if a number is divisible by 3 or 5
const divBy3or5 = R.either(divBy3, divBy5);

//filter on range, and curry on the inputrange
const result = R.pipe(R.filter(divBy3or5), R.sum)(range);

console.log(result);
