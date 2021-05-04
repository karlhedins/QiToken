const QiAdToken = artifacts.require('./QiAdToken.sol')

module.exports = async function(deployer) {
  await deployer.deploy(QiAdToken)
}
