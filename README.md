# Phoenix LiveView and component flash message example

An example of how flash messages can be sent from components to their parent LiveViews, for rendering alongside other top-level flash messages.

I wrote more about this in a blog post, [Updating flash messages from Phoenix LiveView components](https://sevenseacat.net/posts/2023/flash-messages-in-phoenix-liveview-components/).

## Setup

```
git clone https://github.com/sevenseacat/phoenix_liveview_flash_components_example.git
cd phoenix_liveview_flash_components_example
mix deps.get
```

## Run

```
mix phx.server
```

And you can visit the default homepage at http://localhost:4000.

Check out the LiveViews and components in `/lib/phoenix_liveview_flash_components_example_web/live/` to see how it all hangs together! ✨
