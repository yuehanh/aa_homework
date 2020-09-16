function madLib(verb, adj, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`);
};

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

function fizzBuzz(arr) {
    const resultArr = [];

    arr.forEach(el => {
        if ((el % 3 === 0) ^ (el % 5 === 0)) {
            resultArr.push(el);
        }
    });
    return resultArr;
}

function isPrime(number) {
    if (n < 2) { return false; }

    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            return false;
        }
    }

    return true;
}

function sumOfNPrimes(n) {
    let sum = 0;
    let counter =0;
    let i = 2
    while (counter < n) {
        if (isPrime(i)) {
            sum +=i;
            counter++;
        }
        i++;
    }
    return sum;
}