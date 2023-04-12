// DEPENDENCIES
const express = require('express')
const app = express()
const { Sequelize } = require('sequelize')

// CONFIGURATION / MIDDLEWARE
require('dotenv').config()
app.use(express.json())
app.use(express.urlencoded({ extended: false }))

//Sequelize Connection (Also advised to delete this portion)
// const sequelize = new Sequelize(process.env.PG_URI)

// try {
//     sequelize.authenticate()
//     console.log('Connection has been established successfully')
// } catch(err) {
//     console.log('Unable to connect to the database:', err)
// }

// ROOT
app.get('/', (req, res) => {
    res.status(200).json({
        message: 'Welcome to the Tour API'
    })
})

// LISTEN
app.listen(process.env.PORT, () => {
    console.log(`🎸 Rockin' on port: ${process.env.PORT}`)
})