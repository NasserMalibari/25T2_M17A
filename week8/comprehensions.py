#!/usr/bin/env python3

# map
my_list = [1, 3, 6, 10]
new_list = []
for num in my_list:
    new_list.append(num ** 2)

# l = [operation(x) for x in iterable]
new_list = [num ** 2 for num in my_list]
#
# print(new_list)


new_list = []
for num in my_list:
    if num % 2 == 0:
        new_list.append(num)

# l = [operation(x) for x in iterable]
new_list = [num for num in my_list if num % 2 == 0]
# print(new_list)

# dict_comprehension

# STRINGS


# split 
input = "Hello world foo bar baz"
input2 = "Hello,world,foo,bar,baz"

word_list = input.split(' ')
print(word_list)

word_list2 = input2.split(',')
# word_list = input.split(' ')
print(word_list)

# join

print(" XXX ".join(word_list))

