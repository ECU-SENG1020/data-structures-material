# Study Guide: Set Data Structure

## What is a set?
A set is an unordered collection of unique elements. Sets are optimized for membership tests and set-theoretic operations (union, intersection, difference).

Key properties:
- Elements are unique — duplicates are not stored.
- Unordered — no guaranteed element order.
- Mutable (for `set`)
- Elements must be hashable (e.g., numbers, strings, tuples of hashable items).

## When to use a set
- Removing duplicates from a collection.
- Fast membership checks ("is x in collection?").
- Performing mathematical set operations (union, intersection, difference).
- Maintaining a collection where order doesn't matter.

## Complexity overview (average-case)
- Membership test (`x in s`): O(1)
- Insert (`s.add(x)`): O(1)
- Remove (`s.remove(x)`/`s.discard(x)`): O(1)
- Length (`len(s)`): O(1)
- Iteration: O(n)
- Set operations (union, intersection, difference): O(len(s) + len(t)) for two sets s and t (implementation-dependent but generally linear in the size of the inputs)

> Note: Worst-case times can degrade (due to hash collisions), but Python's hash table implementation keeps this rare.

## Python API (common methods)
- Creation: `s = set([1,2,3])` or `s = {1,2,3}`
- `add(elem)` — add element to set.
- `remove(elem)` — remove element, raises `KeyError` if missing.
- `discard(elem)` — remove element if present, no error if missing.
- `pop()` — remove and return an arbitrary element; raises `KeyError` if empty.
- `clear()` — remove all elements.
- `copy()` — shallow copy of the set.

Set operations (methods and operators):
- `union(other)` or `s | t`
- `intersection(other)` or `s & t`
- `difference(other)` or `s - t` (elements in s not in t)
- `symmetric_difference(other)` or `s ^ t` (elements in exactly one of s or t)

Conversions & comprehensions:
- `list(s)` to convert to list (order arbitrary)
- `set(iterable)` to build from iterable
- `{x for x in iterable if condition}` — set comprehension

## Examples (Python)
```py
# create
s = {1, 2, 3}
# add
s.add(4)  # {1,2,3,4}
# discard vs remove
s.discard(5)  # no error
# s.remove(5) -> KeyError
# membership
if 3 in s:
    print("3 is present")
# set operations
a = {1, 2, 3}
b = {3, 4, 5}
print(a | b)  # union -> {1,2,3,4,5}
print(a & b)  # intersection -> {3}
print(a - b)  # difference -> {1,2}
print(a ^ b)  # symmetric difference -> {1,2,4,5}

# dedupe a list
lst = [1, 2, 2, 3, 3, 3]
unique = list(set(lst))  # order is arbitrary

# set comprehension
squares = {x*x for x in range(6)}  # {0,1,4,9,16,25}
```

## Common pitfalls and notes
- Sets are unordered: do not rely on insertion order. 
- Elements must be hashable. You cannot put a list or dict into a set, but you can put a tuple of hashables.
- `remove()` raises an exception if the element is not present; use `discard()` when uncertain.
- `pop()` returns an arbitrary element — not "last" or "first".
- Converting a set to a list yields an arbitrary order. If you need a stable order, sort after conversion: `sorted(set_obj)`.

## Practical use-cases
- De-duplicating large datasets.
- Membership filters (like "visited nodes" in graph algorithms).
- Fast lookups for items seen.
- Implementing relations (set algebra) and small-scale boolean algebra.

## Practice Examples
1) Given two lists, write a function that returns elements present in both lists (unique) using sets.
2) Remove duplicates from a list while preserving original order. (Hint: use a seen set and a result list.)
3) Count unique words in a string (case-insensitive, punctuation removed).

### Answers (brief)
1)
```py
def intersection_unique(a, b):
    return list(set(a) & set(b))
```
2)
```py
def dedupe_preserve_order(items):
    seen = set()
    out = []
    for x in items:
        if x not in seen:
            seen.add(x)
            out.append(x)
    return out
```
3)
```py
import re

def count_unique_words(s):
    words = re.findall(r"\w+", s.lower())
    return len(set(words))
```

## One-page cheat-sheet
- Create: `s = set()` or `s = {1,2}` or `s = set(iterable)`
- Add: `s.add(x)`
- Remove safe: `s.discard(x)`
- Remove strict: `s.remove(x)` (KeyError if missing)
- Membership: `x in s` (O(1))
- Union: `s | t` or `s.union(t)`
- Intersection: `s & t` or `s.intersection(t)`
- Difference: `s - t` or `s.difference(t)`
- Symmetric difference: `s ^ t` or `s.symmetric_difference(t)`



