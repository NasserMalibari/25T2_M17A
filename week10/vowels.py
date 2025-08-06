import sys


def main():
    
    # vowel_map = {'a': 'A', 'e' : 'E', 'E': 'e'}
    vowel_map = {'a': 'A', 'e': 'E', 'i': 'I', 'o': 'O', 'u': 'U', 'A': 'a', 'E': 'e', 'I': 'i', 'O': 'o', 'U': 'u'}
    vowels = "aeiou"
    trans_table = str.maketrans(vowels + vowels.upper(), vowels.upper() + vowels)

    for line in sys.stdin:
        line = line[:-1]
        print(line.translate(trans_table))
        

    
        # for i, char in enumerate(line):
            
        #     if char in vowel_map:
        #         line = line[:i] + vowel_map[char] + line[i+1:]
        #         # line[i] = vowel_map[char]
        # print(line)


if __name__ == "__main__":
    main()