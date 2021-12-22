import Cocoa


struct BankAccount {
    var funds = 0
    
    mutating func deposit(amount:Int){
        funds += amount
    }
    
    mutating func withdraw(amount:Int) -> Bool{
        if funds > amount{
            funds -= amount
            return true
        }else{
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

account.funds -= 1000





struct BankAccounts {
    private var funds = 0 //now accessing funds from outside the struct isn’t possible, but it is possible inside both deposit() and withdraw(). If you try to read or write funds from outside the struct Swift will refuse to build your code.
    /**** This is called access control, because it controls how a struct’s properties and methods can be accessed from outside the struct .*/
    mutating func deposit(amount:Int){
        funds += amount
    }
    
    mutating func withdraw(amount:Int) -> Bool{
        if funds > amount{
            funds -= amount
            return true
        }else{
            return false
        }
    }
}

/****
 -Use "private" for don’t let anything outside the struct use this.
 -Use "fileprivate"  for don’t let anything outside the current file use this.
 -Use "public" for let anyone, anywhere use this.
 */

/****
 There’s one extra option that is sometimes useful for learners, which is this: private(set). This means “let anyone read this property, but only let my methods write it.” If we had used that with BankAccount, it would mean we could print account.funds outside of the struct, but only deposit() and withdraw() could actually change the value.
 */
