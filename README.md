advent-notifier-for-twitter
===

アドベントカレンダーの新着記事を twitter へポストします。これは[advent-notifier](https://twitter.com/advent_notifier)として稼働しています。

## Requirements

* FindBin
* JSON
* YAML::Tiny
* LWP::UserAgent
* Net::Twitter::Lite::WithAPIv1_1

## Setup

### Installing perl modules

```shellsession
% cpan FindBin JSON YAML::Tiny LWP::UserAgent Net::Twitter::Lite::WithAPIv1_1
```

### Edit config.yml

```shellsession
% cat <<EOF > config.yml
TWITTER_CONSUMER_KEY:           'your_consumer_key'
TWITTER_CONSUMER_SECRET:        'your_consumer_secret'
TWITTER_ACCESS_TOKEN:           'your_access_token'
TWITTER_ACCESS_TOKEN_SECRET:    'your_access_token_secret'
EOF
```

### Edit crontab

実行する時間は適宜調整してください。

```diff
+*/10 * * * *  sh -c "cd ~/advent-notifier-for-twitter && ./run.sh"
```

## License

[MIT](https://github.com/osm-tc159/advent-notifier-for-twitter/blob/master/LICENSE)

## Author

sasairc (https://github.com/sasairc)
