function exercicio1() {
    // quantidade total de itens em estoque
    let totalProdutos = 0;
    for (pos = 0; pos < listaProdutos.length; pos++) {
        let prod = listaProdutos[pos];
        totalProdutos = totalProdutos + prod.qtdEstoque;
    }
    console.log("Total de tudo = " + totalProdutos);
}

function exercicio2() {
     // quantidade total de itens em destaque
     let totalEmDestaque = 0;
     for (pos = 0; pos < listaProdutos.length; pos++) {
         let prod = listaProdutos[pos];
         if (prod.emDestaque == "sim"){
             totalEmDestaque = totalEmDestaque + prod.qtdEstoque;
         }
     }
     console.log("Total dos Destaques= " + totalEmDestaque);
}

function exercicio3() {
    // quantidade total de itens disponíveis
    let totalDisponiveis = 0;
     for (pos = 0; pos < listaProdutos.length; pos++) {
         let prod = listaProdutos[pos];
         if (prod.Disponiveis == "sim"){
             totalDisponiveis = totalDisponiveis + prod.qtdEstoque;
         }
     }
     console.log("Total dos Disponíveis= " + totalDisponiveis);
}

function exercicio4(){
    // valor total do inventário
    let totalInventario = 0;
    for (pos = 0; pos < listaProdutos.length; pos++) {
        let prod = listaProdutos[pos];
        totalInventario = totalInventario + prod.qtdEstoque * prod.preco;
    }
    console.log("Total do Inventário R$ "+ totalInventario);
}


function exercicio5(){
    // somatória de itens por departamento
    let departamento = {
        id: 0,
        nomeDepto: "",
        qtdEstoque: 0
    }
    
    let idDepto = 0
    for(pos=0; pos<listaProdutos.length; pos++){
       if(idDepto != listaProdutos[pos].departamento.idDepto){   //o departamento é diferente
            if (departamento.id != 0){
                console.log("Estoque do Departamento...");
                console.log(departamento);
            }
            idDepto = listaProdutos[pos].departamento.idDepto;
            departamento.id = idDepto;
            departamento.nomeDepto = listaProdutos[pos].departamento.nomeDepto;
            departamento.qtdEstoque = listaProdutos[pos].qtdEstoque;
       }
       else{  //o departamento é o mesmo do item anterior
            departamento.qtdEstoque = departamento.qtdEstoque + listaProdutos[pos].qtdEstoque;
       }
    }
    console.log(departamento);
}

function exercicio6(){
    // valor total de inventário por departamento
    let departamento = {
        id: 0,
        nomeDepto: "",
        totalInventario: 0
    }
    let idDepto = 0
    for(pos=0; pos<listaProdutos.length; pos++){
       if(idDepto != listaProdutos[pos].departamento.idDepto){
        if (departamento.id != 0){
            console.log("Inventário total do departamento...");
            console.log(departamento);
        }
        idDepto = listaProdutos[pos].departamento.idDepto;
        departamento.id = idDepto;
        departamento.nomeDepto = listaProdutos[pos].departamento.nomeDepto;
        departamento.totalInventario = listaProdutos[pos].preco * listaProdutos[pos].qtdEstoque;
       }
       else if (idDepto == listaProdutos[pos].departamento.idDepto) {
           departamento.totalInventario += (listaProdutos[pos].preco * listaProdutos[pos].qtdEstoque);
           
       }
       console.log("Inventário total do departamento...")
       console.log (departamento)
}

function exercicio7(){
    //valor do ticket médio dos produtos da empresa
    let totalInventario = 0
    let totalProdutos = 0
    let media = 0

    for (pos = 0; pos < listaProdutos.lenght; pos ++) {
        media = media + (listaProdutos[pos].preco * listaProdutos[pos].qtdEstoque);
        totalProdutos = totalProdutos + listaProdutos[pos].qtdEstoque;
    }
    media = (totalInventario / totalProdutos);
    console.log (`Ticket médio dos produtos...: ${media}`)
}

function exercicio8(){
    //ticket médio por departamento
    let soma = 0
    let quant = 0

    for (pos = 0; pos < listaProdutos[pos].lenght; pos++){
        if (idDepto != listaProdutos[pos].departamento.qtdEstoque){
            quant ++;
            soma += listaProdutos[pos].departamento.preco;
        }
        qtdEstoque = listaProdutos[pos].departamento.qtdEstoque;
            departamento.id = idDepto;
            departamento.nomeDepto = listaProdutos[pos].departamento.nomeDepto;
            departamento.qtdEstoque = listaProdutos[pos].qtdEstoque;
    }
    console.log("Ticket médio da empresa é R$ " + (soma / quant);
    console.log(departamento)
}

function exercicio9(){
    let departamento = {
        id: 0,
        nomeDepto: "",
        inventario: 0
    }
    
    let departamentoMaisValioso = {
        id: 0,
        nomeDepto: "",
        inventario: 0
    }
    
    let idDepto = 0
    for(pos=0; pos<listaProdutos.length; pos++){
       if(idDepto != listaProdutos[pos].departamento.idDepto){   //mudou o departamento
            if (departamento.id != 0){
               // console.log("Inventário do Departamento...");
               // console.log(departamento);
                if (departamento.inventario > departamentoMaisValioso.inventario){ //se o inventário do departamento em questão for maior do que o do departamento mais valioso até então, este recebe as características do departamento atual.
                   //departamentoMaisValioso.id = departamento.id;
                   //departamentoMaisValioso.nomeDepto = departamento.nomeDepto;
                   //departamentoMaisValioso.inventario = departamento.inventario;
                   departamentoMaisValioso = departamento;
                }
            }
            idDepto = listaProdutos[pos].departamento.idDepto;
            departamento.id = idDepto;
            departamento.nomeDepto = listaProdutos[pos].departamento.nomeDepto;
            departamento.inventario = listaProdutos[pos].qtdEstoque * listaProdutos[pos].preco;
       }
       else{  // manteve o departamento
            departamento.inventario = departamento.inventario + listaProdutos[pos].qtdEstoque * listaProdutos[pos].preco;
       }
    }
    //console.log(departamento);
    console.log("Departamento mais valioso.......");
    console.log(departamentoMaisValioso);
}

function exercicio10(){
    //produto mais caro da loja
    let comparacao = listaProdutos[0].preco
    let nomeDepto = ""
    let nomeProduto = ""

    for (pos = 0; pos < listaProdutos.lenght; pos ++){
        if (comparacao < listaProdutos[pos].preco){
            comparacao = listaProdutos[pos].preco;
            nomeDepto = listaProdutos[pos].departamento.nomeDepto;
            nomeProduto = listaProdutos[pos].descricao
        }
    }
    console.log (`Produto mais caro da loja: ${nomeProduto}, do departamento ${nomeDepto}`)
}

function exercicio11(){
    //produto mais barato da loja
    let comparacao = listaProdutos[0].preco
    let nomeDepto = ""
    let nomeProduto = ""

    for (pos = 0; pos < listaProdutos.lenght; pos ++){
        if (comparacao > listaProdutos[pos].preco){
            comparacao = listaProdutos[pos].preco;
            nomeDepto = listaProdutos[pos].departamento.nomeDepto;
            nomeProduto = listaProdutos[pos].descricao
        }
    }
    console.log (`Produto mais barato da loja: ${nomeProduto}, do departamento ${nomeDepto}`)
}
}