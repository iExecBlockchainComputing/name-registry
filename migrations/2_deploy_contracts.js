"use strict";

const SimpleRegistry = artifacts.require("./SimpleRegistry.sol");
const SimpleCertifier = artifacts.require("./SimpleCertifier.sol");

const BellecourRegistry = artifacts.require("./BellecourRegistry.sol");
const BellecourCertifier = artifacts.require("./BellecourCertifier.sol");

module.exports = deployer => {
  deployer.deploy(SimpleRegistry);
  deployer.deploy(SimpleCertifier);
  deployer.deploy(BellecourRegistry);
  deployer.deploy(BellecourCertifier);
};
