const express = require('express')
const app = express()
const port = 8081

app.get('/', (req, res) => {
  res.send('Bem vindo a página de teste nodejs!!!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

