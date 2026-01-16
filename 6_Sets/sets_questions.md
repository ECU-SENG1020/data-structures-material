# Set Quiz — Multiple Choice

Answer each question by selecting the correct option (A–D). The correct answer is listed below each question.

1. Which of the following best describes a Python `set`?
   A) An ordered list of elements that may contain duplicates
   B) An unordered collection of unique elements
   C) A mapping from keys to values
   D) A sequence that preserves insertion order

   Answer: B

2. Which property is required for an object to be inserted into a `set`?
   A) It must be mutable
   B) It must be iterable
   C) It must be hashable
   D) It must be numeric

   Answer: C

3. What is the average-case time complexity of `x in s` for a set `s`?
   A) O(n)
   B) O(log n)
   C) O(1)
   D) O(n log n)

   Answer: C

4. Which method will remove an element from a set and raise `KeyError` if the element is missing?
   A) `discard(elem)`
   B) `remove(elem)`
   C) `pop()`
   D) `clear()`

   Answer: B

5. Which method removes an element if present and does nothing if it is absent?
   A) `remove(elem)`
   B) `pop()`
   C) `discard(elem)`
   D) `clear()`

   Answer: C

6. What does `pop()` do on a set?
   A) Remove and return the last inserted element
   B) Remove and return an arbitrary element
   C) Remove a specified element
   D) Remove all elements

   Answer: B

7. Which of the following creates a set containing 1, 2, and 3?
   A) `s = set(1,2,3)`
   B) `s = {1,2,3}`
   C) `s = [1,2,3]`
   D) `s = (1,2,3)`

   Answer: B

8. How do you create a set from an iterable `it`?
   A) `set(it)`
   B) `list(it)`
   C) `{it}`
   D) `tuple(it)`

   Answer: A

9. Which operator returns the union of two sets `s` and `t`?
   A) `s & t`
   B) `s - t`
   C) `s | t`
   D) `s ^ t`

   Answer: C

10. Which operator returns the intersection of sets `s` and `t`?
	A) `s & t`
	B) `s | t`
	C) `s - t`
	D) `s ^ t`

	Answer: A

11. What does `s - t` represent for sets `s` and `t`?
	A) Elements in either `s` or `t` but not both
	B) Elements in `t` that are not in `s`
	C) Elements in `s` not in `t`
	D) Intersection of `s` and `t`

	Answer: C

12. Which operator returns the symmetric difference (elements in exactly one of the sets)?
	A) `s & t`
	B) `s | t`
	C) `s - t`
	D) `s ^ t`

	Answer: D

-- Set operation focused questions --

13. Given `a = {1,2,3}` and `b = {3,4,5}`, what is `a | b` (union)?
	A) `{3}`
	B) `{1,2,3,4,5}`
	C) `{1,2}`
	D) `{1,2,4,5}`

	Answer: B

14. Given `a = {1,2,3}` and `b = {3,4,5}`, what is `a & b` (intersection)?
	A) `{1,2,3,4,5}`
	B) `{1,2}`
	C) `{3}`
	D) `{4,5}`

	Answer: C

15. With `a = {1,2,3}` and `b = {3,4,5}`, what is `a - b` (difference A - B)?
	A) `{3}`
	B) `{4,5}`
	C) `{1,2}`
	D) `{1,2,3,4,5}`

	Answer: C

16. For the same `a` and `b`, what is `a ^ b` (symmetric difference)?
	A) `{3}`
	B) `{1,2,4,5}`
	C) `{1,2}`
	D) `{1,2,3,4,5}`

	Answer: B

17. Which set operation would you use to find elements common to both sets?
	A) Union
	B) Difference
	C) Intersection
	D) Symmetric difference

	Answer: C

18. Which set operation returns elements that are in `s` or `t` but not both?
	A) `s & t`
	B) `s | t`
	C) `s - t`
	D) `s ^ t`

	Answer: D

19. If `s = {1,2,3}` and `t = {}`, which expression yields `s` unchanged?
	A) `s & t`
	B) `s | t`
	C) `s - s`
	D) `t - s`

	Answer: B

20. Which operation is most appropriate to remove all elements of `t` from `s`?
	A) `s | t`
	B) `s & t`
	C) `s - t`
	D) `s ^ t`

	Answer: C

