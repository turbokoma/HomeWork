import Foundation

//1. Написать функцию, которая определяет, четное число или нет.
var a = 10
var b = a % 2

if b == 0 {
    print("\(a)  - четное число")
}else {
    print("\(a) - нечетное число")
}




//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
var a1 = 30
var b1 = a1 % 3

if b1 == 0{
    print("\(a1)  - число делится на 3 без остатка")
}else {
    print("\(a1) - число не делится на 3 без остатка")
}




//3. Создать возрастающий массив из 100 чисел.
var massivArray: [Int] = []
var n = Int.random(in: 0..<100)
for n in 1...100 {
    massivArray.append(n)
}
print("В массиве massivArray \(massivArray.count) элементов")


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var massivFiltr = massivArray.filter {$0 % 2 != 0 && $0 % 3 == 0}
print(massivFiltr)


//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

var fibona4iArray: [Int] = [0,1]
var p1 = 0
var p2 = 1
var p = p1 + p2
var podmena = p2
for i in 1...48{
    p = p1 + p2
    fibona4iArray.append(p)
    podmena = p2
    p2 = p
    p1 = podmena
}
print(fibona4iArray)
print("В массиве fibona4iArray \(fibona4iArray.count) элементов")



//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

func proverka (_ num: Int, of devider: Int) -> Bool {
    return num % devider == 0
}
var prostm: [Int] = []
while prostm.count != 541 {
    prostm.append(prostm.count+2)
}
var v: Int
var index = 0
while index < prostm.count - 1 {
    v = prostm[index]
    
    for num in prostm{
        if (num != v) && proverka(num, of: v){
            prostm.remove(at: prostm.firstIndex(of: num)!)
        }
        
    }
    index += 1
}
print(prostm)
print(prostm.count)






