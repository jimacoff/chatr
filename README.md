# Chatr

Chatr is a web-based chat app, with realtime update functionality provided by
[Pusher](http://pusher.com/).

## Pusher Credentials

You will need to create a `.env` file in the project root with the following
Pusher credentials:

```
PUSHER_KEY: your-pusher-key-here
PUSHER_SECRET: your-pusher-secret-here
PUSHER_APP_ID: your-pusher-app-id-here
PUSHER_URL: your-pusher-url-here
```

The PUSHER_URL is in the form `http://KEY:SECRET@api.pusherapp.com/apps/APP_ID`
