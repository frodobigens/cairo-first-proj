%builtins output

from starkware.cairo.common.serialize import serialize_word

// Function to add two numbers and return the sum.
// Parameters are two numbers (num_a and num_b).
// Returns the sum of num_a and num_b.
func add_numbers(num_a: felt, num_b: felt) -> (result: felt) {
    alloc_locals;
    let result = num_a + num_b;
    return (result);
}

func main{output_ptr: felt*}() {
    let (sum) = add_numbers(FIRST_NUMBER, SECOND_NUMBER);
    serialize_word(sum);

    let (difference) = subtract_numbers(FIRST_NUMBER, SECOND_NUMBER);
    serialize_word(difference);

    let (product) = multiply_numbers(FIRST_NUMBER, SECOND_NUMBER);
    serialize_word(product);

    let (quotient) = divide_numbers(FIRST_NUMBER, SECOND_NUMBER);
    serialize_word(quotient);
}


func multiply_numbers(num_a: felt, num_b: felt) -> (result: felt) {
    return (result=num_a * num_b);
}

func subtract_numbers(num_a: felt, num_b: felt) -> (result: felt) {
    return (result=num_a - num_b);
}

func divide_numbers(num_a: felt, num_b: felt) -> (result: felt) {
    alloc_locals;
    if (num_b == 0) {
        local result = -1; // Indicate error
    } else {
        local result = num_a / num_b;
    }
    return (result);
}



