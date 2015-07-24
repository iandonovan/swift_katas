//: Makes change for any integer

import UIKit

struct CoinChanger {
  func makeChange(amount: Int) -> [Int] {
    var change: [Int] = []
    var amount = amount
    for coin in [25, 10, 5, 1] {
      while(amount / coin > 0 && amount > 0) {
        change.append(coin)
        amount -= coin
      }
    }
    return change
  }
}

let cc = CoinChanger()
cc.makeChange(74)
cc.makeChange(0)
