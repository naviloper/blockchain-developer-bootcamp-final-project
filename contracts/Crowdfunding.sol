// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Crowdfunding {

  struct Project {
    string name;
    string description;
    string symbol; //token symbol that will minted for successfull projects with `cf` prefix, for example cfNAME
    uint totalTokenSupply; //total token that will minted for successfull project to give to investors
    address owner;
    uint minNeededFund; // minuimum funds needed for project be successfull
    uint256 deadlineTime; //timestamp to dealine
    uint fund; //total funds raised for the project
    bool isFundPayed; // first it is false, after succeeding it will turn to true 
  }

  mapping(string => Project) public projects;

  mapping(address => string[]) public entrepreneurs;
  
  mapping(address => string[]) public investors;

  event LogProjectCreationSucceeded(address indexed owner, string projectName, string projectSymbol);
  event LogProjectCreationFailed(address indexed owner, string projectName, string projectSymbol);

  modifier isSymbolNameUnique(string memory _symbol) {
    require(projects[_symbol].owner == address(0));
    _;
  } 

  modifier isSymbolNameValid(string memory _symbol) {
    require( (bytes(_symbol).length >= 3) && (bytes(_symbol).length <= 5)  ) ;
  }

  constructor() public {
  }

  function createProject(
    string memory _projectSymbol, 
    string memory _projectName, 
    string memory _description,
    uint _totalTokenSupply,
    uint _minNeededFound,
    uint256 _deadlineTime)
  isSymbolNameValid(_projectSymbol)   
  isSymbolNameUnique(_projectSymbol)
  public
  {
    
  }

  function investInProject(string memory _projectSymbol, uint _fund) public {

  }

  
}
