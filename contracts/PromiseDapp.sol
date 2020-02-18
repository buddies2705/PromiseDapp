pragma solidity >=0.4.21 <0.7.0;

contract PromiseDapp{

    struct Promise
    {
    address  party1;
    address  party2;
    string promises;
    }
    Promise[] public pro ;

uint public totalPromises;
mapping(uint=>Promise) public ProList;

    function storePromises(address _party1,address _party2,string memory _promises)public returns(uint)
    {
        Promise memory newPromise = Promise({

            party1:_party1,
            party2:_party2,
            promises:_promises
        });

        pro.push(newPromise);

        ProList[totalPromises++] = newPromise;
        return totalPromises;
    }

    function displayPromise(uint proNum) public view  returns(string memory){
        address p1 = ProList[proNum].party1;
        address p2 = ProList[proNum].party2;
        require(msg.sender==p1 || msg.sender==p2,"Not the right owners");
        return ProList[proNum].promises;

    }
    //"0xca35b7d915458ef540ade6068dfe2f44e8fa733c","0x14723a09acff6d2a60dcdf7aa4aff308fddc160c","Meet at 12"
}