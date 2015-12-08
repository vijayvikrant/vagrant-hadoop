function setupEnvVars {
    echo "setting netmaster environment variables"
    export GOROOT=/usr/local/go
    sudo mkdir -p /opt/go
    sudo chown -R vagrant:vagrant /opt/go
    export GOPATH=/opt/go
    export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
}

function setupNetMaster {
    echo "setup netmaster"
    nohup bash -lc "/opt/go/bin/netmaster 2>&1> /tmp/netmaster.log &"
}

setupEnvVars
setupNetMaster
