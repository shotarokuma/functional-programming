object Main{
  def main(args: Array[String]): Unit = {
    val multiplyBy: Double => Double => Double = (fac: Double) => (n: Double) => n * fac

    val square: Double => Double = (n: Double) => n * n

    val myCal: Double => Double => Double = square andThen multiplyBy

    val fac: Double = 0.1
    val nums: List[Double] = List(1, 2, 3, 4, 5, 6, 7, 8, 9)
    val transformedNums: List[Double] = nums.map(n => myCal(n)(fac))

    println(transformedNums)
  }
}