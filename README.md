# README

* Тест. Приложение на чистом API.

### Установка
* bundle install
* rails db:migrate
* rails currency:update # task запускает обновление валют

### Использование
* развернуто на Heroku:

https://decart-currency.herokuapp.com/

* https://decart-currency.herokuapp.com/currencies # требует авторизации

* https://decart-currency.herokuapp.com/currencies/1 # не требует авторизации

### Тестирование

```
curl -i -H "AUTHORIZATION: Token secret" -H "Content-Type: application/json" http://localhost:3000/currencies
```

```
$ rails test test/integration
```
