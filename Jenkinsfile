#!/usr/bin/env groovy

pipeline {
	agent any
    	stages { 
        	stage('Publish new development version') { 	
			agent { 
				dockerfile true 
			}
			environment { 
				GIT_SSH_COMMAND = "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
			}		
			steps { 
				sh """ 
					ls -al
					git config core.sshCommand "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
					git config -l
					git branch 
					# npm install chess-ai-kong
					git push
				""" 
			} 
		}
    	}
}

