//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



let add = {
    (a: Int, b: Int) -> Int in
    return a+b
}

let sub:(Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a-b
}

func test(a:Int, b:Int, completion:(Int, Int) -> Int) {
    print("test")
    print(completion(a, b))
}

test(a: 3, b: 4, completion: add)
test(a: 3, b: 4, completion: sub)

test(a: 3, b:4){
    (a: Int, b: Int) -> Int in
    return a*b
}

