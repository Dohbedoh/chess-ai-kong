#!/usr/bin/env groovy

pipeline {
	agent any
    	stages { 
        	stage('Publish new development version') { 			
			agent { 
				dockerfile true 
			}
			steps { 
				sh """ 
				export GIT_SSH_COMMAND='ssh -vvv -oStrictHostKeyChecking=no'
				env
				ls -al
				git config -l
				git branch 
				# npm install chess-ai-kong
				which ssh
				git push
				""" 
			} 
		}
    	}
}

