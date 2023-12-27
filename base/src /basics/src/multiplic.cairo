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
    // Existing code for product
    ...

    // Demonstrate sum
    let (sum_result) = calculate_sum(4, 3);
    serialize_word(sum_result);

    // Demonstrate difference
    let (difference_result) = calculate_difference(5, 2);
    serialize_word(difference_result);

    // Demonstrate division
    let (division_result) = calculate_division(10, 2);
    serialize_word(division_result);
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

