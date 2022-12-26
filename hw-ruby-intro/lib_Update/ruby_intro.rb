# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0 #ตัวแปรในการรเก็บค่าบวก
  arr.each do |num| #ไล่ค่าที่เก็บไว้ใน sum
    total = total + num #ทำการบวกค่าเพิ่มลงในตัวแปร
  end #ประกาศจบการทำงาน
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort! #เรียงลำดับค่าใหม่แบบบันทึกค่า
  x = arr.length #เก็บจำนวนของตัวแปรไว้ที่ x
  if x > 1 #สร้างเงื่อนไข
    sum = arr[x-1] + arr[x-2] #ให้เก็บผลรวมของตัวเลขในตำแหน่งท้ายสุด/มีค่ามาก
  elsif x == 1 #ในกรณีที่มีตัวแปรเดียว
    sum = arr #ให้ค่าเท่ากับเริ่มต้น
  else #หากตัวแปรเป็น0หรือ''
    return 0 #คืนค่า0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  x = arr.length
  if x <= 1 #ตรวจสอบค่าตัวแปรเดียวหรือน้อยกว่า 1
      return false
      #puts "False"
  else
      for a in 1..x-1 #loopตัวแปรเทียบค่าตำแหน่งแรก
          for b in 0..x-1 #loopตัวแปรเทียบค่าตำแหน่งที่สอง
              if arr[a]+arr[b] == n
                  break
              end
          end
      end
    if arr[a]+arr[b] == n #ตรวจสอบเงื่อนไขเป็นจริง
        #puts "T"
        return true
    elsif arr[a]+arr[b] != n #ตรวจสอบเงื่อนไขเป็นเท็จ
        #puts "F"
        return false
    end
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  puts "hello #{name}"; #แสดงค่าอักขระที่เก็บไว้ในตัวแปร
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase! #ทำให้อักษรเป็นตัวพิมพ์เล็กทั้งหมด
  if s.match(/[a-z]/) #ตรวจสอบว่าในตัวแปรsเป็นaถึงzหรือไม่
    if s.match(/[aeiou]/) #เทียบค่าสระ
        print s , " is a consonant"
    else #ให้ตัวอักษรที่เหลือเป็นพยัญชนะ
        print s , " is not a consonant"
    end
  else #หากไม่ใช่ตัวหนังสือ
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if  /^[01]*(00)$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError@isbn.empty? || @price <= 0 
    self.isbn=isbn
    self.price=price
  end
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
