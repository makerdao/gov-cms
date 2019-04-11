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

import "ds-test/test.sol";

import "./cms.sol";

contract CmsTest is DSTest {
    Cms cms;

    function setUp() public {
        cms = new Cms();
    }

    function test_register() public {
        address proposal = address(0x0);
        string memory content = "QmQxsTs6hppWktJhakDEDyDdMfjdsskSRM7qEQMMKWbvV1";
        cms.register(proposal, content);

        assertEq0(bytes(cms.proposals(proposal)), bytes(content));
    }
}
