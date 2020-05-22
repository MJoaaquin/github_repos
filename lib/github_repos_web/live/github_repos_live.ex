defmodule GithubReposWeb.GithubReposLive do
  use GithubReposWeb, :live_view

  alias GithubRepos.GitRepos

  def mount(_params, _session, socket) do
    socket =
      assign(socket,
        language: "",
        repos: GitRepos.list_git_repos()
      )
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
      <h1>Trending Git Repos</h1>

      <form phx-change="filter">
        <select name="language">
          <%= options_for_select(languages_options(), @language) %>
        </select>
      </form>

      <div id="repos">
        <div class="repos">
          <ul>
            <%= for repo <- @repos do %>
              <li>
                <div class="first-line">
                  <div class="group">
                    <img src="images/terminal.svg">
                    <a href="<%= repo.owner_url %>">
                      <%= repo.owner %>
                    </a>
                    /
                    <a href="<%= repo.url %>">
                      <%= repo.name %>
                    </a>
                  </div>
                  <button>
                    <img src="images/star.svg">
                    Star
                  </button>
                </div>
                <div class="second-line">
                  <div class="group">
                    <span class="language <%= repo.language %>">
                      <%= repo.language %>
                    </span>
                    <span class="license">
                      <%= repo.license %>
                    </span>
                    <%= if repo.fork do %>
                      <img src="images/fork.svg">
                    <% end %>
                  </div>
                  <div class="stars">
                    <%= repo.stars %> stars
                  </div>
                </div>
              </li>
            <% end %>
          </ul>
        </div>
      </div>
    """
  end

  def handle_event("filter", %{"language" => language}, socket) do
    socket = assign(socket,
      language: language,
      repos: GitRepos.list_git_repos([language: language])
    )
    {:noreply, socket}
  end

  defp languages_options do
    [
      "All Languages": "all",
      "Python": "python",
      "Elixir": "elixir"
    ]
  end
end
