#include <stdio.h>

//gcc test_switch.c -S -o test_switch

void f1() {
  printf("in f1");
}

void f2() {
  printf("in f2");
}

void f3() {
  printf("in f3");
}

void f4() {
  printf("in f4");
}

void f5() {
  printf("in f5");
}

int main(int argc, char** argv) {
  switch (argc) {
    case 1:
      f1();
      break;
    case 2:
      f2();
      break;
    case 3:
      f3();
      break;
    case 4:
      f4();
      break;
    case 5:
      f5();
      break;
  }
}
