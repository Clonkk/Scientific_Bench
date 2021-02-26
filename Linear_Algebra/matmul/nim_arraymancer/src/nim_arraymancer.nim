# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

import arraymancer, random, sequtils, os, strutils

let cmd = commandLineParams()
let row = parseInt(cmd[0])
let col = parseInt(cmd[1])

proc mm: float64 =
  let m = randomTensor([row, col], max = 1.0)
  let n = randomTensor([row, col], max = 1.0)
  result = (m * n)[row div 2, col div 2]


when isMainModule:
  echo mm()
