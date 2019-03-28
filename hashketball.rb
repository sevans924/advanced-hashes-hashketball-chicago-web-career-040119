

def game_hash
  game_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(player)
  game_hash.each do |home_or_away, team_data|
    team_data[:players].each do |player_name, stats|
      if player_name == player
        return stats[:points]
        #puts stats
      end
      #puts player_name

    end
  end
end


def shoe_size(player)

  game_hash.each do |home_or_away, team_data|
    team_data[:players].each do |player_name, stats|
      if player_name == player
        return stats[:shoe]
        #puts stats
      end
      #puts player_name

    end
  end
end

def team_colors(team)
  game_hash.each do |home_or_away, team_data|
    if team_data[:team_name] == team
      return team_data[:colors]
    end
  end
end

def team_names
  game_hash.collect do |home_or_away, team_data|
      team_data[:team_name]
  end
end


def player_numbers(team)
  game_hash.collect do |home_or_away, team_data|
    if team_data[:team_name] == team
  team_data[:team_name].collect do |player_name, stats|
    player_name
  end
  end
end
end

puts player_numbers("Brooklyn Nets")

def player_stats(player)
  game_hash.each do |home_or_away, team_data|
    team_data[:players].each do |player_name, stats|
      if player_name == player
        return stats
        #puts stats
      end
      #puts player_name

    end
  end
end

def big_shoe_rebounds

  game_hash.map do |home_or_away, team_data|
    team_data[:players].max_by(1) do |player_name, stats|
     return stats[:rebounds]

    end
  end
end
