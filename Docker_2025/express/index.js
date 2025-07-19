const express = require('express');
const app = express();

const port = process.env.PORT || 3000

app.get('/',(req,res)=>
{
    res.send('Hello World from dockerized app');
})

app.listen(port,()=>
{
    console.log('listening to the port', port);
})