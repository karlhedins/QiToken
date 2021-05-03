const QiToken = artifacts.require('./QiToken.sol')

module.exports = async function(deployer) {
  await deployer.deploy(QiToken)
}
