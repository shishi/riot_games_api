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

```
api_key       default: none or ENV['RIOT_GAMES_API_KEY']
region        default: 'na'
adapter       default: Faraday.default_adapter
debug logging default: false
locale        default: 'en_US'
```

# from summoner resource
summoner = client.summoner.by_name ['hello im shishi'].first
# from team resource
teams = client.team.by_summoner_id [summoner.id]

# English
# You can use champions and items id list (created 2014/11/23)
# You can see and edit lists in lib/riot_games_api/lol/constant/

# Japnese
# チャンピオンとアイテムのIDのリストを作ってあります (2014/11/23 作成)
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

### Public method list

You may need to inspect return object to know what they have.

返されるオブジェクトをインスペクトすると、どんなデータを持ってるのか分かりやすいです。

```
There are some more options, you found in lib/riot_games_api/lol/resource

RiotGamesApi::LOL::Resource::Champion
  This resource for champion's status like active, free, enable or not in ranked

  #all
    return all champions
  #free
    return free champions
  #by_champion_id
    return a specified champion by champion id

RiotGamesApi::LOL::Resource::Game
This resource for recent game records

  #recent
    return recent 10 game records by summoner id

RiotGamesApi::LOL::Resource::League
  This resource for league of legends league system records

  #by_summoner_id
    return league data include entries by summoner id
  #by_summoner_id_only_own_entry
    return entry league data by summoner id
  #by_team_id
    return league data include entries by team id
  #by_team_id_only_own_entry
    return entry league data by team id
  #challenger_solo_5v5
    return league data include entries in challenger solo 5v5
  #challenger_team_5v5
    return league data include entries in challenger team 5v5
  #challenger_team_3v3
    return league data include entries in challenger team 3v3

RiotGamesApi::LOL::Resource::StaticData
  This resource for static data like champion' status, skill data

  champion
    #champion_all
      return all champion static data (very heavy)
    #champion_by_id
      return a specified champion static data by champion id
  item
    #item_all
      return all item static data
    #item_by_id
      return a specified item static data by item id
  mastery
    #mastery_all
      return all mastery static data
    #mastery_by_id
      return a specified mastery static data by mastery id
  #realm
    return realm data
  rune
    #rune_all
      return all rune static data
    #rune_by_id
      return a specified rune static data by rune id
  summoner_spell
    #summoner_spell_all
      return all summoner spell static data
    #summoner_spell_by_id
      return a specified summoner spell static data by summoner spell id

RiotGamesApi::LOL::Resource::Stats
  This resource for statistics of league of legends matches

  #ranked
    return statistics of ranekd match by summoner id
  #summary
    return statistics of matches by summoner id

RiotGamesApi::LOL::Resource::Summoner
  This resource for summoner data

  #by_name
    return a summoner data by summoner name
  #by_id
    return a summoner data by summoner id
  #masteries
    return summoner masteries data by summoner id
  #name
    retuen summoner name by summoner id
  #runes
    return summoner runes data by summoner id

RiotGamesApi::LOL::Resource::Team
  This resource for ranked team data

  #by_summoner_id
    return team data by summoner id
  #by_team_id
    retuen team data by team id

```


## Contributing

1. Fork it ( http://github.com/<my-github-username>/riot_games_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
