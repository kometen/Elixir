defmodule Fibonacci do

  def of(n), do: _of(n, 0, 0, 0)

	# private methods
	def _of(0, a, b, temp), do: b
	def _of(n, 0, 0, temp), do: _of(n-1, 1, 1, temp)
	def _of(n, a, b, temp), do: (
		temp = a
		a = a + b
		b = temp
		_of(n-1, a, b, temp)
	)
end
