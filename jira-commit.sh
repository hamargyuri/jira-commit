full_branch=$(git branch --show-current)
IFS='/' read -r -a branch_array <<< "$full_branch"
IFS='-' read -r -a jira_array <<< "${branch_array[1]}"
unset IFS

git commit -m"${jira_array[0]}-${jira_array[1]} $1"
