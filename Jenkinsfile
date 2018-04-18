#!/usr/bin/env groovy

pipeline {
    	stages {
		agent {
			dockerfile true
		}
        	stage('Publish new development version') { 
			steps { 
				sh """ 
				ls -al
				git config --global push.default matching
				git config --global user.email "aburdajewicz@cloudbees.com" 
				git config --global user.name "dohbedoh" 
				git config -l
				git branch 
				# npm install chess-ai-kong
				git push
				""" 
			} 
		}
    	}
}

