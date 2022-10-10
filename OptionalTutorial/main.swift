//
//  main.swift
//  OptionalTutorial
//
//  Created by Trần Văn Cam on 29/09/2022.
//

import Foundation

// MARK: OPTIONAl

var a: Int // Non-optional (Không thể mang giá trị nil)
// nil: không có gì cả
//a = nil

var b: Int? // Optional (có thể mang giá trị nil)
b = nil

/* Lưu ý: khi chúng ta sử dụng 1 đối tượng optional, thì phải biến đổi về kiểu non-optional rồi mới thực hiện
// Nếu đối tượng non-optional được sử dụng khi mang giá trị nil => crash
// Để biến đổi sang kiểu non-optional:
1. Dùng if...let
2. Dùng guard let ... else
3. Dùng "!": Force Unwrapping: hạn chế dùng, chỉ dùng khi chắc chắn được đối tượng đó k bị nil khi sử dụng
4. Dùng "??": Cung cấp giá trị mặc định nếu đối tượng đó nil
*/

func nhapSo() {
    print("Nhập 1 số nguyên bất kì: ")
    let number = Int(readLine() ?? "") ?? 0
    
    print(number)
}

//nhapSo()

func testOptional() {
    var number: Int?
    number = nil
    print(number ?? 45455) // nếu number nil thì sử dụng giá trị bên phải "??"
    //print(number!) // Dùng ! chỉ khi chắc chắn giá trị k nil
}
//testOptional()

// Sử dụng if let để unwraping
func unwrap1() {
    var a: Int? = nil
    
    // Nếu a không nil, thì newA là non-optional sẽ mang giá trị của a, thực hiện khối lệnh sau if
    // Nếu a nill, thực hiện khối lệnh sau else
    if let newA = a {
        // newA chỉ có thể sử dụng ở khối lệnh sau if này
        print(newA, "a không nil")
    } else {
        print("a nil")
    }
}

unwrap1()

// Sử dụng guard let để unwraping

func unwrap2() {
    let b: Float? = nil
    // nếu b không nil thì newB là non-optional sẽ mang giá trị của b và không thực hiện khối lệnh sau else
    // Nếu b nil, thực hiện khối lệnh sau else, những câu lệnh bên dưới không thực hiện
    guard let newB = b else {
        
        print("B bị nil")
        return
    }
    // Khi return được gọi, những câu lệnh sau đó sẽ không được thực hiện
    // NewB có thể sử dụng bên dưới guard let
    print("\(newB), b không nil")
}

//unwrap2()

func tinhTong(soA: Int?, soB: Int?) {
    /*
    if let a = soA, let b = soB { // có thể Unwrapping nhiều giá trị
        print("Tổng a và b là :", a+b)
    } else {
        print("a hoặc b bị nil")
    }
    
    guard let a = soA, let b = soB else {
        print("A hoặc B bị nil")
        return
    }
    print("Tổng a và b là :", a+b)
    */
    
    // Sử dụng ??
    print("Tổng của a và b là:", (soA ?? 0) + (soB ?? 0))
}
//tinhTong(soA: 0, soB: nil)


