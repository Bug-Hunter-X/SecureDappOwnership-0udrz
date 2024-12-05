modifier onlyOwner() {
    require(msg.sender == owner_, "Ownable: caller is not the owner");
    _;
}

function transferOwnership(address newOwner) onlyOwner {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _transferOwnership(newOwner);
}

function _transferOwnership(address newOwner) internal {
  emit OwnershipTransferred(owner_, newOwner);
  owner_ = newOwner;
}