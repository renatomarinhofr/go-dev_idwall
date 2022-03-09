import UIKit
/* Using if let */

var message: String? // opcional

message = "Any message"

// print(message ?? "any_message") // print message com default value

if let message = message {
    print(message)
}

// If let substitui este tipo de condição

if message != nil {
    print(message)
} else {
    print("nil")
}


/* Using guard let */

func icon() -> UIImage {
    
    guard let image = UIImage(named: "Photo") else {
        return UIImage(named: "Default")!
    }
    
    return image
    
}

// A função só printa o param se houver algum valor, verificado pelo guard let

func someFunc(param: String?) {
    
    guard let param = param else { return }
    
    print(param)
    
}

// someFunc(param: "")

func getUser(name: String?) -> String {
    
    if let name = name {
        return name
    }
    
    return "Renato"
    
}

// getUser(name: nil) // Se houver valor retorna ele mesmo, se não retorna o valor default

/* Function */


func myCar() {
    print("Meu carro")
}

func myCar(name: String) {
    print("Meu carro é um \(name) ")
}

func myName(name first: String) {
    print("Meu nome é \(first) ")
}


// myCar(name: "Fusca")

// myName(name: "Renato")


func myAge(_ age: Int) {
    print("Minha idade é: \(age) ")
}

// myAge(20)

typealias FullName = String

func getName(name: String) -> String {
    name
}

func getPerson(name: String, lasName: String, age: Int) -> (String, String, Int) {
    return (name, lasName, age)
}

let person = getPerson(name: "Renato", lasName: "Marinho", age: 20)

//print(person)
//
//print(person.0)
//
//print(person.1)
//
//print(person.2)

/*
 Closures
 */

func makeBuy(value: Int, onCompetion: (Int) -> Void) {
    onCompetion(value)
}

makeBuy(value: 40) { res in
    print("res \(res) ")
}

typealias onCompetion = (Int, String) -> Void

func makeBuy(onCompetion: onCompetion) {
    onCompetion(50, "Renato")
}

makeBuy { res, name in
    print(res)
    print(name)
}

// exemplo de pilha com functions utilizando LIFO(Last-In First-Out)

var names = ["Renato", "Maria", "João"]


func addName(name: String) {
    names.append(name)
}

addName(name: "José")

print(names)

func removeName() {
    names.removeLast()
}

removeName()
removeName()

print(names)
