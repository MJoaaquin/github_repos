# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GithubRepos.Repo.insert!(%GithubRepos.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias GithubRepos.GitRepos.GitRepo
alias GithubRepos.Repo

%GitRepo{
  name: "coobs",
  url: "https://github.com/fiqus/coobs",
  owner: "fiqus",
  owner_url: "https://github.com/fiqus",
  fork: false,
  stars: 1,
  language: "python",
  license: ""
}
|> Repo.insert!()

%GitRepo{
  name: "pirra",
  url: "https://github.com/fiqus/pirra",
  owner: "fiqus",
  owner_url: "https://github.com/fiqus",
  fork: false,
  stars: 9,
  language: "python",
  license: ""
}
|> Repo.insert!()

%GitRepo{
  name: "surguex",
  url: "https://github.com/fiqus/surgex",
  owner: "fiqus",
  owner_url: "https://github.com/fiqus",
  fork: false,
  stars: 8,
  language: "elixir",
  license: ""
}
|> Repo.insert!()

%GitRepo{
  name: "lqchatex",
  url: "https://github.com/fiqus/lqchatex",
  owner: "fiqus",
  owner_url: "https://github.com/fiqus",
  fork: false,
  stars: 7,
  language: "elixir",
  license: ""
}
|> Repo.insert!()

%GitRepo{
  name: "coophub",
  url: "https://github.com/fiqus/coophub",
  owner: "fiqus",
  owner_url: "https://github.com/fiqus",
  fork: false,
  stars: 29,
  language: "elixir",
  license: ""
}
|> Repo.insert!()
