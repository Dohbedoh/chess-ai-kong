#!/usr/bin/env groovy

pipeline {
	docker { image 'node:6' }
    	stages {
        	stage('Checkout') {
            		steps {
                		checkout scm
            		}
        	}
        	stage('Publish new development version') { 
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

