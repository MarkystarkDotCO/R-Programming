# Assignment 4 นายเมธานนท์ แก้วกระจ่าง 62050214
# สร้าง seq เพื่อกำหนดกรอบของการพล็อต
valuesOfT <- seq(-10,10,.1)

#คำสั่งplot ใช้สร้างแกน x y ขึ้น โดยให้ x กว้าง -10ถึง 10 สเต็ปทีละ .1 ส่วนแกนyตามdt
#dt คือฟังก์ชันของการแจกแจงt กำหนดความกว้างตาม valuesOfT กำหนดdfเป็น2
#จากนั้นกำหนด type เป็น l เพื่อให้พล็อตเป็นเส้น กำหนด lty ให้เป็น solid เพื่อให้เป็นเส้นทึบ
#กำหนดcol เป็น red เพื่อให้เส้นเป็นสีแดง ylim คือความยาวแกน y กำหนดให้เริ่มจาก 0 ถึง .5
# xlab ylab คือ ชื่อแกน หากไม่ใส่ระบบจะใส่ defualt ซึ่งไม่สวยงาม จึงกำหนดเองโดยให้ว่างไว้
plot(x=valuesOfT, y = dt(valuesOfT,2), type = "l", lty = "solid", col="red", ylim = c(0,.5),xlab="",ylab="")

#พล็อตทับกราฟเดิม โดยเปลี่ยนdf และ col ตามต้องการ
lines(valuesOfT,dt(valuesOfT,5),lty = "solid",col="orange")
lines(valuesOfT,dt(valuesOfT,10),lty = "solid",col="yellow")
lines(valuesOfT,dt(valuesOfT,30),lty = "solid",col="green")
lines(valuesOfT,dt(valuesOfT,80),lty = "solid",col="blue")

#พล็อตการแจกแจงปกติมาตรฐาน(Z) โดยให้เป็นเส้นสีดำเพื่อให้ดูง่ายซึ่งใช้คำสั่งเรียก การแจกแจงปกติและใส่พารามิเตอร์ให้กลายเป็นZคือmean=0 sd=1
lines(valuesOfT,dnorm(valuesOfT,mean=0,sd=1),col="black")
#legend คือการเพิ่มคำอธิบายลงในกราฟ
#topleft คือกำหนดตำแหน่งให้อยู่บน-ซ้าย title คือกำหนดtitleของคำอธิบายกราฟ
#legend คือกำหนดคำอธิบาย โดยเรียงลำดับบนลงล่างตาม vector ที่ใส่
#lty คือ การเพิ่มเส้นเข้าไปคู่กับคำอธิบาย โดยกำหนดให้เป็นเส้นทึบหรือ solid
#col คือสีของเส้น กำหนดให้ตรง กับเส้นที่พล็อตไว้
#bty คือ กรอบของคำอธิบาย กำหนดให้เป็น n เพื่อไม่ให้แสดง เพราะทำให้ภาพทับกราฟ 
legend("topleft", title = "Degree of freedom",legend =
         c("df = 2","df = 5","df = 10","df = 30","df = 80","Z"), lty =
         c("solid","solid","solid","solid","solid","solid"),col=
         c("red","orange","yellow","green","blue","black"), bty = "n")

