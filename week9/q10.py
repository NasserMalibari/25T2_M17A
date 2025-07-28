import argparse
import subprocess
import re
import collections


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--frequency', action='store_true', help='print tags by frequency')
    parser.add_argument("url", help="url to fetch")
    args = parser.parse_args()

    # print(args)

    proc = subprocess.run(f"wget -O- --quiet {args.url}", shell=True, capture_output=True, text=True)
    # print(proc.stdout)

    # webpage = proc.

    tags = (re.findall(r"<\s*(\w+)", proc.stdout))
    tag_counter = collections.Counter(tags)

    # print(tag_counter)
    # for tag in sorted(tag_counter):
    #     print(f"{tag} : {tag_counter[tag]}")

    for tag, freq in reversed(tag_counter.most_common()):
        # print(tag)
        print(f"{tag} : {freq}")



    # <word   />
    # <word >  </word>
    # <    word   />





if __name__ == "__main__":
    pass
    main()