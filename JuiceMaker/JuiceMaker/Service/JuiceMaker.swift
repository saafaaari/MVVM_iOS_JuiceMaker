//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 쥬스 메이커 타입
class JuiceMaker {
    var fruitStore = FruitStore.init(allFruitStock: 30)
    
    enum Juice {
        case strawberryJuice
        case bananaJuice
        case pineappleJuice
        case kiwiJuice
        case mangoJuice
        case strawberryAndBananaJuice
        case mangoAndKiwiJuice
    }
    
    func addStock(fruit: String, value: Int) {
        switch fruit {
        case "딸기":
            fruitStore.strawberryStock = value
        case "바나나":
            fruitStore.bananaStock = value
        case "파인애플":
            fruitStore.pineappleStock = value
        case "키위":
            fruitStore.kiwiStock = value
        case "망고":
            fruitStore.mangoStock = value
        default:
            return
        }
    }
    
    func makeJuice(menu: Juice) -> Juice? {
        switch menu {
        case .strawberryJuice:
            if fruitStore.strawberryStock >= 16 {
                fruitStore.strawberryStock -= 16
                return Juice.strawberryJuice
            }
        case .bananaJuice:
            if fruitStore.bananaStock >= 2 {
                fruitStore.bananaStock -= 2
                return Juice.bananaJuice
            }
        case .pineappleJuice:
            if fruitStore.pineappleStock >= 2 {
                fruitStore.pineappleStock -= 2
                return Juice.pineappleJuice
            }
        case .kiwiJuice:
            if fruitStore.kiwiStock >= 3 {
                fruitStore.kiwiStock -= 3
                return Juice.kiwiJuice
            }
        case .mangoJuice:
            if fruitStore.mangoStock >= 3 {
                fruitStore.mangoStock -= 3
                return Juice.mangoJuice
            }
        case .strawberryAndBananaJuice:
            if fruitStore.strawberryStock >= 10 && fruitStore.bananaStock >= 1 {
                fruitStore.strawberryStock -= 10
                fruitStore.bananaStock -= 1
                return Juice.strawberryAndBananaJuice
            }
        case .mangoAndKiwiJuice:
            if fruitStore.mangoStock >= 2 && fruitStore.kiwiStock >= 1 {
                fruitStore.mangoStock -= 2
                fruitStore.kiwiStock -= 1
                return Juice.mangoAndKiwiJuice
            }
        }
        return nil
    }
}
