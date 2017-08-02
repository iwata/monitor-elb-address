+{
    # aws elb describe-load-balancers | jq '.LoadBalancerDescriptions[].DNSName' | awk '{print $0 ","}' | sort
    dnsname => {
      'xxx.ap-northeast-1.compute.amazonaws.com' => ['example.com'],
      'yyy.ap-northeast-1.compute.amazonaws.com' => ['api.example.com'],
    },
    notify => {
        slack => {
            webhook_url => 'https://hooks.slack.com/services/XXXXX/YYYYY/WWWWWW',
            # channel => '#foo',
            # username => 'ELB IP watcher',
        }
    },
};
