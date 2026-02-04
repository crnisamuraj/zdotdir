# Make word ops URL/path-friendly: treat these as delimiters.
WORDCHARS=${WORDCHARS//\//}   # /
WORDCHARS=${WORDCHARS//./}    # .
WORDCHARS=${WORDCHARS//-/}    # -
WORDCHARS=${WORDCHARS//_/}    # _
WORDCHARS=${WORDCHARS//:/}    # :
WORDCHARS=${WORDCHARS//\?/}   # ?
WORDCHARS=${WORDCHARS//&/}    # &
WORDCHARS=${WORDCHARS//=}     # =
