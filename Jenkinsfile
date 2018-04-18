#!/usr/bin/env groovy

pipeline {
	agent {
		docker { image 'node:6' }
	}
    	stages {
        	stage('Checkout') {
            		steps {
                		checkout scm
            		}
        	}
        	stage('Publish new development version') { 
			steps { 
				sh """ 
				ls -al 
				git branch 

				npm install 
				npm version prerelease 
				git push
				""" 
			} 
		}
    	}
}

