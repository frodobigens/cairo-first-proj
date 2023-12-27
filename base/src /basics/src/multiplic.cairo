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
    // Calling calculate_product with 2 and 2.
    let (result) = calculate_product(2, 2);

    // Serialize and output the result.
    serialize_word(result);
    return ();
}
