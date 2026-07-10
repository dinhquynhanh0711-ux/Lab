# Lab
# Dự án
Quản lí mượn thiết bị phòng Lab (Lab Equipment Borrowing Management System) 
## Mục tiêu của dự án
 Hệ thống sẽ hỗ trợ quản lý việc mượn thiết bị trong phòng Lab một cách nhanh chóng, chính xác và hiệu quả. Hệ thống giúp sinh viên dễ dàng đăng ký mượn thiết bị, đồng thời giúp quản lý theo dõi tình trạng thiết bị, lịch sử mượn trả và hạn chế thất lạc thiết bị. 
 ## Các chức năng chính 
 ### Mượn thiết bị

*Người dùng có thể:

- Xem danh sách thiết bị còn sẵn.
- Chọn thiết bị cần mượn.
- Gửi yêu cầu mượn.
- Theo dõi trạng thái yêu cầu.

*Quản trị viên có thể:

- Xem danh sách yêu cầu mượn.
- Phê duyệt hoặc từ chối yêu cầu.
- Xác nhận trả thiết bị.
- Cập nhật tình trạng thiết bị sau khi trả.


## 1. Yêu cầu chức năng
Khi người dùng muốn sử dụng thiết bị của phòng Lab, người dùng cần đăng nhập vào hệ thống bằng tài khoản đã được cấp. Sau khi đăng nhập, người dùng có thể xem danh sách các thiết bị hiện có cùng với các thông tin như: mã thiết bị, tên thiết bị, loại thiết bị, số lượng còn lại và tình trạng sử dụng (có sẵn, đang được mượn hoặc đang bảo trì). Người dùng lựa chọn thiết bị cần sử dụng, nhập số lượng cần mượn, thời gian mượn và thời gian trả dự kiến, sau đó gửi yêu cầu mượn đến hệ thống.

Mỗi yêu cầu mượn sẽ được lưu dưới dạng một phiếu mượn, bao gồm các thông tin như: mã phiếu mượn, mã người dùng, ngày gửi yêu cầu, thời gian mượn, thời gian trả dự kiến, danh sách thiết bị được mượn, số lượng của từng thiết bị và trạng thái của yêu cầu (chờ duyệt, đã duyệt hoặc từ chối).

Sau khi nhận được yêu cầu, quản trị viên (admin) sẽ kiểm tra số lượng và tình trạng của thiết bị để quyết định phê duyệt hoặc từ chối yêu cầu mượn. Nếu yêu cầu được phê duyệt, hệ thống sẽ cập nhật số lượng thiết bị còn lại và chuyển trạng thái của phiếu mượn sang đã duyệt. Trong trường hợp thiết bị không đủ số lượng hoặc đang được sử dụng, quản trị viên có thể từ chối yêu cầu và thông báo lý do cho người dùng.

Toàn bộ thông tin về quá trình mượn thiết bị sẽ được hệ thống lưu trữ dưới dạng lịch sử mượn. Lịch sử này bao gồm thông tin người mượn, thiết bị đã mượn, thời gian mượn, số lượng thiết bị và trạng thái của từng lần mượn, giúp người quản lý dễ dàng tra cứu, thống kê và theo dõi việc sử dụng thiết bị trong phòng Lab.

Tổng hợp lại các chức năng chính như:

- Đăng nhập hệ thống.
- Xem danh sách thiết bị.
- Gửi yêu cầu mượn thiết bị.
- Phê duyệt yêu cầu mượn.
- Xác nhận trả thiết bị.
- Cập nhật tình trạng thiết bị.
- Lưu lịch sử mượn.

## 2. Yêu cầu phi chức năng

- Dữ liệu được lưu sau khi tắt ứng dụng.
- Giao diện đơn giản, dễ sử dụng, ưa nhìn.
- Hệ thống hoạt động ổn định, hạn chế lỗi.
- Đảm bảo tính chính xác của dữ liệu.



## 3. Thành viên nhóm 6

| STT | Họ và tên | 
|-----|-----------|
| 1 | Nguyễn Quỳnh Anh |
| 2 | Phạm Hà Đức |
