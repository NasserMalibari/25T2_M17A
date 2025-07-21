#!/usr/bin/env python3


# Looping over a collection 

colors = ['red', 'green', 'blue', 'yellow']


# ####################


# Looping backwards

colors = ['red', 'green', 'blue', 'yellow']



#######################
# looping over indices and items

colors = ['red', 'green', 'blue', 'yellow']

# unpacking sequences

# for index, color in enumerate(colors, start=1):
#     print(f"{index} --> {color}")

names = ['raymond', 'rachel', 'matthew']
colors = ['red', 'green', 'blue', 'yellow']

# n = min(len(names), len(colors))
# for i in range(n):
#     print (names[i], '--->', colors[i])


colors = ['red', 'green', 'blue', 'yellow']

# # Forward sorted order


# # Backwards sorted order


# # Multiple exit points in a loop
def find(seq, target):

    for i, value in enumerate(seq):
        if value == target:
            break
    else:
        return -1
    return i

    # found = False
    # for i, value in enumerate(seq):
    #     if value == target:
    #         found = True
    #         break
    # if not found:
    #     return -1
    # return i

# list1 = [1, 3, 5]
# target = 3
# print(find(list1, target))



# ###### DICTIONARIES ##############################

d = {'a': 1, 'b': 2, 'c': 3}

# for key,value in d:
#     print(f"{key} -> {d[key]}")
#     # print(elem)

# for key, value in d.items():
#     print(f"{key}-->{val}")


# # construct from pairs
names = ['raymond', 'rachel', 'matthew']
colors = ['red', 'green', 'blue']


# # COUNTING WITH DICTIONARIES

my_list = ['a', 'b', 'c', 'a', 'c', 'a']
# {'a': 3, 'b': 1, 'c': 2}
my_counter = {}
for elem in my_list:
    # pass
    # if elem in my_counter:
    #     my_counter[elem] += 1
    # else:
    #     my_counter[elem] = 1
    my_counter[elem] = my_counter.get(elem, 0) + 1


# print(my_counter)

from collections import Counter
c2 = Counter(my_list)
# print(c2)

from collections import defaultdict, namedtuple

def f1():

    return namedtuple(timeTaken=1, result='string')
