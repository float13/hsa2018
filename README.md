# "Intro to Coding" Class
## Harlem School of the Arts, Fall 2018
### Instructor: Doug Brantner

## General Resources
Download Processing: www.processing.org  
- See their Tutorials, Reference, Examples, and Videos

**For Help:**
1. Try looking at the [Processing Reference](https://processing.org/reference/). This should always be your first stop.
2. Try searching online for your question. Copying/Pasting error messages word-for-word can be helpful.
  - **However**, copying/pasting variable names that are specific to your program might hurt your results. Try to keep it as generic as possible.
  - Try searching for "proce55ing" instead of "processing". This helps sometimes because "processing" is such a common word.
  -  www.stackoverflow.com may pop up frequently, and is a great website.
3. Any general Java help should work for Processing.
4. If all else fails, write down your question, and bring it to class, or send it to the mailing list.
  - Please *don't* send me technical questions directly. Send them to the whole class, so everyone can pitch in and learn.

**NOTE:** Remember, **Java != JavaScript**  
(Java is **_not_** the same as JavaScript so be careful when searching for help online)

# Class Notes

## Class00 - Intro to Java and Processing
2018_09_19  

Slides: [view online](Slides/Class00/helloworld.pdf) or
[download](https://github.com/float13/hsa2018/raw/master/Slides/Class00/helloworld.pdf)

Processing Code: [here](Code/BasicExamples)

## Class01 - Functions, Variable Scope
2018_09_26  

See the Slides [above](Slides/Class00/helloworld.pdf) for details.

Sample code for the Bouncing Ball project is [here](Code/BasicExamples/bouncingBall0/bouncingBall0.pde)  
*Note: The variable names might be different from your code.*

## Class02 - If/Else Statements
2018_10_03  

If/Else statements allow us to make decisions during our program, and the outcome can change as our variables change.
```java
if (condition) {
  // execute this block of code *if* condition is true
}
else {
  // otherwise, execute this block of code
  // (the else part is optional)
}
```
Only one of the two blocks will execute, *either* the ```if``` block, or the ```else``` block. Never both.  

We can also make more complicated decisions using ```else if```:

```java
if (condition1) {
  // do something
}
else if (condition2) {
  // if condition1 is false, AND condition2 is true,
  // execute this new block of code
}
else {
  // if all other cases are false, execute this block
}
```
You can have as many ```else if``` statements as you want. The conditions are evaluated top-to-bottom, and only 1 case will execute out of all of them.  
In other words, only the first true case gets executed, and the rest are skipped.

## Class03 - Boolean Operators
2018_10_10  

A **boolean** variable can only have 2 values: *true* or *false*.  
These translate to 1's and 0's inside the computer.  
We can use **Boolean operators** with Boolean variables, just like we use the familiar math operators ```+, -, *, /```  to do things with numbers.  
### AND &&
The AND operator takes 2 inputs, and returns true *if and only if* **both** of them are true:
```java
if (input1 && input2) {
  // do something here if BOTH are true
}
```
A *Truth Table* takes every possible combination of inputs (in our case, 4 possible combinations), and gives the result for each one. The Truth Table for the AND operator ```&&``` in the above code looks like this:  
**Truth Table for AND ```&&```**  

input1 | input2 | Result
---    | ---    | ---
true   | false  | false
false  | true   | false
false  | false  | false
true   | true   | **true**

### OR ||
The OR operator ```||``` also takes 2 inputs, but now we only need *at least* **one** of them to be true:
```java
if (input1 || input2) {
  // do something if EITHER one is true
}
```  
**Truth Table for OR ```||```**  

input1 | input2 | Result
---    | ---    | ---
true   | false  | true
false  | true   | true
false  | false  | **false**
true   | true   | true

Note that the AND operator results in ```true``` in only 1 case, while the OR operator results in ```true``` in 3 out of 4 cases.

***Bug Alert:*** The single ```&``` and single ```|``` are also valid operators, with very similar but very different effects. Make sure you always use the double ```&&``` and ```||``` operators for this class!  

### NOT !
The NOT operator ```!``` gives the *opposite* value of the input. In other words, it *negates*, or *flips* the value.  
It is a *unary operator*, meaning it only takes **one input**, unlike AND and OR.  
We put the ```!``` in **front** of the value we want to negate:
```java
if (!input1) {
  // execute this code ONLY if input1 is FALSE.
}
```
Since we only have 1 input, the truth table is much simpler:  
**Truth Table for NOT ```!```**  

input1 | Result
---    | ---
true   | false
false  | true

We can also use the **NOT EQUAL ```!=```** operator to compare other types of variables (numbers, Strings, etc.):
```java
if (1 != 2) {
  // this block gets executed because 1 is NOT EQUAL to 2
}
```
We can also compare ```Strings``` of text:
```java
if ("abc" != "def") {
  // this block also get executed, because the 2 strings are not equal.
}  
```
## Class04 - Functions and Methods
2018_10_17

### Functions and Methods, Assignment Operator
See the **Slides, pages 18-25**  
- [View Online](Slides/Class00/helloworld.pdf) or  
- [Download](https://github.com/float13/hsa2018/raw/master/Slides/Class00/helloworld.pdf)

### Assignment Operator =
In Java, and many other programming languages, the **single equal sign** ```=``` is used as the **Assignment Operator**.  
This is a little different than the usual way we think about it in math.  
In math, we usually think of the equal sign as "going both ways" - meaning the **Left-Hand-Side** is equivalent to the **Right-Hand-Side**:  
TODO example w/ equals sign & double arrow

**However**, in programming, the equal sign is a one-way operator. We have to think about it a little differently, as a **one-way arrow**.  
TODO example w/ left-hand arrow

The important thing to remember here is that the Left-Hand-Side and the Right-Hand-Side are *no longer equivalent!.* That means that we can't swap the Left-Hand-Side and the Right-Hand-Side any more - it completely changes the meaning of the programming instruction!
```java
int A = 10;
int B = 5;

A = B;  // here, we assign the value of B to the variable named A

// RESULT: The value of A is now 5.
```
The result of the above code is that A is now equal to 5.  
  
However, if we change it from ```A = B``` to ```B = A```, the result is different!  
Note that we reset the values of ```A``` and ```B``` to their original values to start.  
```java
int A = 10;
int B = 5;

B = A;  // here, we assign the value of A to the variable named B

// RESULT: The value of B is now 10.
```
Now, the result is that B is equal to 10, because the **equal sign Assignment Operator** is a **one-way** operator.  
  
So we have to change the way we think a little bit, and start to think like a programmer- 
for the first example ```A = B```, we **don't** say "A is equal to B". Instead, we have to say "Assign the value of B to A".


## Class05 - More on Functions, Variable Scope
2018_10_24

## Class06 - How Computers Work
2018_10_31

### Basic Components
- CPU: Central Processing Unit
  - Speed is measured in Hertz (Hz), meaning "cycles per second"
  - 1 GHz processer can perform 1 billion instructions per second
- RAM: Random Access Memory
  - Faster than the Hard Disk, but much smaller capacity
  - Volatile: all data in RAM is lost when power is turned off
- Hard Disk
  - Very large capacity (used to be several Gigabytes, now several Terabytes)
  - Slow Read/Write (too slow to run programs directly from disk)
  - Non-volatile: data can be stored long-term while computer is off  
    **Note:** *Non-volatile does not mean "fail-safe" - always make backups of your data!*
- I/O: Input/Output
  - Keyboard
  - Mouse
  - Screen
  - Speakers

## Next Class - Class07
2018_11_07 - TBD

### Other
All code, materials, slides, documentation, etc. posted here is Copyright 2018 Douglas Brantner until further notice (until I can wrap my head around and choose a proper Open Source license)
