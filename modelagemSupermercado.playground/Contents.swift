import UIKit


// Classe Produto (Classe Pai)
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
    
    func cadastraProduto() {
        
    }
    
    func alteraProduto() {
    
    }
    
    func excluiProduto() {
        
    }
    
    func statusPromocao() -> Bool {
        return promocao
    }
    
    func verificaEstoque() {
        
    }
    
    func verificaValidade() {
        
    }
}


//------------------------------------------------------------------------


// Classe de Cliente que herda os atributos da classe Produto
class Cliente: Produto {
   
    var codCliente: Int
    var nome: String
    var cpf: String
    var endereco: String
    var email: String
    var telefone: String
    var dataNascimento: String
    var itemCompras = [Int]()
    
    init (codCliente: Int, nome:String, cpf:String, endereco:String, email:String, telefone:String, dataNascimento:String, itemCompras:Int, codProduto: Int, nomeProduto:String, valor:Double, fabricante:String, validade:String, quantidadeEstoque:Int, promocao:Bool) {
        self.codCliente = codCliente
        self.nome = nome
        self.cpf = cpf
        self.endereco = endereco
        self.email = email
        self.telefone = telefone
        self.dataNascimento = dataNascimento
        self.itemCompras.append(codProduto)
        super.init(codProduto: codProduto, nomeProduto: nomeProduto, valor: valor, fabricante: fabricante, validade: validade, quantidadeEstoque: quantidadeEstoque, promocao: promocao)
    }
    
    func cadastraCliente() {
        
    }
    
    func alteraCliente() {
        
    }
    
    func excluiCliente() {
        
    }
    
    func favoritaProduto () {
        
    }
    
    func enivaPromocao () {
        
    }
    
    func adicionaItemCarrinho() {
        
    }
    
    func removeItemCarrinho () {
        
    }
    
    func finalizaCompra() {
        
    }
}


//------------------------------------------------------------------------


// Classe de Pagamentos que herda os atributos da classe Cliente
class Pagamento: Cliente {
    
    var somaValorTotal: Double
    var formaPagamento: String
    var parcelaCompra: Int
    
    init (codCliente:Int, nome:String, cpf:String, endereco:String, email:String, telefone:String, dataNascimento:String, itemCompras:Int, codProduto:Int, nomeProduto:String, valor:Double, fabricante:String, validade:String, quantidadeEstoque:Int, promocao:Bool, somaValorTotal: Double, formaPagamento:String, parcelaCompra:Int){
        self.somaValorTotal = somaValorTotal
        self.formaPagamento = formaPagamento
        self.parcelaCompra = parcelaCompra
        super.init(codCliente: codCliente, nome: nome, cpf: cpf, endereco: endereco, email: email, telefone: telefone, dataNascimento: dataNascimento, itemCompras: itemCompras, codProduto: codProduto, nomeProduto: nomeProduto, valor: valor, fabricante: fabricante, validade: validade, quantidadeEstoque: quantidadeEstoque, promocao: promocao)
    }
    
    func fechaCarrinho() {
        
    }
    
    func realizaPagamento() {
        
    }
    
    func emiteNF() {
        
    }
    
    func cancelaCompra() {
        
    }
    
    func enviaMercadoria() {
        
    }
}
