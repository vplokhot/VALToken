var VALToken = artifacts.require("VALToken");
var Faucet = artifacts.require("Faucet");
var owner = web3.eth.accounts[0];

module.exports = function(deployer) {
    deployer.deploy(VALToken, {from: owner}).then(function() {
        return deployer.deploy(Faucet, VALToken.address, owner);
    });
}