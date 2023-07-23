// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Portfolio {

struct Project{
      uint id;
      string name;
      string description;
      string image;
      string githubLink;
  }

  struct Education{
      uint id;
      string date;
      string degree;
      string knowledgeAcquired;
      string instutionName;
  }
 
  struct Experience{
      uint id;
      string date;
      string post;
      string knowledgeAcquired;
      string compamyName;
  }

// 0xC2FB97b8fDE5f39C6b160b2735DdDf4c1E941Bed

// 04/08/2016 - 12/04/2019, 09/07/2019 - 20/6/2022, 25/08/2022 - 16/04/2026
// (Science, Shine High School) , (Maths, Intermediate,LT) , (it, Bvrit)


// Projects 

// Wave Portal Dapp => Solidity_Wave_Portal => QmQYsLi6foa1WWmnndCc4ETGNVwwB4PzPuJxTmKj6hv3Gp
// Buy Me a Coffee Dapp => Solidity_BuyMeACoffee-Solidity-DeFi-app => QmcxQQLdcQNyWaNXYacF9p9sQYKTba1qbQMuy35HgAAHFE
// NFT Gallery Dapp => nft-gallery => QmY9hNjenfadY5pCLJhA2ajskWS4Y958Bq3tSfuEsEH29f
// CrowdFunding Dapp => Crowdfunding => QmTJShWPLWc7HcwvdAnr4gwjcr1Wr2VtKvHhVaQm11xpjW
// DEX Dapp => projectDEX => QmVonUGFJVjgbEzbqJrahUcT5quodTUFsWXtUSrAPfLDgt
// DigiOwn Dapp => DigiOwnDapp => QmPnExxm3cgK5yrGafakfnK9mdQvemRhAKBSfLF6q8Dahn
// TokenMaster Dapp => tokenMasterDapp => Qmc9L4ctWX9JjCFvSHCb2cuhxTBsm38Yg1N5UfCStBnNAp
// Decentralized Portfolio Dapp => PortfolioDapp => QmWNCMhYTGuzmedghnd5uPN2ZyNvy1jGQnnhLeKwsGxNi3




Project[14] public projects;
Education[4] public educationDetails;
Experience[4] public experienceDetails;


string public imageLink="Qmaa53YdQpXBucFvS8SJRWNrNk467WmU5ewVz6NidpT4Lg";
string public description="Over six months of relevant experience and solid expertise in blockchain development.I contribute to web3 community.";
string public resumeLink="QmcDBQSWSTgQdbZSek1fNkXAAZSbB8DXC66stBegbkkDgW";

uint256 projectCount;
uint256 educationCount;  
uint256 experienceCount;
address public owner;


constructor() {
owner = msg.sender;
}

modifier onlyOwner() {
require(owner == msg.sender, "You are not the owner");
_;
}


function insertProject(string calldata _name,string calldata _description,string calldata _image,string calldata _githubLink) external{
      require(projectCount<14, "Only 14 projects allowed");
      projects[projectCount] = Project(projectCount,_name,_description,_image,_githubLink);
     projectCount++;
  }

  function changeProject(string calldata _name,string calldata _description,string calldata _image,string calldata _githubLink,uint256 _projectCount) external{
       require(_projectCount>=0 && _projectCount<14,"Only 14 projects allowed");
      projects[_projectCount] = Project(_projectCount,_name,_description,_image,_githubLink);
  }

  function allProjects() external view returns(Project[14] memory){
        return projects;
    }

function insertEducation(string calldata _date,string calldata _degree,string calldata _knowledgeAcquired,string calldata _instutionName) external onlyOwner{
     require(educationCount<4,"Only 4 education details allowed");
     educationDetails[educationCount]=Education(educationCount,_date,_degree,_knowledgeAcquired,_instutionName);
     educationCount++;
    }

  function changeEducation(string calldata _date,string calldata _degree,string calldata _knowledgeAcquired,string calldata _instutionName,uint256 _educationDetailCount) external onlyOwner{
      require(_educationDetailCount>=0 && _educationDetailCount<4,"Invalid educationCount");
      educationDetails[_educationDetailCount]=Education(_educationDetailCount,_date,_degree,_knowledgeAcquired,_instutionName);
  }


function allEducationDetails() external view returns(Education[4] memory) {
    return educationDetails;
}


function insertExperience(string calldata _date,string calldata _post,string calldata _knowledgeAcquired,string calldata _companyName) external onlyOwner{
     require(experienceCount<3,"Only 4 education details allowed");
     experienceDetails[experienceCount]=Experience(experienceCount,_date,_post,_knowledgeAcquired,_companyName);
     experienceCount++;
    }

    function changeExperience(string calldata _date,string calldata _post,string calldata _knowledgeAcquired,string calldata _companyName,uint _experienceDetailCount) external onlyOwner{
     require(_experienceDetailCount>=0 && _experienceDetailCount<4,"Invalid experienceCount");
     experienceDetails[_experienceDetailCount]=Experience(_experienceDetailCount,_date,_post,_knowledgeAcquired,_companyName);
    }
    
    function allExperienceDetails() external view returns(Experience[4] memory){
      return experienceDetails;
    }


function changeDescription(string calldata _description) external {
    description = _description;

}

function changeResumeLink(string calldata _resumeLink) external onlyOwner {
    resumeLink = _resumeLink;
}

function changeImageLink(string calldata _imageLink) external onlyOwner {
imageLink = _imageLink;
}

function donate() public payable {
(bool success, ) = owner.call{value: msg.value}("");
require(success, "Failed to send ether");
}


}

// function insertEducation(string calldata _date, string calldata _degree, string calldata __knowledgeAccquired, string calldata _instutionname) external onlyOwner {
// require(educationCount<4;', "Only 4 educaion details allowed"); 
//    educationDetails[educationCount] == Education(educationCount, _date, _degree, _knowledgeAccquired, _instutionName); 
//.   educationCount++;
 // }