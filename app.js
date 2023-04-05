const express= require("express");
const res = require("express/lib/response");
const app= express();

app.get("/", (req,res)=>{
    res.send('Hello World');
});

const port=3040;
    app.listen(port,()=> {
        console.log("hello i am listening to port "+port);
    });