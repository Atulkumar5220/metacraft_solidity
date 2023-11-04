# MyToken Solidity Smart Contract

This is a simple Ethereum Solidity smart contract for a basic token named "MyToken." The contract provides a minimal implementation of a token with minting and burning functions. Please note that this is a basic example for educational purposes and lacks many features necessary for a production-ready token.

## Contract Details

### Public State Variables

- `token_name`: A string representing the token's name, set to "Atul."
- `token_abbr`: A string representing the token's abbreviation, set to "KR."
- `total_supply`: An unsigned integer representing the total supply of the token, initially set to 0.

### Mapping

- `bal`: A mapping that associates Ethereum addresses with their token balances. It maps an address to an unsigned integer balance.

### Mint Function

The `mint` function allows the creation of new tokens and assigns them to a specified address. It takes two parameters:

- `_Addr`: The address to which tokens will be minted.
- `_Val`: The amount of tokens to mint.

This function increases the total supply by `_Val` and updates the balance of the specified address by adding `_Val` tokens.

### Burn Function

The `burn` function allows the destruction of existing tokens from a specified address. It takes two parameters:

- `_Addr`: The address from which tokens will be burned.
- `_Val`: The amount of tokens to burn.

This function checks if the balance of the specified address is greater than or equal to the amount to be burned. If so, it decreases the total supply by `_Val` and updates the balance of the specified address by subtracting `_Val` tokens.
