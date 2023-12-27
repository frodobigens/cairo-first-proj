%builtins output

from starkware.cairo.common.serialize import serialize_word

// Function to calculate the product of two numbers.
// Takes two parameters: first_num and second_num.
// Returns the product of first_num and second_num.
func calculate_product(first_num: felt, second_num: felt) -> (product: felt) {
    let product = first_num * second_num;
    return (product);
}

func main{output_ptr: felt*}() {
    // Calculate various results
    ...

    // Store results in an array
    local values = [product_result, sum_result, difference_result, division_result];
    
    // Serialize all results
    serialize_values(values);
}



func calculate_sum(num1: felt, num2: felt) -> (sum: felt) {
    return (sum = num1 + num2);
}

func calculate_difference(num1: felt, num2: felt) -> (difference: felt) {
    return (difference = num1 - num2);
}

func calculate_division(num1: felt, num2: felt) -> (quotient: felt) {
    assert num2 != 0, "Division by zero";
    return (quotient = num1 / num2);
}

func calculate_modulo(num1: felt, num2: felt) -> (modulo: felt) {
    assert num2 != 0, "Modulo by zero";
    return (modulo = num1 % num2);
}

func calculate_power(base: felt, exponent: felt) -> (power: felt) {
    let power = 1;
    for i in range(exponent) {
        power = power * base;
    }
    return (power);
}

func serialize_values{output_ptr: felt*}(values: felt*) {
    for i in range(4) {
        serialize_word(values[i]);
    }
}

