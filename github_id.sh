# Replace <username> with your GitHub username and <repo> with your repository name
username=<username>
repo=<repo>

# Make the API request
response=$(curl -s "https://api.github.com/repos/$username/$repo")

# Extract the repository ID from the response
repo_id=$(echo "$response" | jq -r '.id')

# Print the repository ID
echo "Repository ID: $repo_id"
