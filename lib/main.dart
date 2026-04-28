import 'package:flutter/material.dart';
import 'widgets/botoes.dart';
import 'widgets/textos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CadastroProduto(),
    );
  }
}

class CadastroProduto extends StatefulWidget {
  const CadastroProduto({super.key});

  @override
  State<CadastroProduto> createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {
  final nomeController = TextEditingController();
  final precoController = TextEditingController();
  final quantidadeController = TextEditingController();
  final categoriaController = TextEditingController();
  final codigoController = TextEditingController();

  double total = 0;

  void calcularTotal() {
    final preco = double.tryParse(precoController.text) ?? 0;
    final quantidade = int.tryParse(quantidadeController.text) ?? 0;

    setState(() {
      total = preco * quantidade;
    });
  }

  void limpar() {
    nomeController.clear();
    precoController.clear();
    quantidadeController.clear();
    categoriaController.clear();
    codigoController.clear();

    setState(() {
      total = 0;
    });
  }

  void salvar() {
    print('Salvar');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // cor de fundo
        title: const Text(
          "Cadastro de Produto",
          style: TextStyle(
            color: Colors.white, // cor do texto
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          campoTexto(label: "Nome do Produto", controller: nomeController),

          campoTexto(
            label: "Preço",
            controller: precoController,
            tipo: TextInputType.number,
          ),

          campoTexto(
            label: "Quantidade",
            controller: quantidadeController,
            tipo: TextInputType.number,
          ),

          campoTexto(label: "Categoria", controller: categoriaController),

          campoTexto(
            label: "Código de Acesso",
            controller: codigoController,
            senha: true,
          ),

          Text(
            "Total: R\$ ${total.toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          Row(
            children: [
              botao(
                texto: "Calcular",
                onPressed: calcularTotal,
                cor: Colors.blue,
              ),
              botao(texto: "Limpar", onPressed: limpar, cor: Colors.orange),
              botao(texto: "Salvar", onPressed: salvar, cor: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}
