import gleeunit
import gleam/io
import gleam/int

pub fn main() {
  gleeunit.main()
}

pub fn add(a: Int, b: Int) -> Int {
  a + b
}

pub fn add_test() {
  let a = 2
  let b = 3
  let result = add(a, b)
  io.println("Adding " <> int.to_string(a) <> " + " <> int.to_string(b) <> " = " <> int.to_string(result))
  assert { result == 5 } 
}

