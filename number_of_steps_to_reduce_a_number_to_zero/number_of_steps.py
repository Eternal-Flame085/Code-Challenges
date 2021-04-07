def numberOfSteps(num):
    if num >= 0:
        steps = 0
        while num != 0:
            if (num % 2) == 0:
                num /= 2
                steps += 1
            else:
                num -= 1
                steps += 1
        return steps
    else:
        return 'Number must be greater than zero'

print(numberOfSteps(14))
print(numberOfSteps(123))
print(numberOfSteps(0))
print(numberOfSteps(-5))