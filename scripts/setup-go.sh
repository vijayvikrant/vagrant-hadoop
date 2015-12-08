
source "/vagrant/scripts/common.sh"

function installLocalGoLang {
    echo "install golang from local file"
    tar -xzf /vagrant/resources/golang/$GOLANG_ARCHIVE -C /usr/local
}

function installRemoteGoLang {
    echo "install golang from remote file"
    curl -o /vagrant/resources/golang/$GOLANG_ARCHIVE -O -L $GOLANG_DL_LINK
    sleep 5
    tar -xzf /vargrant/resources/golang/$GOLANG_ARCHIVE -C /usr/local

}

function installGoLang {
    if resourceExists $GOLANG_ARCHIVE; then
        installLocalGoLang
    else
        installRemoteGoLang
    fi
}

function setupEnvVars {
    echo "setting go environment variables"
    export GOROOT=/usr/local/go
    export PATH=$PATH:$GOROOT/bin
}

echo "installing Go Lang"
installGoLang
setupEnvVars
