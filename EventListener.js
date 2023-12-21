const ethers = require("ethers");
const ABI = require("./Abi.json");
require("dotenv").config();
function EventListener() {
  const ContractAddress = process.env.CONTRACT;
  const RpcUrl = process.env.RPC_URL;
  const provider = new ethers.WebSocketProvider(RpcUrl);
  const Contract = new ethers.Contract(ContractAddress, ABI, provider);

  try {
    console.log("Event listener start");
    Contract.on("AddWallet", async (wallet) => {
      console.log("New wallet", wallet);
    });
  } catch (error) {
    console.log("Something went Wrong", error);
  }
}
EventListener();
