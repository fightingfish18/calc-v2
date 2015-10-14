//
//  main.swift
//  calcArrayFunPoints
//
//  Created by Smyth May on 10/13/15.
//  Copyright © 2015 Smyth May. All rights reserved.
//

import Foundation

func add(num1 : Int, num2 : Int) -> Int {
    return num1 + num2;
}

func subtract(num1 : Int, num2 : Int) -> Int {
    return num1 - num2;
}

func multiply(num1 : Int, num2 : Int) -> Int {
    return num1 * num2;
}

func divide(num1 : Int, num2 : Int) -> Int {
    return num1 / num2;
}

func operation(num1 : Int, num2 : Int, op : (Int, Int) -> Int) -> Int {
    return op(num1, num2);
}

func arrayAdd(numbers : [Int]) -> Int {
    var sum = 0;
    for number in numbers {
        sum += number;
    }
    return sum;
}

func arrayMultiply(numbers : [Int]) -> Int {
    var product = 1;
    for number in numbers {
        product *= number;
    }
    return product;
}

func arrayCount(numbers : [Int]) -> Int {
    return Int(numbers.count);
}

func arrayAverage(numbers : [Int]) -> Int {
    let sum = arrayAdd(numbers);
    return sum / Int(numbers.count);
}

func arrayMath(numbers : [Int], op : ([Int]) -> Int) -> Int {
    return op(numbers);
}

func tupleAdd(tuple1 : (Int, Int), tuple2 : (Int, Int)) -> (Int, Int) {
    return ((tuple1.0 + tuple2.0), (tuple1.1 + tuple2.1));
}

func tupleSubtract(tuple1 : (Int, Int), tuple2 : (Int, Int)) -> (Int, Int) {
    return ((tuple1.0 - tuple2.0), (tuple1.1 - tuple2.1));
}

func dictSubtract(dict1 : Dictionary<String, Int>, dict2 : Dictionary<String, Int>) -> (Int, Int) {
    if let _ = dict1["x"] {
        if let _ = dict1["y"] {
            if let _ = dict2["x"] {
                if let _ = dict2["y"] {
                    return ((dict1["x"]! - dict2["x"]!), (dict1["y"]! - dict2["y"]!));
                }
            }
        }
    }
    return (0, 0);
}

func dictSubtract(dict1 : Dictionary<String, Double>, dict2 : Dictionary<String, Double>) -> (Double, Double) {
    if let _ = dict1["x"] {
        if let _ = dict1["y"] {
            if let _ = dict2["x"] {
                if let _ = dict2["y"] {
                    return ((dict1["x"]! - dict2["x"]!), (dict1["y"]! - dict2["y"]!));
                }
            }
        }
    }
    return (0.0, 0.0);
}

func dictAdd(dict1 : Dictionary<String, Int>, dict2 : Dictionary<String, Int>) -> (Int, Int) {
    if let _ = dict1["x"] {
        if let _ = dict1["y"] {
            if let _ = dict2["x"] {
                if let _ = dict2["y"] {
                    return ((dict1["x"]! + dict2["x"]!), (dict1["y"]! + dict2["y"]!));
                }
            }
        }
    }
    return (0, 0);
}

func dictAdd(dict1 : Dictionary<String, Double>, dict2 : Dictionary<String, Double>) -> (Double, Double) {
    if let _ = dict1["x"] {
        if let _ = dict1["y"] {
            if let _ = dict2["x"] {
                if let _ = dict2["y"] {
                    return ((dict1["x"]! + dict2["x"]!), (dict1["y"]! + dict2["y"]!));
                }
            }
        }
    }
    return (0.0, 0.0);
}

/*          Test operations       */

let num1 = 10;
let num2 = 5;
var simpleAdd = operation(num1, num2: num2, op: add);
print("Numbers being used: \(num1),  \(num2). Operation: Addition");
print("Result: \(simpleAdd)");

var simpleSubtract = operation(num1, num2: num2, op: subtract);
print("Numbers being used: \(num1),  \(num2). Operation: Subtraction");
print("Result: \(simpleSubtract)");

var simpleMultiply = operation(num1, num2: num2, op: multiply);
print("Numbers being used: \(num1),  \(num2). Operation: Multiplication");
print("Result: \(simpleMultiply)");

var simpleDivide = operation(num1, num2: num2, op: divide);
print("Numbers being used: \(num1),  \(num2). Operation: Division");
print("Result: \(simpleDivide)");

let numbers = [Int]([3, 5, 7]);
let arraySum = arrayMath(numbers, op : arrayAdd);
print("Numbers being used: \(numbers) Operation: Array Addition");
print("Result: \(arraySum)");

let arrayProduct = arrayMath(numbers, op : arrayAdd);
print("Numbers being used: \(numbers) Operation: Array Multiplication");
print("Result: \(arrayProduct)");

let arrayAverageNum = arrayMath(numbers, op : arrayAverage);
print("Numbers being used: \(numbers) Operation: Array Average");
print("Result: \(arrayAverageNum)");

let arrayCountNum = arrayMath(numbers, op : arrayCount);
print("Numbers being used: \(numbers) Operation: Array Count");
print("Result: \(arrayCountNum)");

let params1 = (3, 4);
let params2 = (5, 6);

let tupleSum = tupleAdd(params1, tuple2 : params2);
print("Numbers being used: \(params1),  \(params2). Operation: Tuple Addition");
print("Result: \(tupleSum)");

let tupleRemain = tupleSubtract(params1, tuple2 : params2);
print("Numbers being used: \(params1),  \(params2). Operation: Tuple Subtraction");
print("Result: \(tupleRemain)");

let dict1 = ["x" : 7, "y" : 9];
let dict2 = ["x" : 11, "y" : 15];

let dictAddNum = dictAdd(dict1, dict2: dict2);
print("Numbers being used: \(dict1),  \(dict2). Operation: Dictionary Addition With Ints");
print("Result: \(dictAddNum)");

let dictSubtractNum = dictSubtract(dict1, dict2 : dict2);
print("Numbers being used: \(dict1),  \(dict2). Operation: Dictionary Subtraction With Ints");
print("Result: \(dictSubtractNum)");

let dict1dub = ["x" : 7.0, "y" : 9.0];
let dict2dub = ["x" : 11.0, "y" : 15.0];

let dictAdd2 = dictAdd(dict1dub, dict2 : dict2dub);
print("Numbers being used: \(dict1dub),  \(dict2dub). Operation: Dictionary Addition With Doubles");
print("Result: \(dictAdd2)");

let dictSubtract2 = dictSubtract(dict1dub, dict2 : dict2dub);
print("Numbers being used: \(dict1dub),  \(dict2dub). Operation: Dictionary Subtraction With Doubles");
print("Result: \(dictSubtract2)");

let dict3 = ["a" : 1];
let dict4 = ["d" : 3];

let dictErrorAdd = dictAdd(dict3, dict2 : dict4);
print("Numbers being used: \(dict3),  \(dict4). Operation: Dictionary Addition with Error");
print("Result: \(dictErrorAdd), Error successfully caught and returned \(dictErrorAdd)");
