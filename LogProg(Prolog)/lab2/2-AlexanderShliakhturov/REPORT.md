#№ Отчет по лабораторной работе №2
## по курсу "Логическое программирование"

## Решение логических задач

### студент: Шляхтуров А.В.

## Результат проверки

| Преподаватель     | Дата         |  Оценка       |
|-------------------|--------------|---------------|
| Сошников Д.В. |              |               |
| Левинская М.А.|              |               |

> *Комментарии проверяющих (обратите внимание, что более подробные комментарии возможны непосредственно в репозитории по тексту программы)*


## Введение

Существует 2 основных подхода к решению логических задач: метод порождения и проверок и метод ветвей и границ. Они оба перебирают некоторый набор решений. Суть первого метода состоит в том, что некоторый предикат генерирует множество исходных данных, которые затем проверяются другими предикатами на предмет соответствия условию задачи. В случае неуспеха происходит возврат и рассмотрение следующего решения, в случае успеха полученное решение возвращается пользователю или используется дальше. Второй метод можно противопоставить первому. Главным отличием метода ветвей и границ от предыдущего метода является отсечение неподходящих решений в самом начале и рассмотрение только удовлетворяющих предыдущему условию ветвей решений. Благодаря перебору каждого возможного варианта решения, Пролог удобен для решения логических задач, потому что он дает возможность рассмотрения большого количества вариантов решения задачи и выбора из них подходящих. Механизм бэктрекинга при обнаружении неуспеха автоматически пересматривает решение и пытается продолжить выполнение программы при других значениях переменных.

## Задание

В одном городе живут 7 любителей птиц. И фамилии у них птичьи. Каждый из них тезка птицы, которой владеет один из его товарищей. У троих из них живут птицы, которые темнее, чем пернатые "тезки" их хозяев. "Тезка" птицы, которая живет у Воронова, женат. Голубев и Канарейкин единственные холостяки из всей компании. Хозяин грача женат на сестре жены Чайкина. Невеста хозяина ворона очень не любит птицу, с которой возится ее жених. "Тезка" птицы, которая живет у Грачева, хозяин канарейки. Птица, которая является "тезкой" владельца попугая, принадлежит "тезке" той птицы, которой владеет Воронов. У голубя и попугая оперение светлое. Кому принадлежит скворец?
## Принцип решения

Факты типа tezka соотносят имена птиц и фамилии людей. Список Dark состоит из темных птиц. Также используются предикаты member, not - в основном для определения семейного статуса человека и связанных с этим условий. Мы формулируем логические условия, которые должны выполняться для правильного решения задачи. Ограничения включают в себя условия о холостяках, семейном положении, связях между владельцами птиц, их "тезками" и тем, насколько светлое или темное оперение у птиц. С помощью предиката permutation пробегаемся по всем возможным вариантам и находим единственно верное решение с предикатом solve. После компиляции программы необходимо задать вопрос ? - solve (List, StarlingOwner). , где List - это вывод всех владельцев с птицами, а StarlingOwner - искомый ответ, определяющий владельца скворца.

## Выводы

Эта лабораторная работа была для меня достаточно сложной. Пролог, безусловно, эффективный язык программирования, но ведь выбор пути решения всё равно остаётся за человеком, зачастую неспособным указать Прологу на самый быстрый путь. И всё же, мощь Пролога поражает. Вручную перебирать несколько тысяч вариантов будет достаточно проблематично. А при похожих по смыслу задачах достаточно лишь поменять предикаты с условиями и генерацию. Считаю, что если достаточно формализовать условия этой задачи и похожих, то можно писать легкокорректируемые программы на Прологе, которые помогут решать нам целые классы таких задач.



