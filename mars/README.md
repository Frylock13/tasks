Группа роботов высаживается на плато на Марсе. Плато прямоугольное, роботы должны перемещаться по нему для того, чтобы изучить окружающий ландшафт и отправить данные на Землю.

Позиция роботов выражена комбинацией координат X и Y и буквой, которая означает сторону света. Плато разделено на сетку для упрощения навигации. Пример позиции может быть 0, 0, N, что означает что робот находится в нижнем левом углу и направлен на север.

Для того, чтобы контролировать роботов мы отправляем последовательность букв в виде строки. Возможные буквы: ‘L’, ‘R’ и ‘M’. 
‘L’ и ‘R’ вращают робота на 90 градусов, не двигая его с текущей точки. ‘M’ означает движение вперед на одну ячейку сетки, сохраняя текущее направление. 

Предположим что координаты квадрата, находящегося строго на севере от (x, y) являются  (x, y+1)

ВХОД:
Первым входным параметром задается размерность плато. Это координаты верхнего правого угла плато, нижний левый угол является началом координат (0, 0).

Остальные входные параметры относятся к роботам, которые были высажены. Для каждого робота на вход подаются две строки . Первая строка указывает позицию робота, вторая это последовательность инструкций, как нужно двигаться роботу, чтобы исследовать плато.

Позиция  должна быть выражена двумя целыми числами и буквой, разделенными пробелами, что соответствует координатам X  Y и направлению робота.

Роботы должны запускаться последовательно, что означает что второй робот не запускается пока первый не закончил движение.

РЕЗУЛЬТАТ
Результатом для каждого робота должна стать строка, содержащая его финальные координаты и направление.

На вход:

6 6

3 3 N

RRMLMRRML

Результат:

3 2 S
