# Simulating the path
path="/datamovement/conncen/amcc/data/2023/12/26/CJ1J/contactSearch2023_12_26.csv"

# Keyword to search for
keyword="contactSearch"

# Use sed to extract the file name with the keyword
file_name=$(echo "$path" | sed -n "s|.*/\($keyword.*\.csv\)|\1|p")

echo "$file_name"
