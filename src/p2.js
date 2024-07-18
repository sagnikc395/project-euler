import * as R from "rambda";

//given in question
const seqLimit = 4_000_000;

//generate the next fibonacci

const nextFibo = ([a, b]) => [b, a + b];

//check if even
const isEven = (n) => n % 2 === 0;

// generate fibonacci to the given limit
const fibsUpTo = (limit) => {
  const genFibs = ([a, b]) =>
    a > limit ? [] : [a, ...genFibs(nextFibo([a, b]))];

  return genFibs([1, 2]);
};

//check if a number is less than or equal to the limit
const isLessThanOrEqual = (limit) => (n) => n <= limit;

//handler to the methods aka main
const sumEvenFibos = R.pipe(
  fibsUpTo,
  R.takeWhile(isLessThanOrEqual(seqLimit)),
  R.filter(isEven),
  R.sum
);

//result
const result = sumEvenFibos(seqLimit);

console.log(result);
