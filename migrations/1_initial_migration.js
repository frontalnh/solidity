const Migrations = artifacts.require("Migrations");

module.exports = function (deployer, network) {
  if (network == "live") {
    // Do something specific to the network named "live".
    deployer.deploy(Migrations);
  } else {
    // Perform a different step otherwise.
    deployer.deploy(Migrations);
  }
};
