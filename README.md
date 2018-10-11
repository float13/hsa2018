# "Intro to Coding" Class Resources

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
We can use **Boolean operators** with Boolean variables, just like we use the ```+, -, *, and /``` operators to do math with numbers.  
### AND &&
The AND operator takes 2 inputs, and returns true *if and only if* **both** of them are true:
```java
if (input1 && input2) {
  // do something here if BOTH are true
}
```
A *Truth Table* takes every possible combination of inputs (in our case, 4 possible combinations), and gives the result for each one. The Truth Table for the AND operator ```&&``` in the above code looks like this:  

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
input1 | input2 | Result
---    | ---    | ---
true   | false  | true
false  | true   | true
false  | false  | **false**
true   | true   | true

Note that the AND operator results in ```true``` in only 1 case, while the OR operator results in ```true``` in 3 out of 4 cases.

### NOT !
The NOT operator gives the *opposite* value of the input. In other words, it *negates*, or *flips* the value.  
It is a *unary operator*, meaning it only takes **one input**, unlike AND and OR.  
We put the ```!``` in **front** of the value we want to negate:
```java
if (!input1) {
  // execute this code ONLY if input1 is FALSE.
}
```
Since we only have 1 input, the truth table is much simpler:

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
## Class04
2018_10_17 - TBD


## Resources
Download Processing: www.processing.org  
See their Tutorials, Reference, Examples, and Videos

Help: www.stackoverflow.com

Remember, Java != JavaScript  
(Java is **_not_** the same as JavaScript so be careful when searching for help online)

### Other
All code, materials, slides, documentation, etc. posted here is Copyright 2018 Douglas Brantner until further notice (until I can wrap my head around and choose a proper Open Source license)
