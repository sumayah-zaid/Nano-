//
//  main.swift
//  RestaurantMenu
//
//  Created by sumayah on 01/06/1443 AH.
//

import Foundation

struct Dish{
    var DishName :String
    var DishPrice:Int
    
    func printOrder(){
        print("the order is \(DishName) , \(DishPrice) price")
    }
}

// object
let Dish1: Dish = Dish(DishName: "pizza", DishPrice: 75)
let Dish2: Dish = Dish(DishName: "pasta", DishPrice: 85)
let Dish3: Dish = Dish(DishName: "burgar", DishPrice: 35)


let RestaurantMenu : [Dish]=[Dish1,Dish2,Dish3]

var userOrder : [Dish] =   [] // to append the price

print("Hello welcom to SZ Restaurant")

let ourMenu: String="""
1.pizza
2.pasta
3.burgar
"""

var userChoice = ""



print("__________________________________")
print("""
        1. see the menu
        2. make order
        3.Display the Total Price
        4.Exit
""")
print("_____________________________________")
print("select your choice")

repeat{
    
    if let userinput = readLine(){
        userChoice=userinput
        switch userinput {
        case "1":
            print(ourMenu)
        case "2":
           readUserInput()
        case"3":
            var totalPrice = calculatePrice(orders:userOrder)
                print("the Total Price is \(totalPrice)")
        case"4":
            print("Exit")
        default :
            print("select your choice")
            
        }
        
        
        
    }
}while userChoice != "4"




func readUserInput (){
    var userinput = ""
    repeat{
        print("what is the Dish do you want ?")
        print("pizza")
        print("pasta")
        print(" burgar")
        if let userservice = readLine(){
            switch userservice{
            case "pizza":
               userOrder.append(RestaurantMenu[0])
                print("\(Dish1.DishName) Price is \(Dish1.DishPrice)")
           case "pasta":
              userOrder.append(RestaurantMenu[1])
                print("\(Dish2.DishName) Price is \(Dish2.DishPrice)")
           case "burgar":
              userOrder.append(RestaurantMenu[2])
                print("\(Dish3.DishName) Price is \(Dish3.DishPrice)")
           default:
               print("Type your order")

                
            }
            print("Do you want to add a new Dish Y/N ?")
            userinput = readLine()!
            
        }
        
    }while userinput != "N"

}


func calculatePrice(orders:[Dish])->Int{
    var totalPrice = 0
    for order in orders {
        totalPrice = totalPrice+order.DishPrice
    }
    
    for item in orders{
        item.printOrder()
    }
    return totalPrice

    
}
