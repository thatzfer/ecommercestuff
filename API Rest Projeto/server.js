const express = require('express');
const app = express();
const data = require('./data.json') //AQUI É DE ONDE VAMOS PUXAR OS DADOS DOS "CLIENTES"

app.use(express.json()); //pra usar a notação js

app.get('/clients', function(req, res){
    
    res.json(data);

});

app.get('/clients/:id', function(req, res){

    const {id} = req.params;
    const client = data.find(cli => cli.id == id);
    if (!client) return res.status(204).json();
    res.json(client);

}); //pra pegar 1 cliente usa o :id

app.post('/clients', function(req, res){

    const {name, email} = req.body;
    //salvar 
    res.json({name, email});

});

app.put('/clients/:id', function(req, res){; //pra atualizar 1 cliente

    const {id} = req.params;
    const client = data.find(cli => cli.id == id);
    if (!client) return res.status(204).json();
    const {name, email} = req.body;
    client.name = name;
    res.json(client);

})
app.delete('/clients/:id', function(req, res){

    const {id} = req.params;
    const clientsFiltered = data.filter(client => client.id != id);
    res.json(clientsFiltered);

}); //pra deletar 1 cliente

//req e res: tipo o garçom pegar o pedido e enviar uma resposta

app.listen(3000, function(){
    console.log('server is running');
})