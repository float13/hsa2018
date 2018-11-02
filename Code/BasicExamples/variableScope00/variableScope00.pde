/* Variable Scope example
 * Doug Brantner
 * 11/1/18
 */

/* We have 3 methods, each with their own LOCAL variable "x".
 * We also have a GLOBAL variable named "x".
 *
 * Each x is stored in a different in memory address
 * and has a different value.
 *
 * When we call the functions from setup(), they each print
 * their own local value. 
 *
 * The setup() function also prints the value of the global "x".
 */

/* Exercises:
 *  - Try commenting out the local definitions of "x" in the 
 *    sub-methods "foo" and "bar". What do they print?
 *  - Try changing the value passed to the "arg" function.
 *  - Comment out the global "x". Does the program still work? 
 *    Why, or why not?
 */

int x = 123;  // global variable

void setup() {
  foo();
  bar();
  arg(0);
  println("setup: " + x); // this accesses the global x
}

void foo() {
  int x = 10; // local scope - only foo can see this x
  println("foo: " + x);
}

void bar() {
  int x = 5;  // local scope - only bar can see this x
  println("bar: " + x);
}

void arg(int x) {
  // the input argument x is local to this method too
  println("arg: " + x);
}
