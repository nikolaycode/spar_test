//
//  ContentView.swift
//  SparTest
//
//  Created by Nikolay Bogdanov on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProductView(
            product: Product(
                title: "Добавка Липа к чаю 200г",
                preview: "lipa",
                description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов",
                rating: 4.1,
                characteristics: [
                    Characteristic(name: "Производство", value: "Россия, Краснодарский край"),
                    Characteristic(name: "Жиры/100 г", value: "0,1 г"),
                    Characteristic(name: "Белки/100 г", value: "1,3г"),
                    Characteristic(name: "Углеводы/100 г", value: "3,3г"),
                ],
                reviews: [
                Review(name: "Женя Р.", date: "7 мая 2021", rating: 4, description: "Очень хороший продукт! Я прямо чувствую как мое здоровие улучшилось!"),
                Review(name: "Игорь В.", date: "7 мая 2021", rating: 3, description: "Такое себе, не мое. Вкус очень не очень."),
                Review(name: "Николай Б.", date: "31 января 2024", rating: 5, description: "Я кандидат который подходит вам по всем параметрам.")
                ]
            )
        )
    }
}

#Preview {
    ContentView()
}
