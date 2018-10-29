import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)
import Fibs(fib_recursive, fib_iterative, fib_tail_recursive)

main = defaultMain tests

tests =
  testGroup
    "Test Recursive Fib"
    [ canary, test_fib_iterative_on_0, test_fib_iterative_on_1, test_fib_iterative_on_2, test_fib_iterative_on_7,
    test_fib_recursive_on_0, test_fib_recursive_on_1, test_fib_recursive_on_2, test_fib_recursive_on_7,
    test_fib_tail_recursive_on_0, test_fib_tail_recursive_on_1, test_fib_tail_recursive_on_2, test_fib_tail_recursive_on_7 ]

canary =
    testCase "canary" $ assertEqual [] True (True)

test_fib_iterative_on_0 =
    testCase "fib iterative of 0" $ assertEqual [] [1] (fib_iterative 0)

test_fib_iterative_on_1 =
    testCase "fib iterative of 1" $ assertEqual [] [1, 1] (fib_iterative 1)

test_fib_iterative_on_2 =
    testCase "fib iterative of 2" $ assertEqual [] [1, 1, 2] (fib_iterative 2)

test_fib_iterative_on_7 =
    testCase "fib iterative of 7" $ assertEqual [] [1, 1, 2, 3, 5, 8, 13, 21] (fib_iterative 7)

test_fib_recursive_on_0 =
    testCase "fib recursive of 0" $ assertEqual [] [1] (fib_recursive 0)

test_fib_recursive_on_1 =
    testCase "fib recursive of 1" $ assertEqual [] [1, 1] (fib_recursive 1)

test_fib_recursive_on_2 =
    testCase "fib recursive of 2" $ assertEqual [] [1, 1, 2] (fib_recursive 2)

test_fib_recursive_on_7 =
    testCase "fib recursive of 7" $ assertEqual [] [1, 1, 2, 3, 5, 8, 13, 21] (fib_recursive 7)

test_fib_tail_recursive_on_0 =
    testCase "fib tail recursive of 0" $ assertEqual [] [1] (fib_tail_recursive 0 [1, 1])

test_fib_tail_recursive_on_1 =
    testCase "fib tail recursive of 1" $ assertEqual [] [1, 1] (fib_tail_recursive 1 [1, 1])

test_fib_tail_recursive_on_2 =
    testCase "fib tail recursive of 2" $ assertEqual [] [1, 1, 2] (fib_tail_recursive 2 [1, 1])

test_fib_tail_recursive_on_7 =
    testCase "fib tail recursive of 7" $ assertEqual [] [1, 1, 2, 3, 5, 8, 13, 21] (fib_tail_recursive 7 [1, 1])
