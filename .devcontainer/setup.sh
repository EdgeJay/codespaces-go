# install curl, git, ...
apt-get update
apt-get install -y curl git jq make

useradd -m user
su user

# install go
VERSION='1.20'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

INSTALLED_GO_VERSION=$(go version)
echo "Go version ${INSTALLED_GO_VERSION} is installed"

# install gopls, dlv, hey
echo "Getting development tools"
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/haya14busa/goplay@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
