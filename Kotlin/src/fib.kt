class Fib {

	fun fibIterative(number: Int): List<Int> =  when (number) {
		0 -> listOf(1)
		1 -> listOf(1, 1)
		else -> (2..number).fold(listOf(1, 1)) { seq, _ -> seq + seq.takeLast(2).sum() }
	}

	fun fibRecursive(number: Int): List<Int> = when (number) {
		0 -> listOf(1)
		1 -> listOf(1, 1)
		else -> {
			var seq = fibRecursive(number - 1)
			seq + seq.takeLast(2).sum()
		}
	}

	tailrec fun tailRecursion(number: Int, seq: List<Int> = listOf(1, 1)): List<Int> = when (number) {
		0 -> listOf(1)
		1 -> seq
		else -> tailRecursion(number  - 1, seq + seq.takeLast(2).sum())
	}

}