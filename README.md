# TokenYield

TokenYield is a decentralized finance (DeFi) app that allows users to earn interest on their tokens through lending and borrowing mechanisms. The app is built using Motoko for smart contract logic and JavaScript for the front-end interface.

## Features

- Top up your balance
- Withdraw from your balance
- Automatically compound interest
- Check your current balance

## Getting Started

Follow these instructions to set up and run the project locally.

### Prerequisites

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)
- [DFINITY SDK](https://sdk.dfinity.org/docs/developers-guide/install-upgrade-remove.html) (including `dfx`)

### Installation

1. **Clone the Repository:**

    ```sh
    git clone https://github.com/yourusername/TokenYield.git
    cd TokenYield
    ```

2. **Install Dependencies:**

    ```bash
    npm install
    ```

3. **Build the Project:**

    ```bash
    npm run build
    ```

4. **Start the Development Server:**

    ```bash
    npm start
    ```

## Usage

1. Open your browser and navigate to the local deployment address, typically `http://localhost:8080`.

2. Use the form to top up your balance or withdraw funds.

3. The app will automatically compound the interest on your balance.

## Project Structure

- `main.mo`: The Motoko smart contract logic.
- `src/`: Contains the JavaScript front-end and HTML files.
- `package.json`: Project metadata and dependencies.

### `main.mo`
This file contains the core logic for the TokenYield application, including functions to top up, withdraw, check balance, and compound interest.

### `index.js`
Handles the front-end logic, including event listeners for the form submission and updating the displayed balance.

### `index.html`
Defines the structure of the web page, including input fields for topping up and withdrawing funds.

### `package.json`
Contains project dependencies and scripts for building and running the application.

## Deployment

The app is deployed on the Internet Computer at the following address:
[https://sck6d-xiaaa-aaaan-qmrbq-cai.icp0.io/](https://sck6d-xiaaa-aaaan-qmrbq-cai.icp0.io/)

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue.


## Acknowledgements

- [DFINITY Foundation](https://dfinity.org/)
- [Internet Computer](https://internetcomputer.org/)
- [Motoko Programming Language](https://sdk.dfinity.org/docs/language-guide/motoko.html)
