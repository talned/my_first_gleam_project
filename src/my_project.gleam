import gleam/io
import gleam/int
import gleam_community/ansi
import gleam_community/colour

fn fib(n) {
  case n {
    0 -> 0
    1 -> 1
    _ -> fib(n - 1) + fib(n - 2)
  }
}

fn emoji(i) {
  case i % 5 {
    0 -> "🎉"
    1 -> "✨"
    2 -> "🚀"
    3 -> "🔥"
    _ -> "🌟"
  }
}

fn color(i) {
  case i % 5 {
    0 -> colour.blue
    1 -> colour.purple
    2 -> colour.red
    3 -> colour.green
    _ -> colour.yellow
  }
}

pub fn main() {
  io.println(ansi.colour("Fibonacci Sequence with Fireworks:", colour.blue))
  print_fibs(0, 10)
}

fn print_fibs(i, n) {
  case i > n {
    True -> Nil
    False -> {
      let msg = "fib(" <> int.to_string(i) <> ") = " <> int.to_string(fib(i)) <> " " <> emoji(i)
      io.println(ansi.colour(msg, color(i)))
      print_fibs(i + 1, n)
    }
  }
}

