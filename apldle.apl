wordlist←⎕FIO.read_text 'words' ⍝ 'words' is the name of a text file with a word on each line
⎕RL←(6⊃⎕TS)×(7⊃⎕TS)             ⍝ Set PRNG seed to current second * current millisecond
secret←(?⍴wordlist)⊃wordlist
greens←{secret=⍵}               ⍝ 'abc'='cba' returns 0 1 0
yellows←{{0<+/secret=⍵}¨⍵}      ⍝ 'aba'='a' returns 1 0 1
colors←{(yellows ⍵)+(greens ⍵)} 

∇Play x
START:
'You have',x,'guesses left.'
'Enter your guess:'
guess←⍞
' ',guess
res←colors guess
,/⍕¨res
x←x-1
→((⍴res)=+/2=¨res)/WON
''
→(x>0)/START
LOST:
'You lost!'
'The secret word was: ',secret
→0
WON:
'You won!'
∇

Play 6

)OFF
