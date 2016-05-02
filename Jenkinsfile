node ('master') {
    stage 'checkout'
    checkout scm
    
    stage 'Install'
    def nodeInstall = tool name: 'node (latest)', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
    sh "${nodeInstall}/bin/npm install"

    stage 'Code Standards - eslint'
    sh "eslint src/**/*.js || echo "Few failed conditions"

    stage 'Code Standards - npm'
    sh "npm run eslint || echo "Few failed conditions"

    stage 'Code Standards - grunt'
    sh "grunt eslint || echo "Few failed conditions"

    stage 'Build & Test'
    sh "grunt"
}
