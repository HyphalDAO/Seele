pragma solidity ^0.8.0;

interface IDAOBase {
	struct Role {
		bool admin;
		bool curator;
		bool NFTContributor;
		bool member;
	}

    struct Member {
        uint256 shares; // the # of voting shares assigned to this member
        Role roles;
        uint256 jailed; // set to proposalIndex of a passing guild kick proposal for this member, prevents voting on and sponsoring proposals
    }

    // TODO: combine all of these into one
	struct NFTProposal {
		address nftAddress;
		uint nftId;
        uint256 yesVotes; // the total number of YES votes for this proposal
        uint256 noVotes; // the total number of NO votes for this proposal
        mapping(address => bool) votesByMember; // the votes on this proposal by each member		
        bool executed;
        uint deadline;
	}

	struct CommissionNFTProposal {
		uint funding;
        uint256 yesVotes; // the total number of YES votes for this proposal
        uint256 noVotes; // the total number of NO votes for this proposal
        mapping(address => bool) votesByMember; // the votes on this proposal by each member		
        bool executed;
        uint deadline;
	}
	
	struct GallerySplitProposal {
		uint splitPercent;
        uint256 yesVotes; // the total number of YES votes for this proposal
        uint256 noVotes; // the total number of NO votes for this proposal
        mapping(address => bool) votesByMember; // the votes on this proposal by each member		
        bool executed;
        uint deadline;
	}

	struct ExhibitProposal {
		uint funding;
		uint startDate;
        uint256 yesVotes; // the total number of YES votes for this proposal
        uint256 noVotes; // the total number of NO votes for this proposal
        mapping(address => bool) votesByMember; // the votes on this proposal by each member		
        bool executed;
        uint deadline;
	}
}