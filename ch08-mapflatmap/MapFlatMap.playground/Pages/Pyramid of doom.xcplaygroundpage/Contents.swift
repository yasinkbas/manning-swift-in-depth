//: [Previous](@previous)
import Foundation

func half(_ int: Int) -> Int? { // Only half even numbers
    guard int % 2 == 0 else { return nil }
    return int / 2
}
print(half(4)) // Optional(2)
print(half(5)) // nil

var value: Int? = nil
let startValue = 80

if let halvedValue = half(startValue) {
    print(halvedValue) // 40
    value = halvedValue
    
    if let halvedValue = half(halvedValue) {
        print(halvedValue) // 20
        value = halvedValue
        
        if let halvedValue = half(halvedValue) {
            print(halvedValue) // 10
            if let halvedValue = half(halvedValue) {
                value = halvedValue
            } else {
                value = nil
            }
            
        } else {
            value = nil
        }
    } else {
        value = nil
    }
}

print(value) // Optional(5)

//: [Next](@next)
