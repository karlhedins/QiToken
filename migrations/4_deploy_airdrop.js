const Airdrop = artifacts.require('./Airdrop.sol')

module.exports = async function(deployer) {
  await deployer.deploy(Airdrop)
}
