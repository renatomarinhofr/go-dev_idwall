import UIKit

/* Classes e Structs */

//class Person {
//
//    var name: String
//    var lastName: String
//    var age: Int
//
//    init(name: String, lastName: String, age: Int) {
//        self.name = name
//        self.lastName = lastName
//        self.age = age
//    }
//
//    func welcome() {
//        print("Seja bem vindo \(name) \(lastName) ")
//    }
//}
//
//var person = Person(name: "Renato", lastName: "Marinho", age: 20)
//
//print(person.welcome())

//
//struct Person {
//    var name: String
//    var lastName: String
//    var age: Int
//
//    init(name: String, lastName: String, age: Int) {
//        self.name = name
//        self.lastName = lastName
//        self.age = age
//    }
//
//    func welcome() {
//        print("Seja bem vindo \(name) \(lastName) ")
//    }
//}
//
//var person = Person(name: "Renato", lastName: "Marinho", age: 20)
//
//print(person.welcome())


/* Extensions, Protocol */

//protocol Nota {
//    func notaAluno()
//}
//
//protocol Materia {
//    func materiaAluno()
//}
//
//class Aluno {
//
//    var name: String?
//
//    func getName() -> String {
//        guard let name = name else { return "" }
//        return name
//    }
//}
//
//extension Aluno {
//    func setAluno(name: String) {
//        self.name = name
//    }
//}
//
//extension Aluno: Nota {
//    func notaAluno() {
//
//    }
//}
//
//extension Aluno: Materia {
//    func materiaAluno() {
//
//    }
//}


class CustomElement {
    
    func alterar() {
        /*100*/
    }
    
    func deletar() {
        
    }
}


let fullName = "renato marinho de freitas"

print(fullName.capitalized)

print(fullName.prefix(1))

print(fullName.dropFirst())
