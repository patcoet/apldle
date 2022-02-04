# apldle
This is a simple word-guessing game written in (GNU) APL, which I'm putting here mainly in case I want to look up how I did conditional branching and random number generation in the future. It should also all work in Dyalog APL, except the first line should be something like `wordlist←(⎕UCS 10)(≠⊆⊢)1⊃wordlist←⎕NGET 'path_to_wordlist'` instead. I run this with `apl -s -f apldle.apl`.
