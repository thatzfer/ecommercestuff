const express = require('express');
const app = express();
const data = require('./data.json') //AQUI É DE ONDE VAMOS PUXAR OS DADOS DOS PRODUTOS

app.use(express.json()); //pra usar a notação js

app.get('/products', function(req, res){
    
    res.json(data);

});

app.get('/products/:id', function(req, res){

    const {id} = req.params;
    const product = data.find(pro => pro.id == id);
    if (!product) return res.status(204).json();
    res.json(product);

}); //pra pegar 1 produto usa o :id

app.post('/products', function(req, res){

    const {preco, codProduto} = req.body;
    //salvar 
    res.json({preco, codProduto});

});

app.put('/products/:id', function(req, res){; //pra atualizar 1 produto

    const {id} = req.params;
    const product = data.find(pro => pro.id == id);
    if (!product) return res.status(204).json();
    const {preco, codProduto} = req.body;
    product.preco = preco;
    res.json(product);

})
app.delete('/products/:id', function(req, res){

    const {id} = req.params;
    const productsFiltered = data.filter(product => product.id != id);
    res.json(productsFiltered);

}); //pra deletar 1 produto

//req e res: tipo o garçom pegar o pedido e enviar uma resposta

app.listen(3000, function(){
    console.log('server is running');
})