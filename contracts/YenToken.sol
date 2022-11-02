// SPDX-License-Identifier: MIT
pragma solidity >=0.7.3 <=0.8;
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract YenToken is ERC20{

    address public _owner;

    // Using erc 20 standard to assign token name(Yen token) and token symbol (YEN)
    constructor() ERC20('Yen token', 'YEN'){
        _mint(msg.sender, 10000 * 10 * 18); // Amount * 10 * 18
        _owner = msg.sender;
 
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == _owner, 'Only admin are allowed to mint tokens');
        _mint(to,amount);
    }

    function burn(uint amount){
        _burn(msg.sender, amount);
    }

}