const multiplyBy = (fac) => {
  const multiply = (n) => n * fac;
  return multiply;
}

const square = (n) => n * n;

const compose = (func1, func2) => {
  return (n) => {
    return func2(func1(n));
  }
}

const myCal = compose(square, multiplyBy);

const fac = 0.1;
const nums = [1, 2, 3, 4, 5, 6, 7, 8, 9];
const transformedNums = nums.map((n) => myCal(n)(fac));
console.log(transformedNums);
