import UIKit

let citation = #""We were on a break" - Ross Geller"#

let rossSideRatio = 61
let citationWithStats = #""We were on a break" - Ross Geller, \#(rossSideRatio)% agree with Ross"#
print(citationWithStats)

let citationWithHashTag = ##""We were on a break" - Ross Geller, \##(rossSideRatio)% on "#TeamRoss""##
print(citationWithHashTag)
