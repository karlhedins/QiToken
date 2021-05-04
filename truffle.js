require('babel-register')
require('babel-polyfill')

module.exports = {
  networks: {
    development: {
      host: '127.0.0.1',
      port: 23889,
      network_id: '*',
      gasPrice: '0x64',
    },
  },
  compilers: {
    solc: {
      version: '0.6.12',    // Fetch exact version from solc-bin (default: truffle's version)
      evmVersion: "constantinople"
    }
  },
  db: {
    enabled: false
  }
}
