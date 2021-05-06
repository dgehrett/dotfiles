alias reload!='. ~/.zshrc'


alias aels1='ssh -i ~/.ssh/logstash.pem root@aels1.cld.homefinder.com'
alias aels2='ssh -i ~/.ssh/logstash.pem root@aels2.cld.homefinder.com'
alias aels3='ssh -i ~/.ssh/logstash.pem root@aels3.cld.homefinder.com'
alias aels4='ssh -i ~/.ssh/logstash.pem root@aels4.cld.homefinder.com'
alias aels5='ssh -i ~/.ssh/logstash.pem root@aels5.cld.homefinder.com'
alias aels6='ssh -i ~/.ssh/logstash.pem root@aels6.cld.homefinder.com'
alias aels7='ssh -i ~/.ssh/logstash.pem root@ec2-54-196-114-187.compute-1.amazonaws.com'
alias aels8='ssh -i ~/.ssh/logstash.pem root@aels8.cld.homefinder.com'
alias aees1='ssh -i ~/.ssh/logstash.pem root@aees1.cld.homefinder.com'
alias aees2='ssh -i ~/.ssh/logstash.pem root@aees2.cld.homefinder.com'
alias aees3='ssh -i ~/.ssh/logstash.pem root@aees3.cld.homefinder.com'
alias aees4='ssh -i ~/.ssh/logstash.pem root@aees4.cld.homefinder.com'
alias aees5='ssh -i ~/.ssh/logstash.pem root@aees5.cld.homefinder.com'
alias aees6='ssh -i ~/.ssh/logstash.pem root@aees6.cld.homefinder.com'
alias aees7='ssh -i ~/.ssh/logstash.pem root@aees7.cld.homefinder.com'
alias aemos1='ssh -i ~/.ssh/logstash.pem cloud-user@aemos1.cld.homefinder.com'
alias isd='ssh -i ~/.ssh/imageserver.pem ec2-user@ec2-107-21-35-237.compute-1.amazonaws.com'

alias run_redis='redis-server /usr/local/etc/redis.conf'


alias rcs='heroku run rails c -a movingcompanyreviews-stage'
alias rcp='heroku run rails c -a movingcompanyreviews'
alias rci='heroku run rails c -a mcr-int'

#kubectl stuff
alias kubeGetPods='kubectl get pods'
alias kubeGetPodsSp='kubectl get pods | grep "services-proxy"'

alias kubeCurrentContext='kubectl config current-context'
alias kubeUseContextStage='kubectl config use-context cwt-stage'
alias kubeUseContextInt='kubectl config use-context cwt-int-developer'
#alias kubeSetContextStage='kubectl config set-context cwt-stage'
alias kubeUseContextProd='kubectl config use-context cwt-prod'
#alias kubeSetContextProd='kubectl config set-context cwt-prod!!!!'
alias k='kubectl'

# random things
alias please='sudo'
