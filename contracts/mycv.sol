pragma solidity ^0.8.0;


library CVSection {
    struct Project {
        string name;
        string description;
        string link;
        string[] technologies;
    }
    struct Education {
        string name;
        string description;
        string link;
    }
    struct Skills {
        string name;
        string description;
    }
    struct Publication {
        string name;
        string description;
        string link;
    }
    struct Link {
        string name;
        string description;
    }
    struct Role {
        string name;
        string description;
    }
    struct FocusedArea {
        string name;
        string description;
    }
    struct StartDate {
        string name;
        string description;
    }
}


contract myCV {
    mapping (string => string) profile;
    address career;
    CVSection.Project[]  public projects;
    CVSection.Education[]  public education;
    CVSection.Skills[]  public skills;
    CVSection.Publication[]  public publication;

    modifier onlyOwner() {
        require(msg.sender == career);
        _;
    }

    constructor () {
        career = msg.sender;

    }

    function setProfile(string memory key, string memory value) public onlyOwner {
        profile[key] = value;
    }

    function editProfile(string memory key, string memory value) public onlyOwner {
        profile[key] = value;
    }

    function editProject(bool operation, string memory _name, string memory _description, string memory _link, string[] memory _technologies) public onlyOwner { 
        if(operation) {
            projects.push(CVSection.Project(_name, _description, _link, _technologies));
        } else {
            delete projects[projects.length - 1];
        }
    }
    function editEducation(bool operation, string memory _name, string memory _description, string memory _link) public onlyOwner {
        if(operation) {
            education.push(CVSection.Education(_name, _description, _link));
        } else {
            delete education[education.length - 1];
        }
    }

    function editSkills(string memory _name, string memory _description) public onlyOwner {
        if(operation) {
            skills.push(CVSection.Skills(_name, _description));
        } else {
            delete skills[skills.length - 1];
        }
    }

    function editPublication( bool operation, string memory _name, string memory _description, string memory _link) public onlyOwner {
        if(operation) {
            publication.push(CVSection.Publication(_name, _description, _link));
        } else {
            delete publication[publication.length - 1];
        }
    }
    }
    function g
