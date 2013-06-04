defmodule MyList do

  # len()
	def len([]), do: 0
	def len([_head|tail]), do: 1 + len(tail)

	# square()
	def square([]), do: []
	def square([head|tail]), do: [ head*head | square(tail) ]

	# add_1()
	def add_1([]), do: []
	def add_1([head|tail]), do: [head + 1 | add_1(tail)]

	# map()
	def map([], _func), do: []
	def map([head|tail], func), do: [func.(head)|map(tail, func)]

	# sum()
	def sum(list), do: _sum(list, 0)
	# private methods
	defp _sum([], total), do: total
	defp _sum([head|tail], total), do: _sum(tail, head+total)

	# reduce()
	def reduce([], value, _), do: value
	def reduce([head|tail], value, func), do: reduce(tail, func.(head, value), func)

	# mapsum()
	def mapsum(list, func), do: _mapsum(list, func, 0)
	# private methods
	defp _mapsum([], _, sum), do: sum
	defp _mapsum([head|tail], func, sum), do: _mapsum(tail, func, func.(head) + sum)

end

MyList.mapsum([1,2,3], &1 * &1)
MyList.map [1,2,3,4], fn (n) -> n*n end
MyList.reduce([1,2,3,4,5], 1, &1 * &2) 
