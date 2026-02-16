defmodule TunezWeb.AuthOverrides do
  use AshAuthentication.Phoenix.Overrides
  alias AshAuthentication.Phoenix.Components

  # configure your UI overrides here

  # First argument to `override` is the component name you are overriding.
  # The body contains any number of configurations you wish to override
  # Below are some examples

  # For a complete reference, see https://hexdocs.pm/ash_authentication_phoenix/ui-overrides.html

  # override AshAuthentication.Phoenix.Components.Banner do
  #   set :image_url, "https://media.giphy.com/media/g7GKcSzwQfugw/giphy.gif"
  #   set :text_class, "bg-red-500"
  # end

  # override AshAuthentication.Phoenix.Components.SignIn do
  #  set :show_banner, false
  # end

  override Components.Banner do
    set :image_url, nil
    set :dark_image_url, nil
    set :text_class, "text-8xl text-accent-400"
    set :text, "♫ Tunez"
  end

  override AshAuthentication.Phoenix.Components.Password.Input do
    set :submit_class,
        "bg-primary-600 hover:bg-primary-700 text-white rounded-lg font-medium leading-none cursor-pointer my-4 py-3 px-5 text-sm"
  end
end
