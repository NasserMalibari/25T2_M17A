import sys
import re


def main():
    # todo: check args
    arg = sys.argv[1]

    try:
        address = int(arg)
    except ValueError as e:
        #  get the regex
        # check its valid format

        if arg[0] != '/' or arg[-1] != '/':
            raise ValueError("expect /<regex>/")
        address = arg[1:-1]
    

    # line_num = 1
    for line_num, line in enumerate(sys.stdin, start = 1):
        line = line[:-1]
        print(line)
        if isinstance(address, int):
            # exit if line number == address
            if line_num == address:
                exit(0)
        else:
            # reg exp case
            if re.search(address, line):
                exit(0)
        
        # print(line)

if __name__ == "__main__":
    main()