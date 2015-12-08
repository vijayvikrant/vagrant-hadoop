function setupEnvVars {
    echo "setting netplugin environment variables"
    export GOROOT=/usr/local/go
    sudo mkdir -p /opt/go
    sudo chown -R vagrant:vagrant /opt/go
    export GOPATH=/opt/go
    export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
}

function setupNetPlugin {
    echo "setup netplugin"
    go get -u github.com/golang/lint/golint
    go get -u github.com/contiv/netplugin
    cd $GOPATH/src/github.com/contiv/netplugin
    make run-build
    nohup bash -lc "sudo /opt/go/bin/netplugin -docker-plugin 2>&1> /tmp/netplugin.log &"
}

setupEnvVars
setupNetPlugin
