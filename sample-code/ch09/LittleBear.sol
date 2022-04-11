pragma solidity 0.8.6;

contract LittleBear {
    event logMsg(string message);
    
    string public storedMsg;
    
    constructor() {
        storedMsg = "Hello Little Bear (a.k.a. Maddie)!";
        emit logMsg(storedMsg);
    }
    
    function updateMsg(string memory newMsg) public {
        storedMsg = newMsg;
        emit logMsg(storedMsg);
    }
}
