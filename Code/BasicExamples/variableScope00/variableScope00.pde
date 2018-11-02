int x = 123;

void setup() {
  foo();
  bar();
  arg(0);
  println("setup: " + x);
}

void foo() {
  int x = 10;
  println("foo: " + x);
}

void bar() {
  int x = 5;
  println("bar: " + x);
}

void arg(int x) {
  println("arg: " + x);
}
