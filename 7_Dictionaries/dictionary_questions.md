# Python Dictionaries Quiz (25 Questions)
# Source: StudyGuide-dictionaries.md only

## Instructions
Choose the best answer (A, B, C, or D) for each question. All information comes from the study guide: concepts of creation, access, views, membership, iteration patterns, methods, comprehensions, nesting, and common pitfalls.

---
### 1. What does a dictionary map?
A. Values → indices
B. Keys → values
C. Values → keys
D. Keys → positions
Answer: B

### 2. Which statement about dictionary key ordering in modern Python is correct?
A. Random every run
B. Always sorted alphabetically
C. Preserves insertion order
D. Groups by data type
Answer: C

### 3. Which key type is valid based on the guide?
A. list
B. dict
C. tuple
D. set
Answer: C

### 4. What happens when accessing a missing key with square brackets (e.g., d["x"])?
A. Returns None
B. Returns empty string
C. Raises KeyError
D. Silently creates the key
Answer: C

### 5. Which method safely retrieves a key with a fallback value?
A. fetch()
B. get()
C. pull()
D. obtain()
Answer: B

### 6. Given `person.get("major", "Undeclared")`, what is returned if `major` is absent?
A. KeyError
B. None
C. ""
D. "Undeclared"
Answer: D

### 7. What does `dict.keys()` return?
A. Static list
B. A dynamic view object
C. Generator that exhausts once
D. Immutable tuple
Answer: B

### 8. Which loop form iterates over key/value pairs directly?
A. `for k in d.values():`
B. `for v in d:`
C. `for k, v in d.items():`
D. `for pair in d.keys():`
Answer: C

### 9. What does `"Alex" in grades` test?
A. Presence in values
B. Presence in keys
C. Presence in items
D. Presence in memory
Answer: B

### 10. Which expression checks for a value 90 inside the dictionary values?
A. `90 in grades`
B. `grades.contains(90)`
C. `90 in grades.values()`
D. `grades.values[90]`
Answer: C

### 11. Which method both removes and returns the last inserted (key, value) pair?
A. poplast()
B. pop()
C. popitem()
D. remove()
Answer: C

### 12. What is the counting pattern for characters in a string?
A. `counts[ch] += 1` (always works without setup)
B. `counts[ch] = counts.get(ch, 0) + 1`
C. `counts.append(ch)`
D. `counts.update(ch)`
Answer: B

### 13. Which method merges another dictionary, overwriting existing keys?
A. extend()
B. union()
C. update()
D. join()
Answer: C

### 14. Effect of `d.setdefault("b", 100)` when `b` is missing?
A. Raises KeyError
B. Returns 100 and adds key b
C. Returns None and adds key b
D. Does nothing
Answer: B

### 15. Which comprehension creates a dictionary of squares from 0–4?
A. `{n**2 for n in range(5)}`
B. `{n: n**2 for n in range(5)}`
C. `[n: n**2 for n in range(5)]`
D. `(n: n**2 for n in range(5))`
Answer: B

### 16. In the grouping pattern with `setdefault`, what does `groups.setdefault(length, []).append(w)` ensure?
A. Keys only added at end
B. Each length maps to exactly one word
C. Initializes a list for a new length then appends
D. Replaces all previous words for that length
Answer: C

### 17. Safest way to delete keys while iterating based on predicate?
A. Delete inside the main loop directly
B. Convert to list and mutate original simultaneously
C. Build a list of keys to delete, then delete in second loop
D. Use removeAll()
Answer: C

### 18. Which of these is NOT a stated common error?
A. KeyError on missing key
B. Mutating during iteration
C. Using list as a key (unhashable)
D. Using tuple as a key
Answer: D

### 19. What does `del person["major"]` do if `"major"` is absent?
A. Returns None
B. Raises KeyError
C. Silently ignores
D. Creates the key then deletes
Answer: B

### 20. After `d.setdefault("a", 100)` when `"a"` already maps to 1, what happens?
A. Key becomes 100
B. Key removed
C. Returns 1; dictionary unchanged
D. Raises KeyError
Answer: C

### 21. What is returned by `grades.items()`?
A. List of keys
B. List of values
C. View of (key, value) pairs
D. Generator of values only
Answer: C

### 22. In nested dictionaries `students["1001"]["gpa"]`, what does the second indexing access?
A. Outer key list
B. Inner dictionary value for "gpa"
C. A tuple of both
D. A list of all GPAs
Answer: B

### 23. Which is the correct pattern to test then access a possibly missing key?
A. `if person["age"]:`
B. `if person.get("age"): print(person["age"])`
C. `if "age" in person: print(person["age"])`
D. `if person.age: print(person.age)`
Answer: C

### 24. Why are dictionary view objects described as dynamic?
A. They auto-sort
B. They reflect subsequent mutations
C. They cache old states
D. They convert types silently
Answer: B

### 25. What is the primary reason list cannot be a dictionary key?
A. Lists are too large
B. Lists are not iterable
C. Lists are mutable and therefore unhashable
D. Lists store only numbers
Answer: C

---
## Answer Key (Quick Reference)
1:B 2:C 3:C 4:C 5:B 6:D 7:B 8:C 9:B 10:C 11:C 12:B 13:C 14:B 15:B 16:C 17:C 18:D 19:B 20:C 21:C 22:B 23:C 24:B 25:C

