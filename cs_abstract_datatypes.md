# Abstract Datatypes

- Native Arrays/Array List
- Linked Lists
- Tree Nodes
- Tree
- Hash
- Set
- Map
- Stack/Queue
- Graph

MOST OF THE TIME, YOU WANT A HASHMAP: it's fast, it makes a connection between the key and the value
These are all just constraints to determine how we interact with the datatype


## Native Arrays & Array List

- Continguous data (we have to make sure we have that much data allocated in a row to use it). Have to reserve as much memory as you might need to use.
- We might not use all those spots at once, but making a bigger array latter is expensive.
- They're very fast to access, constant time to get to something if you know its location/index. [Constant time, Big O(1)]
- Ruby and Python's arrays are more sophisticated from Java's array. They're actually "array lists", a wrapper class that interacts with the native array for you. In Java, if you exceed the array's size, it doubles the array and seamlessly moves over to the new array.

ex in Java:
int[] x = new int[10];
x[0];


## Linked List

- Each node has data and a pointer to the next data
- This doesn't require contiguous data like a native array does. It's data can be scattered around in the memory, so long as the pointers can point to the next node.
- Have to iterate through each node to access a particular node. Access time is significantly worse than in a native array. [Big O(N)]
- Expensive to add to the end of a list (O(N)), but constant time to point to the beginning of a list (O(1))


## Tree Node

- Essentially a linked list node, but it can point to two other nodes (left child, right child)
- [Logorithmic time, Big O(logN)] For instance, in a binary search tree, you can go through a smaller segment of the data to get the answer (cutting the dataset in half over and over; anytime that pattern happens it's logorithmic time)
- Same advantages/disadvantages as Linked List: no contiguous data, but also slow to traverse
- Java has a garbage collector to automatically reallocate memory when no longer in use
- Important to check the tree's balance and rebalance the tree if needed (otherwise it's a pretty useless tree, it's just a linked list). Java takes care of this for you, though.
- Use a tree if you need your data to be in order


## Hash (NOT A RUBY HASH)

- Given data, you can take a hash function and get the location in a native array to look

ex in Java:
hashFunction(x) = [indexToLookIn];

- It's constant time lookup
- For instance, md5 encryption is a hash
- Ruby's hashes are more similar to a map or a set in Java. Maps and Sets can be based on hashes or a tree. If you want the data fast, use a hash as the basis; if you care about order, use a tree as the basis.
  * Hash Maps use the key to get the index of the value in the native array
  * Tree Maps... do something?


## Set

- There are no duplicates allowed and there's no ordering. It's just a random collection of data.
- There are two implementations of this: Hashset and treeset
  * Hashsets are quick, as expected
  * Treeset data will be ordered. Seems odd to have, but it exists.
- You can't do a for loop on a set, because there is no order. In Java, you can do a forEach loop, using an iterator to loop through each element
- You can say "does this set contain an element?" but you can't say "give me the 5th element"


# Stack/Queue

- Push and pop data on and off of a stack: first in, last out
- Enqueue and dequeue data in and out of a queue: first in, first out


# Graph

- Crystal says she's never had to use a graph...
- Data is connected in someway to multiple other nodes. We know how data is related to each other, based on the connections between data. Many options available for routes between places. Pointers are edges and they can have weights associated with them. They're information in themselves.
- Google Maps is a real-world example of a graph.



## Examples

https://github.com/Ada-Developers-Academy/daily-curriculum/blob/master/topic_resources/interview-questions-data-structures.md

Latency == "how long it takes to do something"


# Website User Preferences

- Pick a hashmap: don't care about order (hash), want to get the value of a key (map)
- 
