Данный бот постит в канал Телеграмма новые фотографии с вашего профиля Инстаграм. 

Настройка скрипта для бота:

1) Если нет аккаунта в Телеграмме, создаем его.

2) Пишем Отцу Ботов (https://web.telegram.org/#/im?p=@BotFather), придумываем имя для нашего бота и получаем токен бота

3) Так же нам потребуется аккаунт в Инстаграме, с которого мы будем вытаскивать новые фотографии и постить в канал

4) Заходим сюда - https://www.instagram.com/developer/clients/manage/ и регистрируем нового клиента (нам будут известны client_id, который мы вбиваем в наш скрипт). (при создании клиента, в Website URL и Redirect URI указываем  http://localhost).

5) После создания, переходим во вкладку Security и снимаем галочку с Disable implicit OAuth. Чтобы получить client access token, переходим на https://instagram.com/oauth/authorize/?client_id=[CLIENT_ID_HERE]&redirect_uri=http://localhost&response_type=token 
где CLIENT_ID_HERE - это тот id, который мы получили в 4 пункте. 

Бот готов к эксплуатации, по желанию, можно задеплоить скрипт на Heroku. 
