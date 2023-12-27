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
    alloc_locals;

    let FIRST_NUMBER = 1;
    let SECOND_NUMBER = 10;

    // Calculate the sum of FIRST_NUMBER and SECOND_NUMBER.
    let (total_sum) = add_numbers(num_a=FIRST_NUMBER, num_b=SECOND_NUMBER);

    // Serialize and output the result.
    serialize_word(total_sum);
    return ();
}

func multiply_numbers(num_a: felt, num_b: felt) -> (result: felt) {
    return (result=num_a * num_b);
}
