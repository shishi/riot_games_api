[![Gem Version](https://badge.fury.io/rb/riot_games_api.svg)](http://badge.fury.io/rb/riot_games_api)
[![Build Status](https://drone.io/github.com/shishi/riot_games_api/status.png)](https://drone.io/github.com/shishi/riot_games_api/latest)
[![Build Status](https://travis-ci.org/shishi/riot_games_api.svg?branch=master)](https://travis-ci.org/shishi/riot_games_api)
[![Code Climate](https://codeclimate.com/github/shishi/riot_games_api.png)](https://codeclimate.com/github/shishi/riot_games_api) [![Code Climate](https://codeclimate.com/github/shishi/riot_games_api/coverage.png
)](https://codeclimate.com/github/shishi/riot_games_api)
[![Dependency Status](https://gemnasium.com/shishi/riot_games_api.svg)](https://gemnasium.com/shishi/riot_games_api)

# RiotGamesApi

Make access easy to access Riot Games API to get their game data like League of Legends.

## Installation

Add this line to your application's Gemfile:

    gem 'riot_games_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install riot_games_api

## Usage

**First, You should love to play, watch, or do something with League of Legends.**

Very thanks to Riot for greatest game.

* English
  * You need to get your RIOT Games API key. You may need to register your app. Defaul key for development is too restricted to use.

* Japanese
  * RIOT Games API キーを取得してきて下さい。アプリケーションを登録してキーをもらったほうが良いかもしれません。デフォルトの開発用キーは普通に使うには制限が強すぎます。

https://developer.riotgames.com/

``` ruby

client = RiotGamesApi::LOL::Client.new api_key: 'your_api_key' # or ENV['RIOT_GAMES_API_KEY']

* English
avalable parameters when initialize client

* Japanese
クライアント初期化の際に使えるパラメータ

api_key       default: none or ENV['RIOT_GAMES_API_KEY']
region        default: 'na'
adapter       default: Faraday.default_adapter
debug logging default: false
locale        default: 'en_US'

# from summoner resource
summoner = client.summoner.by_name ['hello im shishi'].first
# from team resource
teams = client.team.by_summoner_id [summoner.id]

# English
# You can use champions and items id list (created 2015/11/16)
# You can see and edit lists in lib/riot_games_api/lol/constant/

# Japnese
# チャンピオンとアイテムのIDのリストを作ってあります (2015/11/16 作成)
# lib/riot_games_api/lol/constant/ にファイルがあるので編集もできます

# from static_data resource
jinx = client.static_data.champion_by_id RiotGamesApi::LOL::CHAMPIONS[:jinx]
jinx_lore = jinx.lore
b_f_sword = client.static_data.item_by_id RiotGamesApi::LOL::ITEMS[:b_f_sword]
b_f_sword_stats = b_f_sword.stats

# English
# Now, Riot Games API do not support image file directly, but you can get url for images their official data. Almost same for items, etc.

# Japanese
# 現在 Riot Games API は画像を直接サポートしていませんが、こうするとCDNの公式データを取得するURLを組み立てることが出来ます。アイテムとかでも大体同じようにできます。

xin = client.static_data.champion_by_id RiotGamesApi::LOL::CHAMPIONS[:xin_zhao]
xin_image_filename = xin.image.full
image_group = xin.image.group

realm = client.static_data.realm
url = realm.cdn
dd_version = realm.dd

image_url = url + dd_version + '/img/' + image_group + xin_image_filename

```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/riot_games_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
