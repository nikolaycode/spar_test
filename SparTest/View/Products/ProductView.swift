//
//  ProductView.swift
//  SparTest
//
//  Created by Nikolay Bogdanov on 31.01.2024.
//

import SwiftUI

struct ProductView: View {
    var product: Product
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Image(product.preview)
                    .resizable()
                    .scaledToFit()
                    .overlay {
                        VStack {
                            HStack {
                                Text("Цена по скидке")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .padding(4)
                                    .background(.green)
                                    .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                
                // title
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    
                    Text(String(format: "%.1f", product.rating))
                    
                    Divider()
                    
                    Text("\(product.reviews.count) отзывов")
                        .foregroundStyle(.gray)
                    
                    Spacer()
                }
                
                Text(product.title)
                    .font(.title)
                    .bold()
                    .padding([.top, .bottom])
                
                
                // description
                Text("Описание")
                    .bold()
                
                Text(product.description)
                    .padding(.bottom)
                
                // characteristics
                Text("Основные характеристики")
                    .bold()
                
                CharacteristicsView(characteristics: product.characteristics)
                
                Button {
                } label: {
                    Text("Все характеристики")
                        .bold()
                }
                .foregroundStyle(.green)
                .padding([.top, .bottom])
                
                
                // reviews
                HStack {
                    Text("Отзывы")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                    
                    Button {
                    } label: {
                        Text("Все отзывы")
                            .bold()
                    }
                    .foregroundStyle(.green)
                }
                .padding([.top], 6)
                
                ReviewsScrollView(reviews: product.reviews)
                
                Button {
                    
                } label: {
                    Text("Оставить отзыв")
                        .bold()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 40)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.green, lineWidth: 2)
                        }
                }
                .foregroundStyle(.green)
            }
            .padding()
        }
    }
}

#Preview {
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
