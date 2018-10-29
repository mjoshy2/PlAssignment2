defmodule FibTest do
  use ExUnit.Case
  doctest Fib

  test "Canary" do
    assert true == true
  end

  test "Fib Iterative Procedure and Process on 0" do
    assert Fib.fib_iterative(0) == [1]
  end

  test "Fib Iterative Procedure and Process on 1" do
    assert Fib.fib_iterative(1) == [1, 1]
  end

  test "Fib Iterative Procedure and Process on 2" do
    assert Fib.fib_iterative(2) == [1, 1, 2]
  end

  test "Fib Iterative Procedure and Process on 7" do
    assert Fib.fib_iterative(7) == [1, 1, 2, 3, 5, 8, 13, 21]
  end

  test "Fib Recusrive Procedure and Process on 0" do
    assert Fib.fib_recursive(0) == [1]
  end

  test "Fib Recusrive Procedure and Process on 1" do
    assert Fib.fib_recursive(1) == [1, 1]
  end

  test "Fib Recusrive Procedure and Process on 2" do
    assert Fib.fib_recursive(2) == [1, 1, 2]
  end

  test "Fib Recusrive Procedure and Process on 7" do
    assert Fib.fib_recursive(7) == [1, 1, 2, 3, 5, 8, 13, 21]
  end

  test "Fib Recusrive Procedure and Iterative Process on 0" do
    assert Fib.fib_tail_recursive(0) == [1]
  end

  test "Fib Recusrive Procedure and Iterative Process on 1" do
    assert Fib.fib_tail_recursive(1) == [1, 1]
  end

  test "Fib Recusrive Procedure and Iterative Process on 2" do
    assert Fib.fib_tail_recursive(2) == [1, 1, 2]
  end

  test "Fib Recusrive Procedure and Iterative Process on 7" do
    assert Fib.fib_tail_recursive(7) == [1, 1, 2, 3, 5, 8, 13, 21]
  end

end
