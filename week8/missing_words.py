#!/usr/bin/python3
import sys


def main():
    
    file1 = sys.argv[1]
    file2 = sys.argv[2]

    # TODO: check there are 2 + args
    # check filenames are valid

    words1 = set()
    with open(file1, 'r') as f1:
        for line in f1:
            line = line[:-1].lower()
            words1.add(line)
    words2 = set()
    with open(file2, 'r') as f2:
        for line in f2:
            line = line[:-1].lower()
            words2.add(line)
            # print(line, end="")
    # print(words1)
    # print(words2)
    result_set = words1 - words2
    print(result_set)
    for word in sorted(result_set, reverse=True):
        print(word)

if __name__ == "__main__":
    main()