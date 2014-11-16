REPO=$1
OWNER=$2
API_URL="https://api.github.com/repos/$OWNER/$REPO"
# add maximum time of operation
DATA=`curl --connect-timeout 5 -m 10 $API_URL`

RELEASE_DATA=`curl -m 10 $API_URL/releases`