#!/usr/bin/env groovy

pipeline {
    agent { label "docker" }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Publish new development version') { 
		agent { 
			dockerfile true 
		} 
		steps { 
			sh """ 
				whoami 
				ls -al 
				env | sort 
				git branch 

				npm install 
				npm version prerelease 
				git push
				""" 
		} 
	}
    }
}

