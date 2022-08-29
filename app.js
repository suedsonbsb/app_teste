const express = require('express')
const app = express()
const port = 8082

app.get('/', (req, res) => {
  res.send('Pagina de teste!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

