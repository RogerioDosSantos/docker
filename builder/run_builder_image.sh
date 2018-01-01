
# Go to the directory where the bash file is
cd "$(dirname "$0")"
# echo "Running from $(pwd)"

# Exit on any non-zero status.
trap 'exit' ERR
set -E

# Get Proxy Configuration
proxy_url=$(printenv http_proxy | sed 's|http_proxy=||g')

# Run ubuntu docker image
if [[ ! -z $proxy_url ]]; then
  echo "Using Proxy: $proxy_url"
  docker run -it --name builder \
    -v /c/Users/roger/git/example_jenkins_continuous_delivery:/root/host \
    -e http_proxy=$proxy_url \
    -e https_proxy=$proxy_url \
    rogersantos/builder
else
  docker run -it --name builder \
    -v ~/git/example_jenkins_continuous_delivery:/root/host \
    rogersantos/builder 
fi

# Reset the image
docker rm builder
