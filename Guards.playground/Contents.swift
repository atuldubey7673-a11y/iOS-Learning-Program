import UIKit

func divideTheNumbers(divident:Int,divisor:Int){
//    if divisor != 0 {
//        print(divident/divisor)
//    }
//
    
    guard divisor != 0 else {
        return
    }
    print(divident/divisor)
}

divideTheNumbers(divident: 100, divisor: 5)

func rateTheBook(publicationDate:Int?){
    
    if let publishedYear = publicationDate{
        print("the book has ben given five star rating and is published in \(publishedYear)")
    }
    else{
        print("the book  has not been published ")
    }
}
rateTheBook(publicationDate:1998)

func rateTheBookUsingGuards(publicationDate:Int?)
{
    
    /* the scope of constant publishing year also increased as compared to if let */
    guard let publishingYear =  publicationDate else{
        print("the book has not been published yet")
        return
    }
    print("the book has 5 star rating and is published in \(publishingYear)")
}
rateTheBookUsingGuards(publicationDate: 1892)
