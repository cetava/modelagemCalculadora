import UIKit

class Usuario {
    var codRegistro: Int
    var nome: String
    var cpf: String
    var endereco: String
    var email: String
    var telefone: String
    var dataNascimento: String
    
    init(codRegistro: Int, nome: String, cpf: String, endereco: String, email: String, telefone: String, dataNascimento: String) {
        self.codRegistro = codRegistro
        self.nome = nome
        self.cpf = cpf
        self.endereco = endereco
        self.email = email
        self.telefone = telefone
        self.dataNascimento = dataNascimento
    }
    
    func cadastrarCliente() -> String {
        return "Cliente Cadastrado"
    }
    
    func alterarCliente() -> String {
        return "Cliente Alterado"
    }
    
    func excluirCliente() -> String {
        return "Cliente Excluido"
    }
    
    func cadastrarFUncionario() -> String {
        return "Funcionário Cadastrado"
    }
    
    func alterarFuncionario() -> String {
        return "Funcionário Alterado"
    }
    
    func excluirFuncionario() -> String {
        return "Funcionário Excluido"
    }
}


//------------------------------------------------------------------------

class Produto {
    
    var codProduto: Int
    var nomeProduto: String
    var valor: Double
    var fabricante: String
    var validade: String
    var quantidadeEstoque: Int
    var promocao: Bool
    
    init (codProduto: Int, nomeProduto:String, valor:Double, fabricante:String, validade:String, quantidadeEstoque:Int, promocao:Bool) {
        self.codProduto = codProduto
        self.nomeProduto = nomeProduto
        self.valor = valor
        self.fabricante = fabricante
        self.validade = validade
        self.quantidadeEstoque = quantidadeEstoque
        self.promocao = promocao
    }
    
    func cadastraProduto() -> String {
        return "Produto Cadastrado"
    }
    
    func alteraProduto() -> String {
        return "Produto Alterado"
    }
    
    func excluiProduto() -> String {
        return "Produto Excluído"
    }
    
    func statusPromocao() -> Bool {
        return promocao
    }
    
    func verificaEstoque(produto: String) -> Int{
        return quantidadeEstoque
    }
    
    func verificaValidade(produto: String) -> String {
        return "Dentro da Validade"
    }
}


//------------------------------------------------------------------------

class Cliente: Usuario {
    var dataRegistro: String
    var usaSacola: Bool
    var ehPreferencial: Bool
    var clienteFidelidade: Bool
    var envioPromocoes: Bool
    
    init(codRegistro: Int, nome: String, cpf: String, endereco: String, email: String, telefone: String, dataNascimento: String,
         dataRegistro: String, usaSacola: Bool, ehPreferencial: Bool, clienteFidelidade: Bool, envioPromocoes: Bool) {
        self.dataRegistro = dataRegistro
        self.usaSacola = usaSacola
        self.ehPreferencial = ehPreferencial
        self.clienteFidelidade = clienteFidelidade
        self.envioPromocoes = envioPromocoes
        super.init(codRegistro: codRegistro, nome: nome, cpf: cpf, endereco: endereco, email: email, telefone: telefone, dataNascimento: dataNascimento)
    }
    
    func verificarDatRegistro() -> String {
        return dataRegistro
    }
    
    func definirUsaSacola(usaSacola: Bool) -> Bool {
        self.usaSacola = usaSacola
        return usaSacola
    }
    func verificarEhPreferencial(ehPreferencial: Bool) -> Bool {
        self.ehPreferencial = ehPreferencial
        return ehPreferencial
    }
    func definirFidelidade(clienteFidelidade: Bool) -> Bool {
        self.clienteFidelidade = clienteFidelidade
        return clienteFidelidade
    }
    func definirFidelidade() -> String {
        return "Promoções enviadas"
    }
}


//------------------------------------------------------------------------

class Funcionário: Usuario {
    var dataAdmimissao: String
    var dataSaida: String
    var cargo: String
    var beneficios: Bool
    var salario: Double
    
    init(codRegistro: Int, nome: String, cpf: String, endereco: String, email: String, telefone: String, dataNascimento: String,
         dataAdmimissao: String, dataSaida: String, cargo: String, beneficios: Bool, salario: Double) {
        self.dataAdmimissao = dataAdmimissao
        self.dataSaida = dataSaida
        self.cargo = cargo
        self.beneficios = beneficios
        self.salario = salario
        super.init(codRegistro: codRegistro, nome: nome, cpf: cpf, endereco: endereco, email: email, telefone: telefone, dataNascimento: dataNascimento)
    }
    
    func verificarDataAdmissao() -> String {
        return dataAdmimissao
    }
    func verificarDataSaida() -> String {
        return dataSaida
    }
    func definirCargo(cargo: String) -> String {
        self.cargo = cargo
        return "Cargo - \(cargo)"
    }
    func verificarBeneficios() -> Bool {
        return beneficios
    }
    func definirSalario(salario: Double) -> String {
        self.salario = salario
        return "Salario - R$ \(salario)"
    }
}


//------------------------------------------------------------------------

let joao = Cliente(codRegistro: 1, nome: "João", cpf: "000999888-88", endereco: "Rua Blablabla, s/n", email: "joao@gmail.com", telefone: "(11) 99999-0000", dataNascimento: "29/12/1980", dataRegistro: "11/09/2020", usaSacola: true, ehPreferencial: false, clienteFidelidade: true, envioPromocoes: true)

print("\(joao.nome) - \(joao.cadastrarCliente())")
joao.definirUsaSacola(usaSacola: false)
print("Usa sacola: \(joao.usaSacola)")
print("\n --- \n")



let laura = Funcionário(codRegistro: 1, nome: "Laura", cpf: "999888777-66", endereco: "Rua Lalalalala, s/n", email: "laura@gmail.com", telefone: "(11) 98888-1111", dataNascimento: "12/07/1985", dataAdmimissao: "15/08/2020", dataSaida: "N/A", cargo: "Diretora Comercial", beneficios: true, salario: 7000.00)

print("\(laura.nome) - \(laura.cadastrarFUncionario())")
print(laura.definirSalario(salario: 12000.00))
print("\n --- \n")

//------------------------------------------------------------------------

let refrigerante = Produto(codProduto: 01, nomeProduto: "Coca-Cola", valor: 2.00, fabricante: "Coca-Cola", validade: "1 ano", quantidadeEstoque: 1000, promocao: true)
print("\(refrigerante.nomeProduto) - R$ \(refrigerante.valor)")
print("Produto em desconto: \(refrigerante.statusPromocao())")
print("\n --- \n")
