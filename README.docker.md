sed -e "s#mode_traditional.*#mode_traditional = true#g" config.example.toml > config.toml
sed -i -e "s#YourEmail@hotmail.com / YourEmail@outlook.com#hung.allan@gmail.com#g" config.toml
sed -i -e "s#YourPassword#YourPassword#g" config.toml
sed -i -e "s#outlook.office365.com#imap.gmail.com#g" config.toml
sed -i -e "s#Webhook URL#https://webhook.site/43d6347c-a398-4407-8b0c-86e99fffd755#g" config.toml

docker build -t tradingviewwebhook .
docker run -d --name=tv --rm -v $(pwd)/config.toml:/app/config.toml tradingviewwebhook
docker logs tv
