// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Crowdfunding {

  struct project {
    string name;
    string description;
    string symbol; //token symbol that will minted for successfull projects with `cf` prefix, for example cfNAME
    uint totalTokenSupply; //total token that will minted for successfull project to give to investors
    address owner;
    uint minNeededFund; // minu=imum funds needed for project be successfull
    uint256 deadlineTime; //timestamp to dealine
    uint fund; //total funds raised for the project
    bool isFundPayed; // first it is false, after succeeding it will turn to true 
  }

  mapping(string => project) public projects;

  mapping(address => string[]) public entrepreneurs;
  
  mapping(address => string[]) public investors;

  constructor() public {
  }

  function createProject(string memory _projectSymbol) public {

  }

  function investInProject(string memory _projectSymbol, uint _fund) public {

  }
}
