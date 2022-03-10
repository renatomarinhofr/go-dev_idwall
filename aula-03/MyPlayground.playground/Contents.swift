import UIKit
//
///* Switch Case */
//
//let notaMedia = 6
//
//switch notaMedia {
//case 0...5:
//    print("Você está abaixo da média, precisar estudar, sua nota é: \(notaMedia)")
//case 6...9:
//    print("Você está na média sua nota é: \(notaMedia)")
//case 10:
//    print("Você atingiu a nota máxima, Parabéns!!, sua nota é: \(notaMedia)")
//default:
//    print("Sua nota não foi informada")
//}
//
//
///* Enum */
//
//enum Aluno {
//    case Renato
//    case Maria
//    case John
//}
//
//let aluno = Aluno.Renato
//
//print(aluno)
//
//switch aluno {
//case .Renato:
//    print("Nota 6")
//case .John:
//    print("Nota 8")
//case .Maria:
//    print("Nota 10")
//default:
//    print("Nenhum aluno encontrado")
//}
//
//
//enum State {
//    case Sucess
//    case Error
//    case Loading
//}
//
//let state = State.Loading
//
//switch state {
//case .Sucess:
//    print("Sucesso")
//case .Error:
//    print("Error")
//case .Loading:
//    print("Carregando")
//}
//
//
///* Tipagem enum */
//
//enum State: String {
//    case sucess = "Efetuado com sucesso"
//    case failure = "Falha, tente novamente"
//}
//
//print(State.sucess)
//
//
//enum Page: Int {
//    case one = 1, two, three, four // Atribuição implícita
//
//    func getPage() -> Int {
//        return self.rawValue
//    }
//}
//
//var numberPage = Page.four
//
//print(numberPage.getPage())
//
//
//enum BankDeposit {
//    case inValue(Int)
//    case inCheck(Bool)
//}
//
//func makeDeposit(values: BankDeposit) {
//    switch values {
//    case .inValue(let value):
//        print("Deposito de R$ \(value)")
//    case .inCheck(let isCheck):
//        print("In check: \(isCheck)")
//    }
//}
//
//let deposit = BankDeposit.inValue(400)
//
//makeDeposit(values: deposit)
//
//
///* Paradigma funcional /map/filter/reduce */
//
// var estudantes = ["Renato", "Wanessa", "Ana", "Alberto", "José"]
//
// print(estudantes.sorted())
//
///*
// lhs = left hand side
// rhs = right hand side
// */
//
//
//estudantes.sort { (lhs: String, rhs: String) -> Bool in
//    lhs < rhs
//}
//
//print(estudantes)
//
//let descending = estudantes.sorted(by: >)
//
//print(descending)
//
///* meged two arrays */
//
//let array1 = [1, 2, 5, 6, 9]
//let array2 = [10, 23, 45, 56, 91]
//
//let flattenArray = array1 + array2
//
//print(flattenArray)
//
///* Map */
//
//var alunosNota = [6, 8, 9, 10, 5]
//
//var novaNotas: [Int] = []
//
//for nota in alunosNota {
//    let novaNota = nota + 1
//    novaNotas.append(novaNota)
//}
//
//print(alunosNota)
//print(novaNotas)
//
//alunosNota = alunosNota.map({ res in
//    return res + 1
//})
//
//alunosNota = alunosNota.map { $0 * 3 }
//
//print(alunosNota)
//
//
///* Filter */
//
//var notasAlunosAprovados: [Int] = []
//
//for nota in alunosNota {
//    if nota >= 6 {
//        notasAlunosAprovados.append(nota)
//    }
//}
//
//print(notasAlunosAprovados)
//
//alunosNota = alunosNota.filter({ res in
//    res >= 6
//})
//
//print(alunosNota)
//
//alunosNota = alunosNota.filter { $0 >= 6 }
//
//print(alunosNota)
//
///* Reduce */
//
//var soma = 0
//
//var notas = [4, 5, 6, 8, 10]
//
//for nota in notas {
//    soma += nota
//}
//
//print(soma)
//
// soma = notas.reduce(0, { $0 + $1 })
//
//soma = notas.reduce(0, +)
//
//print(soma)

/* Desafio Palindromo */

// função que verifica se uma palavra é palindromo

func isPalindromo(_ word: String) -> String {
   let reversedWord = String(word.reversed())
    if word == reversedWord {
        return "A palavra \(word) é um palíndromo"
    } else {
        return "A palavra \(word) não é um palíndromo"
    }
}

print(isPalindromo("arara"))

print(isPalindromo("ovo"))

print(isPalindromo("sacas"))
