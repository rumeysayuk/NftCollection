// ethers.js comes built in to Hardhat
const {ethers} = require("hardhat");

async function main() {
   //Somehow tell the script we want to deploy the NFTee contract
   const contract = await ethers.getContractFactory("NFTee")
   //deploy the contract
   const deployedContract = await contract.deploy()
   //wait for the contract to be deployed
   await deployedContract.deployed()
   //Print the address of the deployed contract
   console.log("Contract deployed to:", deployedContract.address)
}

main()
   .then(() => process.exit(0))
   .catch((error) => {
      console.error(error)
      process.exit(1)
   });
