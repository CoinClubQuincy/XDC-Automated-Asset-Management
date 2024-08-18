const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Portfolio Ledger and Portfolio", function () {
  let PortfolioLedger, Portfolio, portfolioLedger, portfolio, owner, addr1, addr2;

  beforeEach(async function () {
    PortfolioLedger = await ethers.getContractFactory("portfolioLedger");
    Portfolio = await ethers.getContractFactory("Portfolio");
    [owner, addr1, addr2, _] = await ethers.getSigners();

    portfolioLedger = await PortfolioLedger.deploy(/* constructor arguments */);
    await portfolioLedger.deployed();

    portfolio = await Portfolio.deploy(/* constructor arguments */);
    await portfolio.deployed();
  });

  describe("Portfolio Ledger", function () {
    it("Should create new account", async function () {
      await portfolioLedger.createAccount("testAccount");
      const account = await portfolioLedger.checkAccount("testAccount", 1);
      expect(account.exist).to.equal(true);
    });
  });

  describe("Portfolio", function () {
    it("Should save new marketplace", async function () {
      await portfolio.saveMarketplace(addr1.address);
      const savedMarketplace = await portfolio.viewSavedMarketPlaces(0);
      expect(savedMarketplace.exist).to.equal(true);
    });
  });
});