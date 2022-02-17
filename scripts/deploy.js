async function main () {
  const Finnies = await ethers.getContractFactory('Finnies');
  console.log('Deploying Finnies...');
  const finnies = await Finnies.deploy();
  await finnies.deployed();
  console.log('Finnies deployed to:', finnies.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
