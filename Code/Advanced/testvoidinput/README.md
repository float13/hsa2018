# ```(void)``` Input Arguments
11/11/2018 -DB

Testing Java and C syntax to see if the following ```(void)``` argument list is allowed to signify lack of input arguments for a function:
```C
void foo(void) {

}
```

## Result
- The above format is **invalid** syntax in Java and Processing
- However, it **is** valid in C.

Tested with ```javac 1.8.0_25``` and ```gcc 4.2.1```
