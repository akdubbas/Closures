//: Playground - noun: a place where people can play

import UIKit




func add(n1 : Int,n2 : Int) -> Int{
    return n1+n2;
}



func multiply(num1 : Int, num2 : Int) -> Int
{
    return num1*num2;
}

//Pass functions as input to other functions and functions as output
func calculator(n1 : Int,n2 : Int, operation: (Int, Int) -> Int ) -> Int{
    return (n1+n2) * operation(n1,n2);
    //return operation(n1,n2);
}


/*
 calculator(n1: 5, n2: 5, operation: multiply)
Above functionality can be converted in to Closures where we can pass the function block freely
Remove the func keyword, function name and rearrange the brackets by placing 'in' Keyword.
Can remove 'Int' in parameter types, because Swift can identify the data types known as Type inference.
*/

calculator(n1 : 2, n2 : 3 , operation : { (num1, num2) -> Int in
    return (num1*num2)
    })

//Get rid of data types
calculator(n1: 100, n2: 100, operation: { (num1, num2)  in
    return (num1 * num2)
})

// Make use of Anonymous parameter names provided by Swift
let result = calculator(n1: 4, n2: 5, operation: {($0 * $1)})
print(result) //result will be (4+5) * (4*5)

//In swift, if the last parameter in a function is a closure, then we can actually omit the last parameter name and we can close the input section
let result1 = calculator(n1: 3, n2: 10) {$0 * $1} //this is known as trailing closure
print(result1)



/*-------------------------------------------------------*/

//Map function on Arrays

let array = [7,3,4,5,9,10,14,33,21,28]

func addOne(n1 : Int) -> Int{
    return n1+1
}
array.map(addOne)

// Tur the above function in to Closure
array.map({(n1 : Int) -> Int in
    
    return n1 + 1
})

//Get Rid of Data Types
array.map({(num1) in
    num1 + 1
})

//Simply with Anonymous parameters
print(array.map({$0 + 1}))

let newArray = array.map({"\($0+1)"})
print("Map operation: \(newArray)")

let newArrayMap = array.map({($0) % 7 == 0})
print("Map operation: \(newArrayMap)")

let newArrayFilter = array.filter({($0) % 7 == 0})
print("Filter operation: \(newArrayFilter)")

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

class FireBase
{
    func createUser(username : String, password : String, completion : (Bool,Int) -> Void)
    {
        
        var isSucess = true;
        var userID = 123
        
        completion(isSucess,userID)
        
    }
}

class Myclass
{
    func registerButtonPressed()
    {
        let firebase = FireBase()
        firebase.createUser(username : "Amith",password : "abcd23",completion : { (isSucess : Bool,userID : Int) -> Void in
            
            print("Registration Sucessful: \(isSucess)")
            print("User ID: \(userID)")
        })
    }
    
    /*func completed(isSucess : Bool,userID : Int)
    {
        print("Registration Sucessfull: \(isSucess)")
        print("User ID: \(userID)")
    }*/
    
    
    
}

let myApp = Myclass()
myApp.registerButtonPressed()



/*
 Segues
 
 Push Segue is which we use in Navigation controller
 and Present modally we use to pop over view controllers, it doesn't get under Navigation Bar and navigation controller stack

 */

 




















































