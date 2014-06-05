//
//  AppDelegate.swift
//  FlappySwift
//
//  Created by Giordano Scalzo on 02/06/2014.
//  Copyright (c) 2014 Effective Code. All rights reserved.
//

import UIKit


class DemoTest: UIResponder
{
	func testFun ()
	{
		NSLog("Hello, %@", "world");
		self.testValueSet();
		self.iterateDictionary();
		
	}
	
	func testValueSet()
	{
		///<
		let maximumNumberOfLoginAttempts = 10
		
		///< 单变量
		var fValue : Float = 4;
		fValue = 7;
		NSLog("fValue=%f", fValue);
		var labelTitle = "the width is "
		labelTitle = labelTitle + String(50);
		labelTitle = labelTitle + " \(60)";
		NSLog("labelTitle=%@.", labelTitle);
		
		///< 数组
		var shoppingList = ["catfish", "water", "tulips", "blue paint"];
		NSLog("shoppingList=%@.", shoppingList);
		shoppingList[1]="new [water]";
		NSLog("shoppingList=%@.", shoppingList);
		
		///< 字典
		var occupations =
		[
			"Malcolm" : "Captain",
			"Kaylee" : "Mechanic",
		];
		NSLog("occupations=%@.", occupations);
		occupations["key3"] = "Value 3";
		NSLog("occupations=%@.", occupations);
	}
	
	func ControlFlow()
	{
		let vegetable = "red pepper"
		switch vegetable
			{
		case "celery":
			let vegetableComment = "Add some raisins and make ants on a log."
		case "cucumber", "watercress":
			let vegetableComment = "That would make a good tea sandwich."
		case let x where x.hasSuffix("pepper"):
			let vegetableComment = "Is it a spicy \(x)?"
		default:    //by gashero
			let vegetableComment = "Everything tastes good in soup."
		}
	}
	
	func iterateDictionary()
	{
		let interestingNumbers = [
			"Prime": [2, 3, 5, 7, 11, 13],
			"Fibonacci": [1, 1, 2, 3, 5, 8],
			"Square": [1, 4, 9, 16, 25],
		]
		for (key, values) in interestingNumbers
		{
			var message = "key = ";
			for valueNum in values
			{
				message = message + ", " + String(valueNum);
			}
			NSLog("message=%@.", message);
		}
		
		///< for 循环
		var sums = 0;
		for i in 0 .. 3
		{
			sums += i;
		}
		NSLog("sums=%d.", sums);
		
		var retValue = self.funcTest("world", day: "2014-06-05", value: 50.1);
		
		NSLog("retValue=%@.", retValue);
	}
	
	func funcTest(name: String, day: String, value: Float) -> NSString
	{
		var message = " ";
		
		message = "text: \(name), today is \(day), value=\(value)"
		
		return message;
	}

}

