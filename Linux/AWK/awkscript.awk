#!/usr/bin/env awk -f
#
# Sample awk script to demonstrate:
# - BEGIN block
# - Variables
# - Arrays
# - Loops
# - User-defined function
#

# ------------------------
# User-defined function
# ------------------------
function add(x, y) {
    return x + y
}

# ------------------------
# BEGIN block: runs once before input
# ------------------------
BEGIN {
    print "Hello World"

    name = "Paul"
    age  = 20

    # Numeric arrays
    arr1[0] = 1
    arr2[0] = 2

    # Associative array
    marks["English"] = 20
    marks["Test"]    = 39
}

# ------------------------
# Main block: runs for each input line
# ------------------------
{
    print name, age, arr1[0], arr2[0]

    print "Array values from arr1:"
    for (i in arr1)
        print arr1[i]

    print "Marks:"
    for (subject in marks)
        print subject, "=>", marks[subject]

    print "While loop output:"
    count = 10
    while (count <= 15) {
        print count
        count++
    }

    # Call function
    print "Sum from function add(100,300):", add(100, 300)
}

# ------------------------
# END block: runs once after input
# ------------------------
END {
    print "Processing completed"
}

