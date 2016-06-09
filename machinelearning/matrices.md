---
layout: page
title: Matrices
permalink: /machinelearning/matrices/
---

## Creating a 4x2 Matrix


```python
import numpy
 
A = numpy.matrix([[1, 2],
                 [3, 4],
                 [5, 6],
                 [7, 8]])
A
```




    matrix([[1, 2],
            [3, 4],
            [5, 6],
            [7, 8]])



## Accessing Item in Matrix


```python
A[2, 1]
```




    6



## Accessing Row Vector in Matrix


```python
A[2, :]
```




    matrix([[5, 6]])



## Accessing Col Vector in Matrix


```python
A[:, 1]
```




    matrix([[2],
            [4],
            [6],
            [8]])




```python

```
