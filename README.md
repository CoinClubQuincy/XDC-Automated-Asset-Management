# XDC-Defi-Instruments

This is a Proof of concept that will articulate how Financial firms and brokers tokenize Assets can persist on the blockchain and be automated by finance contracts like options, future and Forwards contracts and reside in autonomous marketplaces.

This is a repository That contains a set of templates for automated Trade finance tools, these tools are traditional finance instruments but automated through a series of smart contracts to allow for anyone to have the ability to engage with tools that traditionally banks,broker-dealers, exchanges and other financial institutions would be capable of managing, now anyone can deploy and manage these tool from a smart phone and use the XDC crypto currency as a means of capital when engaging with these contracts to help further economic productivity autonomously 

# Defi DApp 
![BrokerageDapp-2](https://github.com/CoinClubQuincy/XDC-Automated-Asset-Management/assets/16103963/524c19c6-7f6b-43b1-a999-84c12b601b3f)

### How Brokerage DApps can change trade finance on the XDC network

Most of the crypto space is quite familiar with the notion of NFTs and marketplaces. Typically, when people refer to these different types of instruments in Blockchain technology, they often refer shallowly to pictures being sold in the new online markets. This tends to create a misconception that NFTs are merely pictures, rather than a shared accounting tool to represent a particular object of ownership. NFTs are unique digital objects residing within smart contracts that can be used as units of account by shared applications. These objects can be referenced as derivative objects, such as a representation of a stock or a currency, or they could be abstract representations of some piece of code, like possessing a token to allow access to an application, using it as a key license, or even keeping track of scores.

Previously, I wrote a smart contract to create a representation of an asset as a token in my article titled "A Conceptualization on How Brokers, Banks, and Financial Institutions can Tokenize Assets on XDC": 

In that article, I explained how a token can be used as a unit of account for traditional assets, similar to how assets can be represented in a database. What makes the token special on the blockchain is that it can be referenced by third-party applications like marketplaces and other DApps. In this article, I aim to articulate how new markets can be formed and how tokenized assets can be automated in these new marketplaces.

To demonstrate how you can automate assets on XDC, I forked an NFT marketplace repository from TronzitVeca’s ERC1155-Marketplace-Contract. Using my previous Assets contract and creating a portfolio contract, I managed to create a 4-contract DApp that enables the Marketplace to trade assets and a portfolio to manage assets for users, and allowing them to interact with the marketplace.
A DApp like this is analogous to an application like Robinhood, but with three main differences:

1. The infrastructure is self-hosted. So any broker interacting with this application does not need to set up or manage in infrastructure of the application


2. Users can self-custody assets via access to their portfolio contract, enabling them to move between different marketplaces and brokers with ease. The user has a portfolio generated by the original broker but can take that portfolio to other brokers while remaining in potential compliance rules established by the portfolio and marketplace.


3. Broker-dealers and other firms can engage with each other via the decentralized marketplaces. Other broker-dealers can allow their users portfolios to interact with the marketplaces, providing more options to their users and additional liquidity in their marketplace.

As more broker-dealers create their marketplaces tailored to their clientele, the number of financial participants and the necessary liquidity for exchanges will exponentially increase. Each broker can access the marketplaces of others, and clients from different brokers can access the assets of other marketplaces if liquidity is needed locally. 

This enables easier and faster trading between partners and investors. Traditionally, trading between finance partners required intricate relationships and redundant record-keeping. With partners using the XDC network as a shared accounting system, asset transfers become significantly quicker, and partners don't need to sync extensively to ensure accurate recording. What used to take days can now happen in seconds.
Similar to how social media enabled greater online connections, blockchain technology allows banks and financial institutions to trade over the internet on the blockchain with more parties than they could otherwise.

The future of blockchain technology is about connecting siloed entities that struggle with maintaining settlement and moving capital among multiple parties globally. With the XDC network and connected markets, the means of connection have never been easier. Marketplaces can reference liquidity from other marketplaces directly, brokers can interact without intermediaries, and investors can self-custody assets, enabling more people to participate directly. This reduces the cost and ease of access to financial services, with the barrier to entry lowered to having an internet connection.

The more participant that operate in this way the more engagement this online economy can facilitate an the better the trade volume globally.

#  Tokenized Asset Contract
![template contracts-2](https://user-images.githubusercontent.com/16103963/228897898-711805d3-ebfc-4194-aa93-b0f782b6ab4a.png)

### Assets
Being able to tokenize assets, such as commodities, securities, derivatives, currencies, and other types of assets, can allow financial institutions like banks and brokerage firms to have easier means of managing, trading, and accounting for different assets, not only for themselves but also for their trade partners. These organizations can offset databasing costs by having the accounting of their assets on decentralized networks, making them easier to exchange and cheaper to operate. By moving hosting fees to transaction fees, the management of these assets becomes incredibly inexpensive and allows these organizations to focus more on their business model rather than on the hosting and operation of the systems that run their business. Having assets tokenized on decentralized networks allows for a shared accounting of unique assets that would otherwise be siloed in independent databases operated by individual organizations. The means of syncing information between organizations during an exchange or transfer can be slow and a manual process when dealing with international organizations. When these assets are tokenized and used as shared accounting tools, the means of exchanging ownership of different assets becomes simple. I built a proof-of-concept smart contract that takes the place of a broker who is not only tokenizing their possessed assets (asset certificates custodied under management) for their clients but also allows for these assets to be exchanged with other brokerage services. This contract is meant to illustrate that utilizing smart contracts and tokenization as a tool can allow for a simple means of management of these new assets, a cheaper operational cost, and a shared accounting tool that allows for engagement with anyone who also operates on the XDC network. This asset smart contract provides a means for administrators to manage the contract by possessing a particular token called the handlerToken. The handler token is a token that acts as a key and allows the broker to create new assets with predefined sets of attributes. When the handler deploys the contract the handler key is generated with a random integer not to interfere with the other asset tokens being generated, each token is paired to an integer.

# Contract Agreement
![template contracts](https://user-images.githubusercontent.com/16103963/228897397-c59c7c8b-c6d3-4625-81dc-b3eb11585278.png)

### Automating Agreements with the XDC Network

The contract's terms and conditions are embedded in the code and stored on the blockchain. Once deployed, the contract becomes immutable, meaning that its contents cannot be altered or tampered with. This immutability ensures that the agreed-upon terms cannot be changed without the consent of all parties involved. Additionally, the contract's transparency allows all parties to view and verify its content, eliminating the need for trust in a central authority.

The contract assigns a document hash to a variable, which represents the agreement between the parties. The document hash serves as a unique identifier for the agreement's content and can be used to verify its integrity. By comparing the document hash provided by any party to the stored document hash, the contract can determine whether the agreement has been modified or tampered with.

The contract enables parties to sign the agreement by interacting with the smart contract using their respective addresses. Once a party signs the contract, their address is recorded, indicating their consent and commitment to the agreement. This digital signature provides a non-repudiable proof of the party's involvement and prevents them from denying their participation later.

The contract includes functions for counterproposals, allowing either party to suggest modifications to the agreement by reassigning the document hash. This automation eliminates the need for manual communication and revision of physical documents. Furthermore, the contract keeps track of the total number of counterproposals, enabling parties to track the negotiation process accurately.

The contract utilizes modifiers to control the execution of certain functions. For example, the PartyA_Sign and PartyB_Sign modifiers ensure that only Party A or Party B, respectively, can call the counter-proposal functions. The contractSigned modifier restricts further modifications to the agreement once both parties have signed, preventing any unauthorized changes.

These features provided by smart contracts on XDC offer increased efficiency, security, transparency, and automation to contractual agreements. They have the potential to revolutionize the way parties engage in business interactions, potentially reducing the need for intermediaries in certain scenarios.



# Multi Asset Batch Contract
![MultiToken Batch Contract](https://github.com/CoinClubQuincy/XDC-BrokerageDapp/assets/16103963/b78911d2-1aea-4474-9e7d-686ab0f9a5ca)


# Forward Contract 
![template contracts-3](https://user-images.githubusercontent.com/16103963/228897606-38ade8cb-1cac-4478-8c12-4a2b4c9fc77f.png)

# Futures Contract 
![template contracts-5](https://user-images.githubusercontent.com/16103963/228948322-9d968faf-4722-4ab6-b7f2-177222935b7b.png)

