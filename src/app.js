// app.js
const express = require('express');
const app = express();

app.get('/convert', (req, res) => {
  const celsius = parseFloat(req.query.celsius);
  const fahrenheit = (celsius * 9/5) + 32;
  res.send(`A temperatura em Fahrenheit é: ${fahrenheit}`);
});

app.listen(3000, () => {
  console.log('Aplicação rodando na porta 3000');
});
