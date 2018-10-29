defmodule Fib do
	def fib_iterative(0), do: [1]
	def fib_iterative(1), do: [1, 1]
	def fib_iterative(number), do: Enum.reduce(2..number, [1, 1], fn(i, seq) -> seq ++ [Enum.sum(Enum.drop(seq, i - 2))] end)

	def fib_recursive(0), do: [1]
	def fib_recursive(1), do: [1, 1]
	def fib_recursive(number) do
		seq = fib_recursive(number - 1)
		seq  ++ [Enum.sum(Enum.drop(seq, number - 2))]
	end
                 
	def fib_tail_recursive(x, seq \\ [1, 1])
	def fib_tail_recursive(0, seq), do: [1]
	def fib_tail_recursive(1, seq), do: seq
	def fib_tail_recursive(number, seq), do: fib_tail_recursive(number - 1, seq ++ [Enum.sum(Enum.take(seq, -2))])
end
