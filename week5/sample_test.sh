#! /usr/bin/env dash

# ==============================================================================
# test0.sh
# Test the mygive-add command:
# creating same assignment twice, and non-found tests file
#
# Written by: Dylan Brotherston <d.brotherston@unsw.edu.au> + Nasser
# Date: 2025-06-28
# For COMP2041/9044 Assignment 1
# ==============================================================================

# add the current directory to the PATH so scripts
# can still be executed from it after we cd

PATH="$PATH:$(pwd)"

# Create a temporary directory for the test and retrieve the provided test files
test_dir="$(mktemp -d)"
cd "$test_dir" || exit 1
2041 fetch mygive

# Create a temporary directory for the referace and retrieve the provided test files
ref_dir="$(mktemp -d)"
cd "$ref_dir" || exit 1
2041 fetch mygive

# Create some files to hold output.

expected_stdout="$(mktemp)"
expected_stderr="$(mktemp)"
actual_stdout="$(mktemp)"
actual_stderr="$(mktemp)"

# Remove the temporary directory when the test is done.

trap 'rm "$expected_stdout" "$expected_stderr" "$actual_stdout" "$actual_stderr" -r "$test_dir"' INT HUP QUIT TERM EXIT

# Create mygive assessment

# testing assignment created twice

cd "$ref_dir" || exit 1
2041 mygive-add lab1 multiply.tests > "$expected_stdout" 2> "$expected_stderr"

expected_exit="$?"

cd "$test_dir" || exit 1
mygive-add lab1 multiply.tests > "$actual_stdout" 2> "$actual_stderr"
actual_exit="$?"

if [ "$actual_exit" -ne "$expected_exit" ]; then

    echo "exit status are not the same: $expected_exit != $actual_exit"
    exit 1
fi


if ! diff "$expected_stdout" "$actual_stdout"; then
    echo "files are not the same: test failed!"
    exit 1
fi

if ! diff "$expected_stderr" "$actual_stderr"; then
    echo "stderr files are not the same: test failed!"
    exit 1
fi


cd "$ref_dir" || exit 1
2041 mygive-add lab1 multiply.tests > "$expected_stdout" 2> "$expected_stderr"

cd "$test_dir" || exit 1
mygive-add lab1 multiply.tests > "$actual_stdout" 2> "$actual_stderr"

if ! diff "$expected_stdout" "$actual_stdout"; then
    echo "files are not the same: test failed!"
    exit 1
fi

if ! diff "$expected_stderr" "$actual_stderr"; then
    echo "stderr files are not the same: test failed!"
    exit 1
fi
cd "$ref_dir" || exit 1
2041 mygive-add lab2 foo > "$expected_stdout" 2> "$expected_stderr"

cd "$test_dir" || exit 1
mygive-add lab2 foo > "$actual_stdout" 2> "$actual_stderr"

if ! diff "$expected_stdout" "$actual_stdout"; then
    echo "files are not the same: test failed!"
    exit 1
fi

if ! diff "$expected_stderr" "$actual_stderr"; then
    echo "stderr files are not the same: test failed!"
    exit 1
fi

echo "All tests passed!"
exit 0
