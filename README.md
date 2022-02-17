# Finnies

A small fun project that attempts at making ETH transfers a bit friendlier by
using the name "Finney/Finnies" (singular/plural) like proposed in the [Ethereum whitepaper](https://ethereum.org/en/whitepaper/).

Ether represents the 10<sup>18</sup> denomination (the biggest) while Finney represents the 10<sup>15</sup>.

It means that 1 Ether = 1000 Finnies, and 1 Finney = 0.001 Ether.

Feel free to contact me or PR if you have ideas on what to do with this.

### Usage

The Finnies contract only has two methods:
* `mint(address account)` to mint any `msg.value` amount of Finneies (FΞ)
* `redeem(address payable account, uint256 amount)` to convert any FΞ `amount` back to actual Ether (Ξ)


Sending 100 FΞ sounds cooler than 0.1 Ξ don't you think :grin: 
