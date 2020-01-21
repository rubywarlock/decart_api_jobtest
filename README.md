# README

* Тест. Приложение на чистом API.

### Установка
* bundle install
* rails db:migrate
* rails currency:update # task запускает обновление валют

### Использование
* развернуто на Heroku:

https://decart-currency.herokuapp.com/

* https://decart-currency.herokuapp.com/currencies # не требует авторизации

* https://decart-currency.herokuapp.com/currencies/1 # требует авторизации

### Тестирование

```
curl -i -H "AUTHORIZATION: Token secret" -H "Content-Type: application/json" http://localhost:3000/currencies/1
```

```
$ rails test test/integration
```