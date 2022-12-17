const express=require('express');

var app =express();

const  port=8008
app.get('/hello',(req,res)=>{
    res.json({name:"lkcmsldk"})
})
app.listen(port,()=>{
    console.log(`Connected at port ${port}`);
})