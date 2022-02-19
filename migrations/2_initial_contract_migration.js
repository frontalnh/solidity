const Migrations = artifacts.require("Migrations");

module.exports = function (deployer, network) {
  if (network == "live") {
    // Do something specific to the network named "live".
    deployer.deploy(
      Exchange,
      "0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558"
    );
  } else {
    // Perform a different step otherwise.
    deployer.deploy(
      Exchange,
      "0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558"
    );
  }
};
