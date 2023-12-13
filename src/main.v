module linkedarray

const version = '0.0.0'

pub fn version() string {
	return linkedarray.version
}

struct Node[T] {
mut:
	data T
	next u32
	prev u32
}

pub struct LinkedArray[T] {
mut:
	arr  []Node[T]
	head u32
	tail u32
	len  int
}

// is_empty checks if the linked list is empty
pub fn (list LinkedArray[T]) is_empty() bool {
	return list.len == 0
}

// len returns the length of the linked list
pub fn (list LinkedArray[T]) len() int {
	return list.len
}

// first returns the first element of the linked list
pub fn (list LinkedArray[T]) first() !T {
	if list.is_empty() {
		return error('Linked array is empty')
	}
	return list.arr[list.head].data
}

// last returns the last element of the linked list
pub fn (list LinkedArray[T]) last() !T {
	if list.is_empty() {
		return error('Linked array is empty')
	}
	return list.arr[list.tail].data
}

/*
fn (mut list DoublyLinkedList[T]) push_back(item T)
push_back adds an element to the end of the linked list


fn (mut list DoublyLinkedList[T]) push_front(item T)
push_front adds an element to the beginning of the linked list


fn (mut list DoublyLinkedList[T]) push_many(elements []T, direction Direction)
push_many adds array of elements to the beginning of the linked list


fn (mut list DoublyLinkedList[T]) pop_back() !T
pop_back removes the last element of the linked list


fn (mut list DoublyLinkedList[T]) pop_front() !T
pop_front removes the last element of the linked list


fn (mut list DoublyLinkedList[T]) insert(idx int, item T) !
insert adds an element to the linked list at the given index


fn (list &DoublyLinkedList[T]) index(item T) !int
index searches the linked list for item and returns the forward index or none if not found.


fn (mut list DoublyLinkedList[T]) delete(idx int)
delete removes index idx from the linked list and is safe to call for any idx.


fn (list DoublyLinkedList[T]) str() string
str returns a string representation of the linked list


fn (list DoublyLinkedList[T]) array() []T
array returns a array representation of the linked list


fn (mut list DoublyLinkedList[T]) next() ?T
next implements the iter interface to use DoublyLinkedList with V's for x in list { loop syntax.


fn (mut list DoublyLinkedList[T]) iterator() DoublyListIter[T]
iterator returns a new iterator instance for the list.


fn (mut list DoublyLinkedList[T]) back_iterator() DoublyListIterBack[T]
back_iterator returns a new backwards iterator instance for the list.
*/
