let family = ["Fawaz", "Dawood", "Sulaiman", "Mohammed", "Abdullah", "Ahmed"]

print(family.count)

var evenNumbers = [2, 4, 6, 8, 10, 12]

evenNumbers.remove(at: 1)
evenNumbers += [16, 18, 20, 22]

evenNumbers.removeAll()
var Numbers = [1, 2, 3, 4, 5]

for num in Numbers {
    print(num)
}
Numbers.append(contentsOf: 6...10)

for number in Numbers {
    if number % 2 == 0 {
        print(number)
    }
}
