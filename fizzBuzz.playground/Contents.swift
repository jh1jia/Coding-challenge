/*
Write a program that outputs the string representation of numbers from 1 to n.
  
But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

Example:
 n = 15,
 Return:
 [
 "1",
 "2",
 "Fizz",
 "4",
 "Buzz",
 "Fizz",
 "7",
 "8",
 "Fizz",
 "Buzz",
 "11",
 "Fizz",
 "13",
 "14",
 "FizzBuzz"
 ]
  
 Time Complexity: O(n), Space Complexity: O(1)
*/

func fizzBuzz(_ n: Int) -> [String] {
    var result = [String]()
    if n < 0 {
        return result
    }
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            result.append("FizzBuzz")
        } else if i % 3 == 0 {
            result.append("Fizz")
        } else if i % 5 == 0 {
            result.append("Buzz")
        } else {
            result.append("\(i)")
        }
    }
    return result
}
