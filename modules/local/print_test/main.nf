process PRINT_TEST {
    input:
    val test_string

    script:
    """
    echo $test_string
    """
}