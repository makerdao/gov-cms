// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.5.4;

contract Cms {
    mapping (address => string) public proposals;

    event Proposal(address proposal, string content);

    function register(address proposal, string memory content) public {
        require(empty(proposals[proposal]), "cms-cannot-update-existing-content");
        proposals[proposal] = content;
        emit Proposal(proposal, content);
    }

    function empty(string memory str) public pure returns (bool) {
        return keccak256(abi.encodePacked((str))) == keccak256(abi.encodePacked(("")));
    }
}
