function numberOfSteps(num) {
    if (num >= 0) {
        step = 0
        while (num != 0) {
            if ((num % 2) == 0) {
                num /= 2
                step += 1
            }
            else {
                num -= 1
                step += 1
            }
        }
        return step
    }
    else {
        return 'Number must be greater than zero'
    }
}

console.log(numberOfSteps(14))
console.log(numberOfSteps(123))
console.log(numberOfSteps(0))
console.log(numberOfSteps(-5))