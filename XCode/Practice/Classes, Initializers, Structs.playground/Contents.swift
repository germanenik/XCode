//: Playground - noun: a place where people can play

import Cocoa

//classes - alive data, use reference, === to check if two objects reference the same
//structs - dead data (descriptions, etc.), do not inhterit anything, create new

class Event {
    let title: String
    let urgent: Bool
    let numOfPeople: Int?
    var description = ""
    static var counter = 0
    
    init(title: String, urgent: Bool, numOfPeople: Int?){
        self.title = title
        self.urgent = urgent
        self.numOfPeople = numOfPeople
        Event.counter += 1
    }
    
    func addDescription(description: String) -> String {
        self.description += description
        return self.description
    }
    
    func returnInfo() -> Void {
        print("Bla Bla")
    }
    
    static func totalEvents() -> Int {
        return Event.counter;
    }
}

enum Contact {
    case Oleg, Natalia, Nick, Eric, Taylor, Jessica, Elliot, Caleb
}
//in an iphone, i'll just have all of my contacts synced

class BirthdayParty: Event {
    let bdayBoy: Contact
    
    init(urgent: Bool, numOfPeople: Int?, bdayBoy: Contact) {
        self.bdayBoy = bdayBoy
        super.init(title: "Birthday Party of \(self.bdayBoy)",
            urgent: urgent, numOfPeople: numOfPeople)
    }
    
    func Text() -> String {
        return """
        Dear \(self.bdayBoy),
        
        Have a very happy birthday.
        I will do my best to come to your birthday party.
        
        Hope to see you soon.
        
        German Shabanets
        """
    }
}
//variable and methods can be static
//can declare methods 'class' instead of 'static' - same thing, but subclasses
//can override them

let meeting1 = Event(title: "Meeting with BofA Investors", urgent: false, numOfPeople: 2)
let bday1 = BirthdayParty(urgent: true, numOfPeople: 20, bdayBoy: Contact.Natalia)

print("German, you have \(Event.totalEvents()) events coming up.")
print("They are: \(meeting1.title), \(bday1.title)")



class FutureDay {
    var day, month, year: Int?
    
    init?(month: Int, day: Int, year: Int){
        if year >= 2018 && month >= 7 && day > 6 {
            self.year = year
            self.month = month
            self.day = day
        } else {
            return nil
        }
    }
}


/*
initializers can be:
designated - must call a designated initializer from a super class
convenience (secondary) - must call an initializer from the same class
    must ultimately call the designated init. from the same class
failable - init?(<args>){ if ...  }
required - have to be present in all classes
*/

