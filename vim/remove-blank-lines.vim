

# http://dailyvim.blogspot.com/2008/05/remove-empty-lines.html
%s/^\n//

# if \n doesn't work, try
%g/^$/d

# outside vim:
#grep -v '^$' file
#grep '.' file
#sed '/^$/d' file
#sed -n '/^$/!p' file
#awk NF file
#awk '/./' file


# http://vim.wikia.com/wiki/Remove_unwanted_empty_lines
#Use either of the following commands to delete all empty lines:
g/^$/d
v/./d
#If you want to delete all lines that are empty or that contain only whitespace characters (spaces, tabs), use either of:
g/^\s*$/d
v/\S/d
#In the second command, v operates on lines that do not match, and \S matches anything that is not a whitespace, and d deletes the flagged lines (all lines that have no characters, or that have only whitespace characters).
#You may want to condense multiple blank lines into a single blank line. The following will delete all trailing whitespace from each line, then replace three or more consecutive line endings with two line endings (a single blank line):

%s/\s\+$//e
%s/\n\{3,}/\r\r/e
#The e substitute flag means that no error is displayed if the pattern is not found. In the second command, \n in the search pattern finds newline, while \r in the replacement inserts a newline.
