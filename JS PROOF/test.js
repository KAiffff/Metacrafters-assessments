// Create an array to store all of our NFTs.
const nfts = [];

// Create a function to simulate minting of NFTs => Create a function that creates NFT objects.
const mintNFT = function (name, eyeColor, shirtType, bling) {
  const nft = {
    name: name,
    eyeColor: eyeColor,
    shirtType: shirtType,
    bling: bling,
  };

  nfts.push(nft);

  console.log(`NFT minted: ${nft.name}\n`);
};

// Create a function to print all of our NFTs by looping through the array.
const printNFTs = function () {
  for (let i = 0; i < nfts.length; i++) {
    console.log(`\nID: ${i + 1}`);
    console.log(`Name: ${nfts[i].name}`);
    console.log(`Eye Color: ${nfts[i].eyeColor}`);
    console.log(`Shirt Color: ${nfts[i].shirtType}`);
    console.log(`Bling: ${nfts[i].bling}`);
  }

  console.log("\nFinished printing all the NFTs");
};

// Create a function to print the total number of minted NFTs.
const totalNFTs = function () {
  console.log(`\nTotal number of NFTs: ${nfts.length}`);
};

mintNFT("New NFT 1", "Purple", "T-Shirt", "Diamond Bling");
mintNFT("New NFT 2", "Orange", "Hoodie", "Ruby Bling");
mintNFT("New NFT 3", "Black", "Tank Top", "Sapphire Bling");
mintNFT("New NFT 4", "White", "Crop Top", "Emerald Bling");
mintNFT("New NFT 5", "Gray", "Sweatshirt", "Amethyst Bling");

printNFTs();
totalNFTs();
