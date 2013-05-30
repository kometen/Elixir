defmodule Chop do
  def guess(n), do: _guess(n, 0, 1..1000)

	# private methods
	def _guess(0, x, a..b), do: (
		a..b
	)
	def _guess(n, x, a..b), do: (
		x = div(b,2)
		if n <= x, do: (
			b = b - x
		)
		if n > x, do: (
			a = b
		)
		_guess(n-1, x, a..b)
	)
end
