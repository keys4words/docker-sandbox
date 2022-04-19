def find_factors(x):
    result = [1]
    if x > 1:
        for i in range(2,x+1):
            if x % i == 0:
                result += [i]
    return result
