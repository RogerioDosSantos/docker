
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
  docker run --name jenkins \
    -p 8080:8080 \
    -p 50000:50000 \
    -v ~/:/root/host \
    -v jenkins_home:/var/jenkins_home \
    -v //var/run/docker.sock:/var/run/docker.sock \
    -e http_proxy=$proxy_url \
    -e https_proxy=$proxy_url \
    rogersantos/jenkins
else
  docker run --name jenkins \
    -p 8080:8080 \
    -p 50000:50000 \
    -v ~/:/root/host \
    -v jenkins_home:/var/jenkins_home \
    -v //var/run/docker.sock:/var/run/docker.sock \
    rogersantos/jenkins 
fi

# Reset the image
# docker rm jenkins
