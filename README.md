# Collatz Sequence Generator for Urbit

## Overview

This repository contains `collatz.hoon`, a Hoon implementation of the Collatz sequence generator for Urbit. The Collatz sequence, also known as the "3n + 1" sequence, is a mathematical sequence defined for positive integers.

## The Collatz Conjecture

For a given number n, the next term in the sequence is determined as follows:
- If n is even, the next term is n/2
- If n is odd, the next term is 3n + 1

The sequence continues until it reaches 1. The Collatz conjecture posits that this sequence will always reach 1, regardless of the starting number.

## Implementation

The `collatz.hoon` file contains a gate that:
1. Takes a positive integer as input
2. Generates the complete Collatz sequence for that number
3. Returns the sequence as a list of unsigned integers (@ud)

### Usage

To use this generator in your Urbit ship:

1. Copy `collatz.hoon` to your ship's `/home/gen/` directory.
2. In the Dojo, run:

```sh
|commit %base
+collatz 27
```

This will generate and display the Collatz sequence starting from 27.

## Performance

The current Hoon implementation is efficient for small to medium inputs. However, for very large numbers or when calculating many sequences, performance may degrade.

## Future Work: C Jet Implementation

To significantly improve performance, especially for large inputs, a C jet for this generator should be made. The jet will:

1. Accelerate the computation of Collatz sequences
2. Maintain perfect compatibility with the Hoon implementation
3. Be automatically utilized by the Urbit runtime when available

### Jet Implementation Steps (TODO):

1. Create jet registration in `jets.c`
2. Add function prototypes to `q.h` and `w.h`
3. Implement the jet logic in C
4. Integrate the jet with the Urbit runtime
5. Conduct thorough testing to ensure consistency with Hoon results
6. Benchmark to quantify performance improvements

## License

This project is licensed under the MIT License - see the LICENSE file for details.
