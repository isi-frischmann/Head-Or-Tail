//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

func tossCoin() -> String {
    print("Tossing a coin")
    var coinIs: String = ""
    
    let coinIsHeadOrTails = Int(arc4random_uniform(2))
    
    if coinIsHeadOrTails == 0 {
        print("Coin is Head \(coinIsHeadOrTails)")
        coinIs = "HEAD"
    }
    else if coinIsHeadOrTails == 1 {
        print("Coin is Tail \(coinIsHeadOrTails)")
        coinIs = "TAIL"
    }
    return coinIs
}
tossCoin()

func tossMultipleCoins(input: Int) -> Double {
    var headCount: Int = 0
    var tailCount: Int = 0
    for i in 0...input {
        tossCoin()
        if tossCoin() == "HEAD" {
            headCount += 1
        }
        if tossCoin() == "TAIL" {
            tailCount += 1
        }
    }
    let coinRatio: Double = Double(headCount) / Double(tailCount)
    return coinRatio
}

class User {
    var intelligence = 0
    func studyFor(topic: String, hours: Int) {
        print("I am studying \(topic) for \(hours) hours")
    }
}
var user = User()
user.studyFor(topic: "Math", hours: 12)


