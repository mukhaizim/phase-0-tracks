# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase

"zom".replace"zoom"

"enhance".center(20)


"Stop! You’re under arrest!".upcase


"the usual" << " suspects"


" suspects".prepend "the usual"



"The case of the disappearing last letter".capitalize


"The mystery of the missing first letter"[1..40]


"Elementary,    my   dear        Watson!".squeeze


"z".sub(/./) {|s| s.ord.to_s + ' ' }  
"z".each_byte {|c| print c, ' ' }

# It is the enumerator of the letter z

 "How many times does the letter 'a' appear in this string?".count "a"
