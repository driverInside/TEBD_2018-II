// index.js
const faker = require('faker')

const total = 1000    // wtf john??

const telephone = telephoneGenerator()


for (var i = 0; i < total; i++) {
  let telephone = telephoneGenerator()
  console.log('Se generó el teléfono: ' + telephone.so.version)
  // llamar a la función generadora
}

/**
* telephoneGenerator
* @return telephone
*/
function telephoneGenerator() {
  const marca = faker.company.companyName()
  const modelo = faker.hacker.adjective()
  const so = {
    version : faker.random.number(),
    kernel : faker.internet.mac()
  }
  const imei = faker.random.number() + '' + faker.random.number()
  const memoria = faker.random.number() // en mb
  const procesador = {
    marca : faker.company.companyName(),
    tipo : '', // tipo: getProcessor()
    velocidad: faker.random.number()
  }
  const almacenamiento = {
    interno: faker.random.number(),
    externo: faker.random.number()
  }
  const precio = 0  // en usd
  const fabricacion = {
    anio: faker.date.past(), // todo: parse year
    pais: faker.address.country()
  }

  return {
    marca, modelo, so, imei, memoria, procesador, almacenamiento, precio, fabricacion
  }
}

// function getProcessor() {
//   const processors = ['arm', 'intel']
//   const index = getRandomInt()
//   return processors[index]
// }


