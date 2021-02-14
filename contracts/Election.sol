pragma solidity 0.5.16;

contract Election {
    // Read/write candidate
	uint public candidatesCount;

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;
    // Constructor
    constructor () public {
        addCandidate("Candidate1");
        addCandidate("Candidate2");
    }

    function addCandidate (string memory candidate_name) private{
    	candidatesCount++;
    	candidates[candidatesCount] = Candidate(candidatesCount, candidate_name, 0);
    }
}