# popug-jira

Awesome Task Exchange System (aTES) for UberPopug Inc

### Сервисы

* Авторизация
* Дашборд таск-трекера
  * _Страница распределения задач по юзерам_
  * _Страница изменения статуса назначенных задач_
* Аккаунтинг
* Аналитика

### Модели

```
User {
  id
  login
  role: [админ, менеджер, сотрудник]
  баланс???
}

Issue {
  id
  описание
  статус
  user_id
}
```

### Таск-трекер

#### Эндпоинты

* Список задач
* Создание задачи
* Распределение задач
* Список назначенных на меня задач
* Отметить назначенных на меня задачу выполненной

### Аккаунтинг

#### Эндпоинты
* Количество заработанных топ-менеджментом за сегодня денег

Воркер отправлять на почту сумму выплаты за день ???

### Аналитика

#### Эндпоинты

* Количество заработанных топ-менеджментом за сегодня денег
* Самая дорога задача за день, неделю или месяц
