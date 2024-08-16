# Dice Rolling Simulator

This is a simple command-line application written in Ruby that simulates rolling a set of dice with any combination of sides. The program allows users to specify the number and type of dice, then displays the result of each roll along with the total sum of the rolls.

## Features

- Simulate rolling a single or multiple dice with varying numbers of sides.
- Display the result of each die roll.
- Display the total sum of all dice rolls.
- Tested using RSpec to ensure correctness and reliability.

## Installation

### Prerequisites

- Ruby (version 2.5 or later)
- Bundler (optional, for managing dependencies)

### Steps

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/dice-rolling-simulator.git
    ```
2. Navigate to the project directory:
    ```bash
    cd dice-rolling-simulator
    ```
3. (Optional) Install dependencies using Bundler:
    ```bash
    bundle install
    ```

## Usage
  - To run the Dice Rolling Simulator:
    ```bash
    ruby dice_roller_cli.rb
    ```
  - You will be prompted to enter the number of dice to roll and the number of sides each die should have. The program will then simulate the rolls and display the results.

### Example
  -
    ```bash
    Enter the number of dice to roll:
    2
    Enter the number of sides for the die:
    6
    Enter the number of sides for the die:
    8

    Rolling the dice...
    Die 1 (6-sided die): 4
    Die 2 (8-sided die): 7
    Total: 11
    ```

## Running Tests

  - This project includes unit tests written with RSpec.

  - To run the tests:

    ```bash
    rspec dice_roller_spec.rb
    ```

### Example Output
  - 
    ```bash
    ....

    Finished in 0.00971 seconds (files took 0.0549 seconds to load)
    5 examples, 0 failures
    ```
## Project Structure

- `dice_roller.rb`: Contains the `DiceRoller` class which handles the dice rolling logic.
- `dice_roller_cli.rb`: The command-line interface for the Dice Rolling Simulator.
- `dice_roller_spec.rb`: The RSpec tests for the `DiceRoller` class.

## Contributing

Feel free to contribute to this project by submitting issues or pull requests. Any improvements or additional features are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
