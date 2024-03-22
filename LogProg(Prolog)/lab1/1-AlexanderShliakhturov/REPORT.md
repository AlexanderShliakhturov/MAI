# Отчет по лабораторной работе №1
## Работа со списками и реляционным представлением данных
## по курсу "Логическое программирование"

### студент: Шляхтуров Александр Викторович

## Результат проверки

| Преподаватель     | Дата         |  Оценка       |
|-------------------|--------------|---------------|
| Сошников Д.В. |              |               |
| Левинская М.А.|              |               |

> *Комментарии проверяющих (обратите внимание, что более подробные комментарии возможны непосредственно в репозитории по тексту программы)*


## Введение
% `length`, `member`, `append`, `remove`, `permute`, `sublist`
Опишите своими словами, чем списки в языке Пролог отличаются от принятых в императивных языках подходов к хранению данных. На какие структуры данных в традиционных языках похожи списки в Прологе?

**Ответ:** 
Если рассматривать массив, в императивных языках программирования мы сожем обращаться к конкретным элементам этого массива по их индексам, всячески их менять и перезаписывать, в прологе же работа с элементами списка происходит через голову и  унификацию, а напрямую к объекту мы обратиться не можем.

Список в языке Prolog очень похож на тип данных стек в императивных языках программирования. Стек так же, как и список в прологе задается рекурсивно. Стек имеет верхушку и тело стека, которое тоже в свою очередь является стеком, имея свою верхушку и свое тело. Стек задается рекурсивно как конкатенация элемента и другого стека. Аналогично в прологе. Список задается головой и хвостом, который в свою очередь тоже является списком, у которого так же есть голова и хвост. Списки в прологе похожи на односвязные списки в императивных языках программирования, так как для доступа к элементу односвязного списка нужно преодолеть все предыдущие элементы, начиная от "головы".

**Задание 1.1: Предикат обработки списка**
    **ПРЕДИКАТ, ВЫПОЛНЯЮЩИЙ УДАЛЕНИЕ ВСЕХ ЭЛЕМЕНТОВ СПИСКА ПО ЗНАЧЕНИЮ**

`remove_X(List, Elem, Res).`
        List - рассматриваемый список
        Elem - элемент, все вхождения которого следует удалить из списка
        Res - результирующий список, в котором нет ни одного элемента Elem


**Примеры использования:**

?- remove_X([1,2,2,3,3], 2, Res).
Res = [1, 2, 3, 3] .
?- remove_X([], 2, Res).
Res = [].
?- remove_X([3, 3, 3, 3], 2, Res).
Res = [3, 3, 3, 3].
?- remove_X([3, 3, 3, 3], 3, Res).
Res = [].
?- remove_X([3, 2, 3, 2], 3, Res).
Res = [2, 2].

**Реализация:**

`не используя стандартные предикаты`

remove_X([], _, []).
remove_X([X|Rest], X, Result) :- remove_X(Rest, X, Result).
remove_X([Y|Rest], X, [Y|Result]) :- remove_X(Rest, X, Result).

`на основе стандарных предикатов`

remove_all(Lst, X, Result) :- 
    \+ member(X, Lst), 
    Result = Lst.
remove_all(Lst, X, Result) :-
    remove(Lst, X, NewLst),
    remove_all(NewLst, X, Result).
remove_all([], _, []).
            
**Принцип работы?**

Общий принцип работы обоих предикатов основан на том, что мы редуцируем исходный список до пустого, а затем используем факты, что:
1) Удаляя из пустого списка что-угодно, мы получим пустой список
2) Удаляя элемент, совпадающий с головой списка, результатом будет тело списка. А значит для дальнейшего рассмотрения следует брать тело.
3) Удаляя элемент, не совпадающий с головой списка, результатом будет список с головой исходного. Для дальнейшего рассмотрения следует так же брать тело. 
Повторяя эти три правила снова и снова список неизбежно редуцируется до пустого, после которого промежуточные результаты будут предопределены, и мы получим ответ для исходного списка.

Разница между реализацией на основе предиката Remove, удаляющего только первое вхождение, состоит в том, что в этом случае нужно обозначить, в какой момент рекурсивные вызовы прекращаются. В противном случае предикат remove будет бесконечно вызываться предикатом remove_all, редуцировать список до пустого и возвращать обратно. Рекурсивные вызовы remove_all прекращаются как только предикат member возвращает false. Это означает, что искомый символ для удаления больше не входит в список, и дальше продолжать вызовы предиката remove не имеет смысла - нечего удалять.

**Задание 1.2: Предикат обработки числового списка**
    **ПРЕДИКАТ, СКЛАДЫВАЮЩИЙ ДВА ВЕКТОРА-СПИСКА С УЧЕТОМ ВОЗМОЖНОГО НЕСОВПАДЕНИЯ РАЗМЕРНОСТИ**

`vect_sum(Vect1, Vect2, VectSum).`
    Vect1, Vect2 - исходные вектора
    VectSum -векторная сумма исходных векторов
**Примеры использования:**

?- vect_sum([1,2,3], [1,2,3], Res).
Res = [2, 4, 6] 
?- vect_sum([0,0,0], [1,2,3], Res).
Res = [1, 2, 3] 
?- vect_sum([1,2,3], [1], Res).
Res = [2, 3, 4] 
?- vect_sum([1], [1,2,3], Res).
Res = [2, 3, 4] 
?- vect_sum([], [], Res).
Res = []
?- vect_sum([1,2,3], [], Res).
Res = [1,2,3]  
?- vect_sum([], [1, 2, 3], Res).
Res = [1,2,3] 

**Реализация:**

vect_sum([], V2, V2).
vect_sum(V1, [], V1).

vect_sum([X1|Rest1], [X2|Rest2], [Sum|Result]) :-
    Sum is X1 + X2,
    vect_sum(Rest1, Rest2, Result).

**Принцип работы?**

Принцип работы заключается в том, что голова готового списка будет суммой голов двух исходных. А хвостом готового списка будет сумма хвостов, рекурсивно представляемая как "голова хвоста" и "хвост хвоста" до тех пор, пока один из списков не будет пустым - в таком случае применяется одино из первых двух правил, или пока от списков не останутся только последние элементы, воспринимаемые как головы. В последнем случае мы получим крайний элемент готового списка, который будет равен крайним элементам двух исходных списков. Возвращаясь по цепочке рекурсивных вызовов обратно, мы получим список, составленный из сумм одноименных по порядку элементов исходных списков, что и будет списком- векторной суммой. 

## Задание 2: Реляционное представление данных

Опишите, в чем преимущества и недостатки реляционного представления в целом, и конкретного представления, которое вы использовали.

**Ответ:** 
Реляционное представление хорошо тем, что благодаря нему мы можем работать с большим количеством связаных между собой параметров или с объектами, имеющими больше количество принадлежащих им характеристик. Через связи между таблицами мы можем построить огромную сеть со связанными между собой данными, а затем извлекать нужную нам информацию, подвергая весь пласт данных определенной фильтрации.
Из минусов реляционного представления данных можно выделить лишь непригодность к использованию для хранения данных определенных типов и низкую скорость доступа.


Опишите принцип реализации всех предикатов, осуществляющих запросы к данным.

**Выводы**