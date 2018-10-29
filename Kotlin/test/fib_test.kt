import org.junit.jupiter.api.Test;
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class FibonacciTest {

  @Test fun canary() {
    assertTrue(true)
  }

  @Test fun fibIterativeFor0() {
    assertEquals(listOf(1), Fib().fibIterative(0))
  }

  @Test fun fibIterativeFor1() {
    assertEquals(listOf(1, 1), Fib().fibIterative(1))
  }

  @Test fun fibIterativeFor2() {
    assertEquals(listOf(1, 1, 2), Fib().fibIterative(2))
  }

  @Test fun fibIterativeFor7() {
    assertEquals(listOf(1, 1, 2, 3, 5, 8, 13, 21), Fib().fibIterative(7))
  }

  @Test fun fibRecursiveFor0() {
    assertEquals(listOf(1), Fib().fibRecursive(0))
  }

  @Test fun fibRecursiveFor1() {
    assertEquals(listOf(1, 1), Fib().fibRecursive(1))
  }

  @Test fun fibRecursiveFor2() {
    assertEquals(listOf(1, 1, 2), Fib().fibRecursive(2))
  }

  @Test fun fibRecursiveFor7() {
    assertEquals(listOf(1, 1, 2, 3, 5, 8, 13, 21), Fib().fibRecursive(7))
  }

  @Test fun tailRecursionFor0() {
    assertEquals(listOf(1), Fib().tailRecursion(0))
  }

  @Test fun tailRecursionFor1() {
    assertEquals(listOf(1, 1), Fib().tailRecursion(1))
  }

  @Test fun tailRecursionFor2() {
    assertEquals(listOf(1, 1, 2), Fib().tailRecursion(2))
  }

  @Test fun tailRecursionFor7() {
    assertEquals(listOf(1, 1, 2, 3, 5, 8, 13, 21), Fib().tailRecursion(7))
  }

}