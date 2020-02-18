const PromiseDapp = artifacts.require("./contracts/PromiseDapp");

module.exports = function(deployer) {
  deployer.deploy(PromiseDapp);
};
