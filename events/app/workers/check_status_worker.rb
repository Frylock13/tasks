class CheckStatusWorker
  include Sidekiq::Worker
  def perform(task_id)
    task = Task.find(task_id)

    if task.solved?
      task.finished!
      SendSlackNotification.call("#{task.title} has finished")
    end
  end
end

В общем, разрабатывал в основном проекты под ключ в паре с дизайнером, во всех я был full-stack. Самые интересные только отмечу:

1) Рекрутинговый портал, урезанный аналог hh.ru
https://land-prof.herokuapp.com сделал его после 2х месяцев работы с рельсами, поэтому код не буду показывать :) Портал с вакансиями, резюме и пр., интерактивные портфолио с 
разными темами как на Linkedin, со всякими кружками и графиками, платные услуги. Не помню, что там интересного использовал, в основном вроде просто бизнес логика была.
База слетела там. Если очень захотите протестировать, я могу это все залить. 

2) Аналог SmartProgress.do и Stickk.com
https://github.com/Frylock13/stimul было год назад, кодом стыжусь
https://drive.google.com/open?id=0B1wGmGedDY1dY2lhcjhDanF0OWc тут видео работы
Пользователь создает цель, добавляет(опционально) рефери, группу поддержки, которые будут следить за ходом цели и подтверждать выполнена ли сама цель или отдельный ее этап. 
Несколько типов целей: периодическая(с отчетом каждую неделю) и разовая. Есть возможность делать ставку на выполнение цели, за пару дней до окончания недели/даты пользователь получает оповещение
и если он не подтверждает успешность или его рефери не подтверждает, то списывается соответствующая сумма со счета. Больше всего понравилось делать эти цепочки событий.
Из интересного использовал только sidekiq scheduler для проверки дат и оповещения пользователей, Stripe для интеграции с платежными системами, Redis для счетчиков и кое-где Angular 1.

3) Lovemapia.ru 
https://github.com/Frylock13/FishMap
Ничего сверхгениального, просто понравилось работать с GoogleMaps API. Добавление точек на карте, где можно найти определенные места, обсуждение мест, фильтры, галлерея и все такое.

4) Интернет-магазин owly.ru
https://github.com/Frylock13/owly
Просто магазин с нуля, в котором хотелось получше познакомиться с редисом. 
Корзина на Redis, Angular 1 на клиенте, интеграция с платежной системой Assist, интеграция с Mailchimp для подписок, генерация инвойсов для юридических лиц, Sidekiq, доработанные функции ActiveAdmin под конкретного клиента.
Сейчас на owly.ru магазин на джумле, потому что поддержка рельсов им показалось слишком дорогой, но проект можно легко развернуть локально.

5) Личный проект - игра Moonlight
