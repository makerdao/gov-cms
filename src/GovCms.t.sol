pragma solidity ^0.5.4;

import "ds-test/test.sol";

import "./GovCms.sol";

contract GovCmsTest is DSTest {
    GovCms cms;

    function setUp() public {
        cms = new GovCms();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
