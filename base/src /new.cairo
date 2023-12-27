func main() {
    alloc_locals;
    local a = 1000;
    local b = 2000;

    // Calculating the sum of a and b
    local sum = a + b;

    // Storing the values in memory
    [ap] = a, ap++;
    [ap] = b, ap++;
    [ap] = sum, ap++;

    ret;
}
