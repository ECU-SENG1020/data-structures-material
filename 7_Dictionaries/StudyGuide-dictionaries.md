# Study Guide: Python Dictionaries

## 1. Big Picture

- A **dictionary** maps **keys → values**.
- Syntax: `{key1: value1, key2: value2, ...}`.
- Keys must be **hashable** (e.g., `str`, `int`, `tuple`); values can be any type.
- In modern Python, dictionaries **preserve insertion order**.

```python
student = {"name": "Alex", "age": 19}
```

---

## 2. Creating Dictionaries

```python
# Empty
d = {}
d2 = dict()

# Literal
person = {"name": "Sam", "age": 21}

# Using dict() with keywords
person2 = dict(name="Sam", age=21)

# From pairs
pairs = [("a", 1), ("b", 2)]
d3 = dict(pairs)

# From two lists
keys = ["a", "b", "c"]
vals = [1, 2, 3]
d4 = dict(zip(keys, vals))
```

---

## 3. Accessing and Modifying Data

### Access

```python
person = {"name": "Sam", "age": 21}

person["name"]        # "Sam"
# person["major"]     # KeyError (if key doesn't exist)

person.get("major")               # None
person.get("major", "Undeclared") # "Undeclared"
```

### Add / update

```python
person["age"] = 22          # update existing key
person["major"] = "CS"      # add new key
```

### Delete

```python
del person["major"]         # remove key (KeyError if missing)

age = person.pop("age")     # remove and return value
last = person.popitem()      # remove and return last (key, value)

person.clear()              # empty the dictionary
```

---

## 4. Dictionary Views: Keys, Values, Items

```python
grades = {"Alex": 90, "Brooke": 85}

grades.keys()    # dict_keys(["Alex", "Brooke"])
grades.values()  # dict_values([90, 85])
grades.items()   # dict_items([("Alex", 90), ("Brooke", 85)])
```

These are **dynamic views** (they change if the dict changes).

Typical loops:

```python
for name in grades:                 # same as grades.keys()
	print(name)

for score in grades.values():
	print(score)

for name, score in grades.items():
	print(name, score)
```

---

## 5. Membership: `in` and `not in`

- `in` checks **keys**, not values:

```python
"Alex" in grades          # True (key)
90 in grades              # False (value, not key)
90 in grades.values()     # True
```

---

## 6. Looping Patterns and Common Uses

### Simple iteration

```python
for key in d:
	print(key, d[key])

for key, value in d.items():
	print(key, value)
```

### Counting occurrences

```python
text = "banana"
counts = {}

for ch in text:
	counts[ch] = counts.get(ch, 0) + 1
# {'b': 1, 'a': 3, 'n': 2}
```

### Grouping items

```python
words = ["hi", "to", "you", "all"]
groups = {}

for w in words:
	length = len(w)
	groups.setdefault(length, []).append(w)
# {2: ["hi", "to"], 3: ["you", "all"]}
```

---

## 7. Useful Dictionary Methods

```python
d = {"a": 1}

d.get("a", 0)         # 1
d.get("b", 0)         # 0 (default)

d.setdefault("a", 100)  # returns 1, d stays {"a": 1}
d.setdefault("b", 100)  # returns 100, d becomes {"a": 1, "b": 100}

other = {"b": 5, "c": 6}
d.update(other)         # merges; "b" becomes 5, adds "c": 6
```

---

## 8. Dictionary Comprehensions

Pattern: `{key_expr: value_expr for ... if ...}`

```python
# Squares
squares = {n: n**2 for n in range(5)}
# {0: 0, 1: 1, 2: 4, 3: 9, 4: 16}

# Filter
grades = {"Alex": 90, "Brooke": 72, "Chris": 88}
passed = {name: g for name, g in grades.items() if g >= 80}
# {"Alex": 90, "Chris": 88}
```

---

## 9. Nested Dictionaries

```python
students = {
	"1001": {"name": "Alex", "gpa": 3.6},
	"1002": {"name": "Brooke", "gpa": 3.2},
}

students["1001"]["gpa"]  # 3.6
students["1003"] = {"name": "Chris", "gpa": 3.9}
```

---

## 10. Common Errors and Gotchas

- **KeyError**: accessing a missing key with `[]`.

```python
if "age" in person:
	print(person["age"])
else:
	print("no age")
# or: person.get("age", "no age")
```

- **Mutating while iterating**: don't modify the dict you are looping over.

```python
# BAD: deleting while looping over d
# for k in d:
#     if d[k] < 0:
#         del d[k]

# GOOD:
to_delete = [k for k, v in d.items() if v < 0]
for k in to_delete:
	del d[k]
```

- **Unhashable keys**: lists, dicts, or other mutable types cannot be keys.

```python
# d[[1, 2, 3]] = "oops"  # TypeError
d[(1, 2, 3)] = "ok"      # tuple is fine
```

---



