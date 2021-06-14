# Image recognition Telegram bot on Golang. 

### USAGE:

> make recognition_build_run

> make bot_run

> ngrok http 3000

> curl -F "url=https://9068b6869da7.ngrok.io "  https://api.telegram.org/bot1695572600:AAEOirfOjto2xNE5yjpQpW2Gyq0Ob5X24D4/setWebhook
```json
{"ok":true,"result":true,"description":"Webhook was set"}
```

And now you can send IMAGE to Your bot!


<img src="/docs/imgs/example_1.jpg" width="200" />


In terminal of Image Recognition server you can see the logs:

```shell
--- recognition result:
label: weasel, probability: 59.23%
label: meerkat, probability: 18.05%
label: mongoose, probability: 16.81%
---
```
