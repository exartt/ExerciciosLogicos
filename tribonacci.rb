=begin
fibonacci é 0, 1, 1, 2, 3, 5, 8, 13, 21...
A proposta quer: [1, 1 ,1, 3, 5, 9, 17, 31, ...], onde a 'signature' seja livre, nesse caso foi [1,1,1]
Signature = ArrayList, onde retorna os n elementos necessarios para sequencia
N = numero de quantas progressões, onde n==0 retorna []
=end

#Preciso reduzir o codigo e diminuir os loops
def tribonacci(signature,n)
  trnnc = []
  sum = 0
  case
    when n==0
      return trnnc
    when n<3
      (0..n-1).each do |i|
        trnnc.push(signature[i])
      end
      return trnnc
    when n>2
      trnnc = signature
       (0..(n-4)).each do |i|
         sum = 0
           (i..(i+2)).each do |x|
              sum = sum + trnnc[x]
           end
           trnnc.push(sum)
       end
    return trnnc
  else
    return 0
  end
end

puts tribonacci([1,1,1],10)


=begin
Testes:
describe "Basic tests" do
  it "should pass basic tests" do
    Test.assert_equals(tribonacci([1,1,1],10),[1,1,1,3,5,9,17,31,57,105])
    Test.assert_equals(tribonacci([0,0,1],10),[0,0,1,1,2,4,7,13,24,44])
    Test.assert_equals(tribonacci([0,1,1],10),[0,1,1,2,4,7,13,24,44,81])
    Test.assert_equals(tribonacci([1,0,0],10),[1,0,0,1,1,2,4,7,13,24])
    Test.assert_equals(tribonacci([0,0,0],10),[0,0,0,0,0,0,0,0,0,0])
    Test.assert_equals(tribonacci([1,2,3],10),[1,2,3,6,11,20,37,68,125,230])
    Test.assert_equals(tribonacci([3,2,1],10),[3,2,1,6,9,16,31,56,103,190])
    Test.assert_equals(tribonacci([1,1,1],1),[1])
    Test.assert_equals(tribonacci([300,200,100],0),[])
    Test.assert_equals(tribonacci([0.5,0.5,0.5],30),[0.5,0.5,0.5,1.5,2.5,4.5,8.5,15.5,28.5,52.5,96.5,177.5,326.5,600.5,1104.5,2031.5,3736.5,6872.5,12640.5,23249.5,42762.5,78652.5,144664.5,266079.5,489396.5,900140.5,1655616.5,3045153.5,5600910.5,10301680.5])
  end
end
=end