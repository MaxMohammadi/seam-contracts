//SPDX-License-Identifier: UNLISCENSED
pragma solidity ^0.8.2;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
// import "interfaces/ISushiOperator.sol";
// import "interfaces/IUbeswapOperator.sol";

contract SeamPool is Ownable{
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // ISushiOperator private sushiOperator;
    string name;
    string symbol;

    // total deposits of the pool could be calculated from this mapping
    // mapping between the depositors and their positions in cUSD
    mapping(address => uint256) positions;

    // maybe this will its own contract
    address seamLPToken;

    // depositors and the amount of seamLPTokens that represent their total
    mapping(address => uint256) seamLPDeposits;

    // mapping between the names of the farms and allocations weights
    mapping(string => uint256) allocationWeights;
    
    struct SubPool {
        address depositToken; 
        address payable poolAddress;
        string[] assets;
    }

    function deposit() payable external {
        // take users deposit and add it to the positions 
        // mapping of the seam contract
      
        // IERC20(token0).transfer(pool_add, IERC20(token0).balanceOf(address(this)));
      
        // transfer token balances from seam pool to the 
        // subpools (mobius, ubeswap)

        // go through all the hardcoded farms we support and 
        // deposit the money to each of them directly

        // ex. mobi_lp_tokens = mobiusPool.addLiquidity(userDeposit / 2)
        //     ube_lp_tokens = ubePool.addLiquidity(userDeposit / 2)

        // then combine those lp tokens and wrap them and 
        // mint seam lp tokens for that particular user

        // TODO: determine whether to send seamLP tokens to user's wallet
    }

    

    // each seam pool will have a different number of subpools
    // subpool1
    // subpool2

    // subpool is its own contract similar a dex wrapper

    // we pass in the addresses of the farms to the constructor and now a seam pool is created with those particular farms
    
    constructor(
        string memory _name,
        string memory _symbol,
        address[] memory _farms
    ) public {
        name = _name;
        symbol = _symbol;

        // creates an empty subpool array

        // farms = new SubPool[](3);
        // for(uint i = 0; i < 4; i++) {
        //     SubPool subPool = new SubPool();
        //     subPool.stakingToken = address(0);
        //     subPool.poolAddress = address(0);
        //     subPool.weight = 0.25;
        //     farms.push(subPool);
        // }
    }
}