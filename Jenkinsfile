#!/usr/bin/env groovy

pipeline {
	agent any
    	stages { 
        	stage('Publish new development version') { 	
			agent { 
				dockerfile true 
			}
//			environment { 
//				GIT_SSH_COMMAND = "ssh -vvv -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
//			}		
			steps { 
				sshagent(['mycred']) {
					sh """
					mkdir ~/.ssh
					cat > ~/.ssh/config << EOF
Host *
  StrictHostKeyChecking no
EOF
						ls -al
						git config core.sshCommand \"ssh -vvv -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no\"
						git config -l
						git branch -b feature/$BUILD_NUMBER
						# npm install chess-ai-kong
						git push -u origin feature/$BUILD_NUMBER
					""" 
				} 
			} 
		}
    	}
}

