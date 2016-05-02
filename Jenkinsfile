node ('master') {
    stage 'checkout'
    checkout scm
    
    stage 'Install'
    def nodeInstall = tool name: 'node (latest)', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
    sh "${nodeInstall}/bin/npm install"
    
    stage 'Build & Test'
    sh "grunt"
}
