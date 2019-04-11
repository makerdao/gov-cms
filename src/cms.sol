pragma solidity ^0.5.4;

contract Cms {
    mapping (address => string) public proposals;

    event Proposal(address proposal, string content);

    function register(address proposal, string memory content) public {
        proposals[proposal] = content;
        emit Proposal(proposal, content);
    }
}
