#สร้าง vector เก็บค่าที่ต้องการหา mode
data_1 <- c(1, 2, 3, 4, 5, 5, 5) 
data_2 <- c(1, 2, 3, 4, 4, 5, 5)
data_3 <- c(2, 3, 3, 4, 4, 5, 5)
data_4 <- c(3, 4, 5, 6, 7, 8, 9)

#สร้าง method สำหรับนับตัวที่ซ้ำกัน
Freq_Modes <- function(x) {
  u <- unique(x)               #สร้าง vector โดยใช้ unique เพื่อนำตัวเลขที่ซ้ำกันออก เพราะเวลา return เราจะ return ออกไปค่าเดียว เช่นเมื่อ พบว่า 3 มีมากที่สุด ก็ return แค่3ออกไป
  tab <- tabulate(match(x, u)) #นับตัวที่ซ้ำกัน ใน vector x โดยจจะอ้างอิงจาก vector u
  u[tab == max(tab)]            #return ค่าที่อยู่ใน u โดยจะ return ตัวที่มี ความถี่มากที่สุด
  #Problem : ติดปัญหาเมื่อมีความถี่เท่ากันหลายตัวจะ return ออกมาทั้งหมด จะใช้ MyMODE เพื่อแก้ปัญหานี้}
  
 #สร้าง method สำหรับเลือกตัวที่ mode ไม่เกิน 2 ตัว
  MyMode <- function(v){
    x <- Freq_Modes(v)      # assign vector ที่ return มากจาก Freq_mode เข้าไปใน x      
    if(length(x)>2){        #ถ้า vector x มีสมาชิกเกิน 2 จะไม่มีmode 
      cat("no mode ")
    }
    else{
      cat("mode = ",x)     #ถ้าไม่ติดปัญหาใดๆ จะ pritn vector ออกมา
    }
  }
  
  MyMode(data_1)
  MyMode(data_2)
  MyMode(data_3)
  MyMode(data_4)
  
  