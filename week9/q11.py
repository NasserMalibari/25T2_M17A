import argparse
from bs4 import BeautifulSoup
import requests
import collections

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--frequency', action='store_true', help='print tags by frequency')
    parser.add_argument("url", help="url to fetch")
    args = parser.parse_args()

    html = requests.get(args.url).text
    # print(resp.text)

    soup = BeautifulSoup(html, 'html5lib')
    print(soup.prettify())
    tags = soup.find_all()

    # names = []
    # for tag in tags:
    #     names.append(tag.name)
    names = [tag.name for tag in tags]

    tag_counter = collections.Counter(names)

    # print(tag_counter)
    # for tag in sorted(tag_counter):
    #     print(f"{tag} : {tag_counter[tag]}")

    for tag, freq in reversed(tag_counter.most_common()):
        # print(tag)
        print(f"{tag} : {freq}")

if __name__ == "__main__":
    main()