//
//  main.swift
//  Logic_for_calculator
//
//  Created by Данила Кардашевский on 19.10.2022.
//

import Foundation

// enum with operation types
enum Operation{
    case noAction
    case addiction
    case substraction
    case multiplication
    case devision
}

//veriables
var isRuning = true
var currentNUMBER = "0"
var firstNumber = 0.0
var secondnUMBER = 0.0
var result = " "
var currentOperations = Operation.noAction

// programm points
func runLoop(){
    while isRuning {
        start()
    }
   
    finish()
}
func start(){
    print("Do you want to make calculation?")
    print("Enter Yes or No :    ")
    let answer = readLine()
    if answer ==  "yes"{
      updateDisplay(text: "Enter firstNumber")
        let firstEnter:String = readLine()!
        currentNUMBER=firstEnter
        updateDisplay(text: "Operation type (+-/*)")
        let operationEnter:String = readLine()!
        switch operationEnter{
        case "+":
            addiction()
        case "-":
            substraction()
        case "/":
            devision()
        case "*":
            multiplication()
        default:
            break
        }
        updateDisplay(text: "Enter Second number")
        let secondEnter:String = readLine()!
        currentNUMBER=secondEnter
        makeResult()
        print(
        """
        \n
        --------------------------
        result of calculating = \(result)
        __________________________
        \n
        """
        )
        
    }else{finish()}
}
func finish(){
   print("programm has finished")
    isRuning = false
}

// functions
func updateDisplay(text:String){
    print(text)
}

func makeCalculation(operation: Operation){
    if currentOperations != .noAction{
        if currentNUMBER != ""{
            secondnUMBER = Double(currentNUMBER) ?? 0.0
            switch operation {
            case .addiction:
                result = String(firstNumber + secondnUMBER)
            case .substraction:
                result = String(firstNumber - secondnUMBER)
            case .devision:
                result = String(firstNumber / secondnUMBER)
            case .multiplication:
                result = String(firstNumber * secondnUMBER)
            default: break
            }
        }
        
    }else{
        firstNumber = Double(currentNUMBER) ?? 0.0
        currentNUMBER = ""
        updateDisplay(text: currentNUMBER)
        currentOperations = operation
    }
    print(
    """
    \n
    --------------------------
    current number = \(currentNUMBER)
    first number =\(firstNumber)
    second number = \(secondnUMBER)
    result = \(result)
    __________________________
    \n
    """
    )
    
}

func addiction(){
    makeCalculation(operation: .addiction)
}
func substraction(){
    makeCalculation(operation: .substraction)
}
func devision(){
    makeCalculation(operation: .devision)
}
func multiplication(){
    makeCalculation(operation: .multiplication)
}
func makeResult(){
    makeCalculation(operation: currentOperations)
}
func acAction(){
    currentNUMBER = ""
    firstNumber = 0.0
    secondnUMBER = 0.0
    result = " "
    currentOperations = Operation.noAction
    updateDisplay(text: currentNUMBER)
}
//programm flow
print("Calculator Patched\n")
runLoop()
