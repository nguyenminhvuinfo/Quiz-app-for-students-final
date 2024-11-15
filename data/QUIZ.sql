CREATE DATABASE QUIZ
GO
USE [QUIZ]
GO
/****** Object:  Table [dbo].[EXAM]    Script Date: 11/16/2024 1:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAM](
	[EXAM_ID] [nvarchar](100) NOT NULL,
	[_NAME] [nvarchar](100) NULL,
	[_TYPE] [nvarchar](100) NULL,
	[QUANITY] [int] NULL,
	[TIME_TEST] [int] NULL,
 CONSTRAINT [EXAM_EXAM_ID_PK] PRIMARY KEY CLUSTERED 
(
	[EXAM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONAL_INFORMATION]    Script Date: 11/16/2024 1:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONAL_INFORMATION](
	[ACCOUNT_ID] [nvarchar](100) NOT NULL,
	[FULLNAME] [nvarchar](100) NULL,
	[CLASS] [nvarchar](11) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[_ADDRESS] [nvarchar](100) NULL,
	[DATE_OF_BIRTH] [datetime] NULL,
 CONSTRAINT [PERSONAL_INFORMATION_ACCOUNT_ID_PK] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUESTION]    Script Date: 11/16/2024 1:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUESTION](
	[EXAM_ID] [nvarchar](100) NOT NULL,
	[CONTENT] [nvarchar](100) NOT NULL,
	[OPTION_A] [nvarchar](100) NULL,
	[OPTION_B] [nvarchar](100) NULL,
	[OPTION_C] [nvarchar](100) NULL,
	[OPTION_D] [nvarchar](100) NULL,
	[CORRECT_ANSWER] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EXAM_ID] ASC,
	[CONTENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 11/16/2024 1:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[ACCOUNT_ID] [nvarchar](100) NOT NULL,
	[USERNAME] [nvarchar](100) NOT NULL,
	[PASS_WORD] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT_SCORE]    Script Date: 11/16/2024 1:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_SCORE](
	[ACCOUNT_ID] [nvarchar](100) NOT NULL,
	[EXAM_ID] [nvarchar](100) NOT NULL,
	[TOTAL] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC,
	[EXAM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EXAM] ([EXAM_ID], [_NAME], [_TYPE], [QUANITY], [TIME_TEST]) VALUES (N'exam1', N'Kiểm tra thường xuyên lần 1', N'Kiểm tra thường xuyên', 25, 15)
INSERT [dbo].[EXAM] ([EXAM_ID], [_NAME], [_TYPE], [QUANITY], [TIME_TEST]) VALUES (N'exam2', N'Kiểm tra giữa kì 1', N'Kiểm tra giữa kì', 50, 45)
INSERT [dbo].[EXAM] ([EXAM_ID], [_NAME], [_TYPE], [QUANITY], [TIME_TEST]) VALUES (N'exam3', N'Kiểm tra cuối kì 1', N'Kiểm tra cuối kì', 50, 45)
INSERT [dbo].[EXAM] ([EXAM_ID], [_NAME], [_TYPE], [QUANITY], [TIME_TEST]) VALUES (N'exam4', N'Kiểm tra thường xuyên lần 2', N'Kiểm tra thường xuyên', 25, 15)
INSERT [dbo].[EXAM] ([EXAM_ID], [_NAME], [_TYPE], [QUANITY], [TIME_TEST]) VALUES (N'exam5', N'Kiểm tra giữa kì 2', N'Kiểm tra giữa kì', 50, 45)
INSERT [dbo].[EXAM] ([EXAM_ID], [_NAME], [_TYPE], [QUANITY], [TIME_TEST]) VALUES (N'exam6', N'Kiểm tra cuối kì 2', N'Kiểm tra cuối kì', 50, 45)
GO
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu1', N'Lê Huỳnh Đức', N'8A1', N'huynhduc1210@gmail.com', N'241 Nguyễn Văn Cừ, Phường 4, Quận 5, TP.HCM', CAST(N'2011-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu10', N'Trần Thị Hồng', N'8A2', N'thihong101995@gmail.com', N'456 Đường Điện Biên Phủ, Quận Bình Thạnh, TP. Hồ Chí Minh', CAST(N'2011-12-10T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu2', N'Nguyễn Trường Sơn', N'8A1', N'truongson2109@gmail.com', N'709 Tô Ngọc Vân, Tam Binh, Thủ Đức, TP.HCM', CAST(N'2011-09-21T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu3', N'Đỗ Thảo Mai', N'8A1', N'thaomai0112@gmail.com', N'628B Hà Huy Giáp, Phường 10, Quận 12, TP.HCM', CAST(N'2001-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu4', N'Dương Lê Việt Dũng', N'8A1', N'vietdung1208@gmail.com', N'451/22 Hai Bà Trưng, Phường 8, Quận 3, TP.HCM', CAST(N'2011-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu5', N'Trương An Cơ', N'8A1', N'anco0808@gmail.com', N'44 Xô Viết Nghệ Tĩnh, Phường 19, Bình Thạnh, TP.HCM', CAST(N'2011-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu6', N'Nguyễn Thị Mai', N'8A2', N'thimai151975@gmail.com', N'123 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', CAST(N'2011-11-15T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu7', N'Phan Thanh Hùng', N'8A2', N'thanhhung201982@gmail.com', N'456 Đường Lê Lợi, Quận 1, TP. Hồ Chí Minh', CAST(N'2011-09-20T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu8', N'Bùi Văn Đức', N'8A2', N'vanduc111990@gmail.com', N'789 Đường Phạm Ngũ Lão, Quận 3, TP. Hồ Chí Minh', CAST(N'2011-04-11T00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONAL_INFORMATION] ([ACCOUNT_ID], [FULLNAME], [CLASS], [EMAIL], [_ADDRESS], [DATE_OF_BIRTH]) VALUES (N'stu9', N'Đỗ Minh Khôi', N'8A2', N'minhkhoi031988@gmail.com', N'123 Đường Trần Hưng Đạo, Quận 5, TP. Hồ Chí Minh', CAST(N'2011-06-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Bộ nhớ RAM là gì?', N'Bộ nhớ chỉ đọc', N'Bộ nhớ tạm thời', N'Bộ nhớ ngoài', N'Bộ nhớ cố định', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Chương trình nào dùng để vẽ hình?', N'Paint', N'Excel', N'Word', N'Access', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'CPU viết tắt của từ gì?', N'Central Processing Unit', N'Computer Personal Unit', N'Central Personal Unit', N'Computer Processing Unit', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Hàm nào dùng để tính tổng trong Excel?', N'SUM', N'AVERAGE', N'COUNT', N'MIN', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Hệ điều hành nào của Microsoft?', N'Linux', N'Ubuntu', N'Windows', N'Android', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Hệ điều hành phổ biến nhất hiện nay là?', N'Linux', N'Windows', N'MacOS', N'Android', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Internet là gì?', N'Mạng máy tính toàn cầu', N'Mạng nội bộ', N'Hệ điều hành', N'Phần mềm', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Máy tính cá nhân đầu tiên ra đời vào năm nào?', N'1975', N'1981', N'1969', N'1985', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Một byte bằng bao nhiêu bit?', N'4', N'8', N'16', N'32', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần cứng máy tính gồm những gì?', N'CPU, RAM', N'Word, Excel', N'Mouse, Keyboard', N'Cả A và C', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mềm nào để tạo bài thuyết trình?', N'Excel', N'Word', N'PowerPoint', N'Paint', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mềm nào để tạo bảng tính?', N'Excel', N'Word', N'Paint', N'Photoshop', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mềm nào dùng để chỉnh sửa ảnh?', N'Word', N'Excel', N'Photoshop', N'PowerPoint', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mềm nào dùng để nghe nhạc?', N'VLC', N'Excel', N'Word', N'Paint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mềm nào dùng để quản lý cơ sở dữ liệu?', N'Access', N'Word', N'Excel', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mềm nào dùng để soạn thảo văn bản?', N'Excel', N'Word', N'PowerPoint', N'Access', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mềm nào là hệ điều hành mã nguồn mở?', N'Windows', N'MacOS', N'Linux', N'iOS', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phần mở rộng của tập tin Excel là gì?', N'.docx', N'.pptx', N'.xlsx', N'.txt', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phím F1 trong các chương trình dùng để?', N'Mở trợ giúp', N'Lưu file', N'Đóng chương trình', N'In tài liệu', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phím tắt để đóng chương trình đang hoạt động là?', N'Alt + F4', N'Ctrl + C', N'Ctrl + V', N'Alt + Tab', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phím tắt để in tài liệu là gì?', N'Ctrl + P', N'Ctrl + C', N'Ctrl + S', N'Ctrl + V', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Phím tắt để lưu tài liệu là gì?', N'Ctrl + C', N'Ctrl + S', N'Ctrl + V', N'Ctrl + X', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'RAM viết tắt của từ gì?', N'Random Access Memory', N'Read Access Memory', N'Rapid Access Memory', N'Read And Memory', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Tập tin có phần mở rộng .pptx là của phần mềm nào?', N'Excel', N'Word', N'PowerPoint', N'Access', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam1', N'Tập tin nào có phần mở rộng .txt?', N'Văn bản', N'Ảnh', N'Video', N'Âm thanh', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Biểu đồ nào thích hợp để hiển thị sự thay đổi theo thời gian?', N'Biểu đồ cột', N'Biểu đồ đường', N'Biểu đồ tròn', N'Biểu đồ thanh', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Chức năng của phím F2 trong Excel là gì?', N'Sao chép', N'Sửa nội dung ô', N'Lưu tài liệu', N'Tạo bảng mới', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Để tạo biểu đồ trong Excel, bạn vào tab nào?', N'Insert', N'Home', N'Data', N'Formulas', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Định dạng ngày tháng trong Excel là gì?', N'yyyy-mm-dd', N'mm/dd/yyyy', N'yyyy/mm/dd', N'Tất cả đều đúng', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Excel là phần mềm gì?', N'Phần mềm soạn thảo văn bản', N'Phần mềm trình chiếu', N'Phần mềm xử lý bảng tính', N'Phần mềm chỉnh sửa ảnh', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm AVERAGE dùng để làm gì?', N'Tính tổng', N'Tính trung bình', N'Đếm số ô', N'Tìm giá trị nhỏ nhất', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm CONCATENATE trong Excel dùng để làm gì?', N'Tính tổng các ô', N'Nối chuỗi văn bản', N'Chuyển đổi dữ liệu', N'Tìm kiếm giá trị', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm COUNT dùng để làm gì?', N'Đếm các ô có giá trị', N'Đếm các ô trống', N'Tìm giá trị nhỏ nhất', N'Tìm giá trị lớn nhất', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm IF trong Excel có chức năng gì?', N'Kiểm tra điều kiện', N'Tìm kiếm giá trị', N'Tính tổng', N'Tính trung bình', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm IFERROR trong Excel dùng để làm gì?', N'Kiểm tra điều kiện lỗi', N'Tính tổng giá trị lỗi', N'Tìm kiếm giá trị lỗi', N'Tính giá trị lỗi', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm INDEX trong Excel dùng để làm gì?', N'Tìm kiếm giá trị', N'Tính tổng các giá trị', N'Lấy giá trị từ một vị trí xác định', N'Tạo bảng mới', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm LEFT trong Excel dùng để làm gì?', N'Lấy ký tự bên phải của chuỗi', N'Lấy ký tự bên trái của chuỗi', N'Tính tổng chuỗi', N'Chuyển chuỗi thành chữ hoa', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm MAX dùng để làm gì?', N'Tìm giá trị nhỏ nhất', N'Tìm giá trị lớn nhất', N'Tính tổng', N'Tính trung bình', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm MIN dùng để làm gì trong Excel?', N'Tìm giá trị lớn nhất', N'Tìm giá trị nhỏ nhất', N'Tính tổng', N'Tính trung bình', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm nào dùng để chuyển đổi văn bản thành chữ hoa trong Excel?', N'LOWER', N'UPPER', N'TRIM', N'PROPER', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm nào dùng để lấy ký tự cuối cùng của một chuỗi trong Excel?', N'RIGHT', N'LEFT', N'MID', N'TRIM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm SUBSTITUTE trong Excel dùng để làm gì?', N'Tìm kiếm và thay thế văn bản', N'Chuyển đổi văn bản', N'Tìm giá trị tối đa', N'Tạo bảng mới', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm SUM trong Excel dùng để làm gì?', N'Tính trung bình', N'Đếm số ô', N'Tính tổng', N'Tìm giá trị lớn nhất', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Hàm VLOOKUP trong Excel dùng để làm gì?', N'Tìm kiếm giá trị theo hàng', N'Tìm kiếm giá trị theo cột', N'Kiểm tra điều kiện', N'Tính tổng các giá trị', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'HTML là gì?', N'Một ngôn ngữ lập trình', N'Một hệ điều hành', N'Một ngôn ngữ đánh dấu', N'Một phần mềm', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Kết quả của hàm MID("Hello", 2, 3) là gì?', N'Hel', N'ell', N'Hello', N'lo', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Khi muốn nhập dữ liệu ngày tháng hiện tại vào ô trong Excel, bạn dùng hàm nào?', N'TODAY()', N'NOW()', N'DATE()', N'TIME()', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phần mềm nào sau đây là phần mềm trình chiếu?', N'Excel', N'Word', N'PowerPoint', N'Notepad', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phần mở rộng của file Excel là gì?', N'.txt', N'.xlsx', N'.docx', N'.pptx', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để ẩn một cột trong Excel là gì?', N'Ctrl + 0', N'Ctrl + Shift + 0', N'Ctrl + H', N'Ctrl + Shift + H', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để chèn biểu đồ trong Excel là gì?', N'Alt + F1', N'Ctrl + D', N'F11', N'Ctrl + Shift + C', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để chèn một hàng mới trong Excel là gì?', N'Ctrl + H', N'Ctrl + Shift + +', N'Ctrl + N', N'Ctrl + Enter', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để đóng cửa sổ hiện tại là gì?', N'Alt + F4', N'Ctrl + F4', N'Ctrl + W', N'Alt + W', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để in tài liệu là gì?', N'Ctrl + I', N'Ctrl + P', N'Ctrl + O', N'Ctrl + T', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để lưu nhanh tài liệu trong Excel là gì?', N'F12', N'Ctrl + S', N'Alt + F4', N'Ctrl + Shift + S', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để lưu tài liệu là gì?', N'Ctrl + L', N'Ctrl + S', N'Ctrl + P', N'Ctrl + D', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để mở hộp thoại Find and Replace là gì?', N'Ctrl + F', N'Ctrl + H', N'Ctrl + R', N'Ctrl + Shift + F', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để mở một tài liệu mới là gì?', N'Ctrl + N', N'Ctrl + O', N'Ctrl + T', N'Ctrl + E', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để sao chép trong Excel là gì?', N'Ctrl + C', N'Ctrl + X', N'Ctrl + V', N'Ctrl + A', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để thêm một sheet mới trong Excel là gì?', N'Ctrl + T', N'Ctrl + Shift + N', N'Ctrl + Shift + T', N'Shift + F11', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Phím tắt để thực hiện lệnh Undo là gì?', N'Ctrl + Z', N'Ctrl + Y', N'Ctrl + U', N'Ctrl + R', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Thành phần nào sau đây không có trong giao diện Excel?', N'Thanh Ribbon', N'Thanh công thức', N'Chế độ xem dàn bài', N'Thanh trạng thái', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trên thanh công cụ Ribbon, nhóm lệnh nào chứa các chức năng định dạng văn bản?', N'Home', N'Insert', N'Data', N'Review', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trên thanh công cụ Ribbon, nhóm lệnh nào chứa các hàm tính toán trong Excel?', N'Home', N'Insert', N'Formulas', N'Review', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trình duyệt nào sau đây không phải là trình duyệt web?', N'Chrome', N'Firefox', N'Internet Explorer', N'Microsoft Word', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, biểu đồ nào dùng để hiển thị tỷ lệ phần trăm?', N'Biểu đồ cột', N'Biểu đồ đường', N'Biểu đồ tròn', N'Biểu đồ thanh', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, công cụ nào dùng để lọc dữ liệu?', N'Filter', N'Sort', N'Paste', N'Split', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, công cụ nào dùng để sắp xếp dữ liệu theo thứ tự tăng dần?', N'Filter', N'Sort Ascending', N'Sort Descending', N'Find', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, công cụ nào dùng để tách dữ liệu từ một cột thành nhiều cột?', N'Filter', N'Text to Columns', N'Sort', N'Data Validation', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, hàm nào dùng để đếm các ô không rỗng?', N'COUNTA', N'COUNTBLANK', N'COUNTIF', N'SUM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, hàm nào dùng để tính tổng các giá trị trong một vùng ô theo điều kiện?', N'SUMIF', N'COUNTIF', N'AVERAGEIF', N'MAX', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, hàm nào dùng để xóa các khoảng trắng trong một chuỗi văn bản?', N'TRIM', N'REPLACE', N'SUBSTITUTE', N'TEXT', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, phím tắt để xóa nội dung ô là gì?', N'Delete', N'Backspace', N'Ctrl + X', N'Alt + X', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trong Excel, phím tắt nào giúp chuyển đổi giữa các worksheet?', N'Ctrl + Tab', N'Alt + Tab', N'Ctrl + PgDn / Ctrl + PgUp', N'Alt + Enter', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam2', N'Trường hợp nào sau đây là một địa chỉ ô tuyệt đối trong Excel?', N'A1', N'$A$1', N'A$1', N'$A1', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Chức năng chính của CPU là gì?', N'Xử lý dữ liệu', N'Lưu trữ dữ liệu', N'Cung cấp nguồn', N'Kết nối Internet', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Chức năng chính của hệ điều hành là gì?', N'Quản lý phần cứng', N'Chạy các ứng dụng', N'Cung cấp giao diện người dùng', N'Tất cả các ý trên', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Chức năng nào của máy tính dùng để giải quyết các bài toán?', N'RAM', N'CPU', N'Ổ cứng', N'ROM', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Chức năng nào giúp tăng tính bảo mật cho dữ liệu?', N'Encryption', N'Compression', N'Formatting', N'Deleting', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Công cụ nào dùng để định dạng chữ in đậm trong Word?', N'Bold', N'Italic', N'Underline', N'Highlight', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Công cụ nào dùng để soạn thảo văn bản?', N'Word', N'Excel', N'Paint', N'Photoshop', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Công cụ nào dùng để tạo hiệu ứng cho ảnh?', N'Photoshop', N'Excel', N'Word', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Công dụng chính của các công cụ tính toán là gì?', N'Lưu trữ dữ liệu', N'Thực hiện tính toán', N'Truy cập Internet', N'Tất cả các ý trên', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Công nghệ nào hỗ trợ tìm kiếm thông tin hiệu quả?', N'Internet', N'USB', N'Bluetooth', N'CD', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là công cụ hỗ trợ tìm kiếm thông tin trên Internet?', N'Google', N'USB', N'RAM', N'ROM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là đơn vị đo tốc độ xử lý của CPU?', N'GHz', N'MB', N'GB', N'TB', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là một bộ điều khiển trung tâm của máy tính?', N'RAM', N'CPU', N'Ổ cứng', N'ROM', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là một công cụ xử lý văn bản phổ biến?', N'Excel', N'Word', N'Photoshop', N'PowerPoint', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là một loại bộ nhớ trong máy tính?', N'RAM', N'USB', N'Đĩa cứng', N'CD', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là một loại mạng xã hội phổ biến hiện nay?', N'Google', N'Facebook', N'Microsoft', N'Windows', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là một phần mềm diệt virus phổ biến?', N'Norton', N'Excel', N'Photoshop', N'Word', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là một phương thức kết nối không dây phổ biến?', N'Bluetooth', N'USB', N'HDMI', N'VGA', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là phần mềm chỉnh sửa hình ảnh miễn phí?', N'GIMP', N'Excel', N'Word', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là phần mềm diệt virus?', N'Norton', N'Excel', N'Photoshop', N'Word', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đâu là phần mềm tạo bảng tính?', N'Excel', N'Word', N'Photoshop', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Để lưu trữ văn bản lâu dài, ta dùng thiết bị nào?', N'RAM', N'USB', N'CD', N'CPU', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Để thêm trang mới trong Word, ta dùng lệnh nào?', N'Insert', N'Home', N'Page Layout', N'References', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Đơn vị đo dung lượng lưu trữ là gì?', N'Byte', N'Hertz', N'Watt', N'Ohm', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Hệ điều hành nào sau đây là mã nguồn mở?', N'Windows', N'MacOS', N'Linux', N'iOS', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Mạng LAN là viết tắt của từ gì?', N'Local Area Network', N'Long Area Network', N'Large Area Network', N'Local Access Network', N'A')
GO
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây dùng để trình chiếu?', N'Word', N'Excel', N'PowerPoint', N'Photoshop', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây hỗ trợ chỉnh sửa ảnh?', N'Paint', N'Excel', N'Word', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây hỗ trợ làm việc với biểu đồ?', N'Excel', N'Word', N'Photoshop', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây hỗ trợ soạn thảo trình chiếu?', N'Word', N'Excel', N'PowerPoint', N'Photoshop', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây không phải là phần mềm văn phòng?', N'Excel', N'Photoshop', N'Word', N'PowerPoint', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây là hệ điều hành?', N'Windows', N'Photoshop', N'Word', N'Excel', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây là phần mềm chỉnh sửa hình ảnh?', N'Microsoft Word', N'Photoshop', N'Excel', N'PowerPoint', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây là ứng dụng văn phòng?', N'Word', N'Photoshop', N'Excel', N'PowerPoint', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Phần mềm nào sau đây thường dùng để làm việc với bảng tính?', N'Excel', N'Photoshop', N'Word', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Thiết bị nào dùng để lưu trữ dữ liệu lâu dài?', N'RAM', N'Ổ cứng', N'CPU', N'Màn hình', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Thiết bị nào dùng để lưu trữ dữ liệu tạm thời?', N'RAM', N'USB', N'CD', N'ROM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Thiết bị nào là thiết bị đầu ra?', N'Màn hình', N'Bàn phím', N'Chuột', N'CPU', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Thiết bị nào là thiết bị đầu vào?', N'Chuột', N'Màn hình', N'Máy in', N'Loa', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Thiết bị nào sau đây dùng để nhập dữ liệu?', N'Chuột', N'Loa', N'Màn hình', N'Ổ cứng', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Tổ chức nào được tạo ra để tiêu chuẩn hóa Internet?', N'ISO', N'ITU', N'IETF', N'W3C', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong Excel, hàm nào dùng để tìm giá trị nhỏ nhất?', N'MIN', N'MAX', N'SUM', N'AVERAGE', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong Excel, hàm nào được dùng để tính tổng?', N'SUM', N'AVERAGE', N'MIN', N'MAX', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong mạng Internet, www là viết tắt của từ gì?', N'World Wide Web', N'Wide World Web', N'Web Wide World', N'World Web Wide', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong môi trường kỹ thuật số, quy tắc nào quan trọng nhất?', N'Tôn trọng', N'Chia sẻ', N'Cạnh tranh', N'Phân biệt đối xử', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong môi trường số, quy tắc nào sau đây quan trọng nhất?', N'Tôn trọng', N'Trung thực', N'Lịch sự', N'Tất cả các ý trên', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong Word, chức năng nào để tạo chân trang?', N'Header', N'Footer', N'Paragraph', N'Insert', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong Word, công cụ nào để tạo danh sách có số thứ tự?', N'Numbering', N'Bullets', N'Table', N'Line', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong Word, để tạo danh sách liệt kê ta dùng công cụ nào?', N'Bullet', N'Table', N'Insert', N'Format', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam3', N'Trong Word, để thay đổi kích thước ảnh ta dùng công cụ nào?', N'Crop', N'Resize', N'Cut', N'Copy', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Chức năng chính của hệ điều hành là gì?', N'Quản lý phần cứng', N'Chạy các ứng dụng', N'Cung cấp giao diện người dùng', N'Tất cả các ý trên', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Chức năng nào của máy tính dùng để giải quyết các bài toán?', N'RAM', N'CPU', N'Ổ cứng', N'ROM', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Công cụ nào dùng để định dạng chữ in đậm trong Word?', N'Bold', N'Italic', N'Underline', N'Highlight', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Đâu là đơn vị đo tốc độ xử lý của CPU?', N'GHz', N'MB', N'GB', N'TB', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Đâu là một bộ điều khiển trung tâm của máy tính?', N'RAM', N'CPU', N'Ổ cứng', N'ROM', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Đâu là một loại bộ nhớ trong máy tính?', N'RAM', N'USB', N'Đĩa cứng', N'CD', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Đâu là một phần mềm diệt virus phổ biến?', N'Norton', N'Excel', N'Photoshop', N'Word', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Đâu là phần mềm chỉnh sửa hình ảnh miễn phí?', N'GIMP', N'Excel', N'Word', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Để lưu trữ văn bản lâu dài, ta dùng thiết bị nào?', N'RAM', N'USB', N'CD', N'CPU', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Để thêm trang mới trong Word, ta dùng lệnh nào?', N'Insert', N'Home', N'Page Layout', N'References', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Đơn vị đo dung lượng lưu trữ là gì?', N'Byte', N'Hertz', N'Watt', N'Ohm', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Hệ điều hành nào sau đây là mã nguồn mở?', N'Windows', N'MacOS', N'Linux', N'iOS', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Phần mềm nào sau đây dùng để trình chiếu?', N'Word', N'Excel', N'PowerPoint', N'Photoshop', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Phần mềm nào sau đây hỗ trợ soạn thảo trình chiếu?', N'Word', N'Excel', N'PowerPoint', N'Photoshop', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Phần mềm nào sau đây không phải là phần mềm văn phòng?', N'Excel', N'Photoshop', N'Word', N'PowerPoint', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Phần mềm nào sau đây là ứng dụng văn phòng?', N'Word', N'Photoshop', N'Excel', N'PowerPoint', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Thiết bị nào dùng để lưu trữ dữ liệu lâu dài?', N'RAM', N'Ổ cứng', N'CPU', N'Màn hình', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Thiết bị nào dùng để lưu trữ dữ liệu tạm thời?', N'RAM', N'USB', N'CD', N'ROM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Thiết bị nào là thiết bị đầu ra?', N'Màn hình', N'Bàn phím', N'Chuột', N'CPU', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Thiết bị nào là thiết bị đầu vào?', N'Chuột', N'Màn hình', N'Máy in', N'Loa', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Trong Excel, hàm nào dùng để tìm giá trị nhỏ nhất?', N'MIN', N'MAX', N'SUM', N'AVERAGE', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Trong Excel, hàm nào dùng để tính tổng?', N'SUM', N'AVERAGE', N'MIN', N'MAX', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Trong Word, chức năng nào để tạo chân trang?', N'Header', N'Footer', N'Paragraph', N'Insert', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Trong Word, công cụ nào để tạo danh sách có số thứ tự?', N'Numbering', N'Bullets', N'Table', N'Line', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam4', N'Trong Word, để thay đổi kích thước ảnh ta dùng công cụ nào?', N'Crop', N'Resize', N'Cut', N'Copy', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Chức năng chính của hệ điều hành là gì?', N'Quản lý phần cứng', N'Chạy các ứng dụng', N'Cung cấp giao diện người dùng', N'Tất cả các ý trên', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Chức năng nào của máy tính dùng để giải quyết các bài toán?', N'RAM', N'CPU', N'Ổ cứng', N'ROM', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Công cụ nào dùng để định dạng chữ in đậm trong Word?', N'Bold', N'Italic', N'Underline', N'Highlight', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Công cụ nào sau đây giúp bạn lọc dữ liệu trong Excel?', N'Filter', N'Sort', N'Chart', N'Pivot Table', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là chức năng chính của phần mềm Microsoft Word?', N'Soạn thảo văn bản', N'Tính toán dữ liệu', N'Quản lý file', N'Chỉnh sửa ảnh', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là đơn vị đo tốc độ xử lý của CPU?', N'GHz', N'MB', N'GB', N'TB', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là đơn vị nhỏ nhất để đo dung lượng?', N'Bit', N'Byte', N'Kilobyte', N'Megabyte', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là một bộ điều khiển trung tâm của máy tính?', N'RAM', N'CPU', N'Ổ cứng', N'ROM', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là một công cụ trình duyệt web phổ biến?', N'Chrome', N'Photoshop', N'Excel', N'Word', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là một loại bộ nhớ trong máy tính?', N'RAM', N'USB', N'Đĩa cứng', N'CD', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là một phần mềm diệt virus phổ biến?', N'Norton', N'Excel', N'Photoshop', N'Word', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là phần mềm chỉnh sửa hình ảnh miễn phí?', N'GIMP', N'Excel', N'Word', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đâu là phím tắt để lưu tài liệu trong Word?', N'Ctrl + S', N'Ctrl + A', N'Ctrl + C', N'Ctrl + V', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Để chuyển sang trang mới trong Word, bạn sử dụng...', N'Ctrl + Enter', N'Shift + Enter', N'Alt + Enter', N'Tab', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Để lưu trữ văn bản lâu dài, ta dùng thiết bị nào?', N'RAM', N'USB', N'CD', N'CPU', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Để sao chép nội dung văn bản ta sử dụng tổ hợp phím...', N'Ctrl + C', N'Ctrl + V', N'Ctrl + X', N'Ctrl + Z', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Để thêm trang mới trong Word, ta dùng lệnh nào?', N'Insert', N'Home', N'Page Layout', N'References', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Đơn vị đo dung lượng lưu trữ là gì?', N'Byte', N'Hertz', N'Watt', N'Ohm', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Hệ điều hành nào sau đây là mã nguồn mở?', N'Windows', N'MacOS', N'Linux', N'iOS', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Hệ điều hành phổ biến trên các thiết bị di động là gì??', N'Linux', N'Excel', N'Photoshop', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Khi trình bày văn bản, màu sắc và kiểu chữ thuộc về yếu tố nào?', N'Định dạng', N'Nội dung', N'Sắp xếp', N'Chuyển động', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Mạng máy tính giúp kết nối nhiều máy tính với nhau thông qua...', N'Internet', N'Intranet', N'LAN', N'Tất cả các ý trên', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Ổ cứng dùng để làm gì?', N'Lưu trữ dữ liệu lâu dài', N'Tính toán dữ liệu', N'Chỉnh sửa văn bản', N'Tăng tốc độ xử lý', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Phần mềm nào sau đây dùng để trình chiếu?', N'Word', N'Excel', N'PowerPoint', N'Photoshop', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Phần mềm nào sau đây được sử dụng để quản lý thư điện tử?', N'Outlook', N'Word', N'Excel', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Phần mềm nào sau đây hỗ trợ soạn thảo trình chiếu?', N'Word', N'Excel', N'PowerPoint', N'Photoshop', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Phần mềm nào sau đây không phải là phần mềm văn phòng?', N'Excel', N'Photoshop', N'Word', N'PowerPoint', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Phần mềm nào sau đây là hệ điều hành?', N'Windows', N'Photoshop', N'Word', N'Excel', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Phần mềm nào sau đây là phần mềm chỉnh sửa hình ảnh?', N'Photoshop', N'Word', N'Excel', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Phần mềm nào sau đây là ứng dụng văn phòng?', N'Word', N'Photoshop', N'Excel', N'PowerPoint', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'RAM là viết tắt của...', N'Random Access Memory', N'Read Access Memory', N'Run Access Memory', N'Random Action Memory', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Tệp có phần mở rộng .pptx thường mở bằng phần mềm nào?', N'PowerPoint', N'Word', N'Excel', N'Paint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào dùng để lưu trữ dữ liệu lâu dài?', N'RAM', N'Ổ cứng', N'CPU', N'Màn hình', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào dùng để lưu trữ dữ liệu tạm thời?', N'RAM', N'USB', N'CD', N'ROM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào được sử dụng để chụp ảnh màn hình?', N'Print Screen', N'Alt', N'Shift', N'Ctrl', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào không thuộc thiết bị ngoại vi?', N'CPU', N'Màn hình', N'Chuột', N'Máy in', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào là thiết bị đầu ra?', N'Màn hình', N'Bàn phím', N'Chuột', N'CPU', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào là thiết bị đầu vào?', N'Chuột', N'Màn hình', N'Máy in', N'Loa', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào là thiết bị lưu trữ bên ngoài?', N'USB', N'RAM', N'CPU', N'Màn hình', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Thiết bị nào sau đây là thiết bị đầu ra?', N'Màn hình', N'Bàn phím', N'Chuột', N'Máy quét', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Excel, công thức nào dùng để tính trung bình cộng?', N'AVERAGE', N'SUM', N'MAX', N'MIN', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Excel, hàm nào dùng để tìm giá trị nhỏ nhất?', N'MIN', N'MAX', N'SUM', N'AVERAGE', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Excel, hàm nào dùng để tính tổng?', N'SUM', N'AVERAGE', N'MIN', N'MAX', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong hệ điều hành Windows, phím nào để xóa tệp vĩnh viễn?', N'Shift + Delete', N'Ctrl + Delete', N'Alt + Delete', N'Delete', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong PowerPoint, để tạo hiệu ứng chuyển động ta sử dụng chức năng nào?', N'Animation', N'Transition', N'Slide Show', N'Insert', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Word, chức năng nào để tạo chân trang?', N'Header', N'Footer', N'Paragraph', N'Insert', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Word, công cụ nào để tạo danh sách có số thứ tự?', N'Numbering', N'Bullets', N'Table', N'Line', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Word, để chọn tất cả nội dung văn bản, bạn nhấn tổ hợp phím nào?', N'Ctrl + A', N'Ctrl + C', N'Ctrl + V', N'Ctrl + Z', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Word, để thay đổi kích thước ảnh ta dùng công cụ nào?', N'Crop', N'Resize', N'Cut', N'Copy', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'Trong Word, phím tắt để in tài liệu là gì?', N'Ctrl + P', N'Ctrl + C', N'Ctrl + I', N'Ctrl + O', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam5', N'USB là viết tắt của...', N'Universal Serial Bus', N'Universal System Bus', N'Unique Serial Bus', N'Uniform Serial Bus', N'A')
GO
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Công cụ nào trong Word dùng để kiểm tra chính tả?', N'Spelling & Grammar', N'Thesaurus', N'Translate', N'Research', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đâu là bộ nhớ lưu trữ lâu dài trong máy tính?', N'RAM', N'ROM', N'Ổ cứng', N'Cache', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đâu là một đơn vị đo tốc độ xử lý của máy tính?', N'GHz', N'MB', N'KB', N'GB', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đâu là một phần mềm diệt virus?', N'Avast', N'Excel', N'PowerPoint', N'Word', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đâu là một trong những thao tác cắt, sao chép, dán?', N'Ctrl + X', N'Ctrl + A', N'Ctrl + F', N'Ctrl + P', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đâu là thiết bị ngoại vi?', N'Máy in', N'CPU', N'RAM', N'ROM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đâu là thiết bị nhập dữ liệu dạng hình ảnh?', N'Máy quét', N'Loa', N'Màn hình', N'Ổ đĩa', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Để kiểm tra số lượng từ trong Word, ta sử dụng công cụ nào?', N'Word Count', N'Page Layout', N'Insert', N'References', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Để lưu tài liệu nhanh trong Word, ta dùng tổ hợp phím nào?', N'Ctrl + S', N'Ctrl + C', N'Ctrl + X', N'Ctrl + P', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Để tạo đường kẻ ngang trong Word, ta sử dụng ký tự nào?', N'---', N'===', N'___', N'***', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Để thoát khỏi một chương trình trên máy tính, ta nhấn tổ hợp phím nào?', N'Alt + F4', N'Ctrl + F4', N'Shift + F4', N'Esc', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đơn vị đo dung lượng lớn hơn Kilobyte là gì?', N'Megabyte', N'Gigabyte', N'Terabyte', N'Cả ba đều đúng', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Đơn vị lớn nhất để đo dung lượng là gì?', N'Megabyte', N'Terabyte', N'Gigabyte', N'Kilobyte', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Hệ điều hành nào sau đây được sử dụng phổ biến trên máy tính?', N'iOS', N'Android', N'Windows', N'Unix', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Hệ điều hành nào sau đây không phải của Microsoft?', N'Windows', N'Linux', N'MS-DOS', N'Windows 10', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phần mềm nào sau đây dùng để chỉnh sửa ảnh?', N'Word', N'Excel', N'Photoshop', N'PowerPoint', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phần mềm nào sau đây dùng để lập bảng tính?', N'Excel', N'Word', N'PowerPoint', N'Photoshop', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phần mềm nào sau đây dùng để quản lý email?', N'Outlook', N'Word', N'Excel', N'PowerPoint', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phần mềm nào sau đây dùng để soạn thảo văn bản?', N'Excel', N'Word', N'PowerPoint', N'Photoshop', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phần mềm nào sau đây không phải là phần mềm hệ điều hành?', N'Windows', N'Linux', N'Excel', N'MacOS', N'C')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phím nào để chuyển đổi giữa các cửa sổ đang mở?', N'Alt + Tab', N'Ctrl + Tab', N'Shift + Tab', N'Ctrl + Alt', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phím nào để hủy bỏ thao tác vừa thực hiện?', N'Ctrl + Z', N'Ctrl + X', N'Ctrl + C', N'Ctrl + V', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phím tắt để cắt một đoạn văn bản là gì?', N'Ctrl + X', N'Ctrl + C', N'Ctrl + V', N'Ctrl + Z', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Phím tắt để mở hộp thoại tìm kiếm trong Word là gì?', N'Ctrl + F', N'Ctrl + S', N'Ctrl + P', N'Ctrl + O', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'RAM là loại bộ nhớ như thế nào?', N'Bộ nhớ tạm thời', N'Bộ nhớ lâu dài', N'Bộ nhớ di động', N'Bộ nhớ ngoài', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào không phải là thiết bị đầu vào?', N'Bàn phím', N'Màn hình', N'Chuột', N'Máy quét', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào là thiết bị đầu vào?', N'Loa', N'Chuột', N'Màn hình', N'Máy in', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào sau đây có chức năng xuất âm thanh?', N'Loa', N'Chuột', N'Bàn phím', N'Màn hình', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào sau đây dùng để xuất dữ liệu ra màn hình?', N'Màn hình', N'Bàn phím', N'Chuột', N'USB', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào sau đây không phải là thiết bị lưu trữ?', N'RAM', N'Ổ cứng', N'USB', N'Màn hình', N'D')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào sau đây không thuộc nhóm thiết bị đầu ra?', N'Loa', N'Chuột', N'Màn hình', N'Máy in', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào sau đây là thiết bị đầu ra?', N'Màn hình', N'Bàn phím', N'Chuột', N'Micro', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Thiết bị nào sau đây là thiết bị lưu trữ dữ liệu di động?', N'USB', N'Màn hình', N'Chuột', N'Loa', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, chức năng kéo chuột từ ô có công thức để sao chép công thức được gọi là gì?', N'Fill Handle', N'Drag', N'Copy', N'Auto Fill', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, công cụ nào giúp sắp xếp dữ liệu?', N'Sort', N'Filter', N'Chart', N'Data Validation', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, công cụ nào giúp tạo biểu đồ?', N'Chart', N'Filter', N'Sort', N'Table', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, hàm nào dùng để đếm các ô trống?', N'COUNTBLANK', N'COUNT', N'COUNTA', N'AVERAGE', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, hàm nào dùng để lấy giá trị lớn nhất?', N'MAX', N'MIN', N'AVERAGE', N'SUM', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, hàm nào sau đây dùng để đếm các ô có dữ liệu?', N'COUNT', N'SUM', N'AVERAGE', N'MAX', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, hàm nào sau đây tính giá trị trung bình của một dãy số?', N'AVERAGE', N'SUM', N'MAX', N'MIN', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Excel, ký hiệu nào thể hiện việc tham chiếu tuyệt đối?', N'$', N'#', N'&', N'*', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong mạng máy tính, thiết bị nào dùng để chuyển tiếp dữ liệu giữa các mạng?', N'Router', N'Switch', N'Modem', N'Hub', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong PowerPoint, để bắt đầu trình chiếu từ slide hiện tại, ta dùng phím nào?', N'Shift + F5', N'F5', N'Ctrl + F5', N'Alt + F5', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong PowerPoint, để tạo hiệu ứng chuyển trang, ta dùng chức năng nào?', N'Animation', N'Slide Transition', N'Format', N'Insert', N'B')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Word, chức năng nào để làm cho chữ nghiêng?', N'Italic', N'Bold', N'Underline', N'Highlight', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Word, chức năng nào dùng để tạo danh sách có dấu đầu dòng?', N'Bullets', N'Numbering', N'Table', N'Paragraph', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Word, để tạo đường kẻ dưới chữ, ta sử dụng công cụ nào?', N'Underline', N'Italic', N'Bold', N'Strikethrough', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Word, để tạo một bảng biểu, ta sử dụng công cụ nào?', N'Table', N'Chart', N'SmartArt', N'Shapes', N'A')
INSERT [dbo].[QUESTION] ([EXAM_ID], [CONTENT], [OPTION_A], [OPTION_B], [OPTION_C], [OPTION_D], [CORRECT_ANSWER]) VALUES (N'exam6', N'Trong Word, tổ hợp phím nào dùng để dán nội dung đã sao chép?', N'Ctrl + V', N'Ctrl + C', N'Ctrl + X', N'Ctrl + Z', N'A')
GO
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu1', N'admin', N'admin')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu10', N'thihong101995', N'ruDMi4jzwz')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu2', N'truongson2109', N'D8xT4fW9jK')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu3', N'thaomai0112', N'A2pQ7lZ3nB')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu4', N'vietdung1208', N'M6vC1rH8yL')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu5', N'anco0808', N'P9kN3dX5bR')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu6', N'thimai151975', N'0sHWEmQymF')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu7', N'thanhhung201982', N'Xv7IddZuTB')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu8', N'vanduc111990', N'LehtijOaD7')
INSERT [dbo].[STUDENT] ([ACCOUNT_ID], [USERNAME], [PASS_WORD]) VALUES (N'stu9', N'minhkhoi031988', N'nMAsTQPd4J')
GO
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu1', N'exam1', 8.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu1', N'exam2', 6)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu1', N'exam3', 6.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu10', N'exam4', 9.25)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu10', N'exam5', 7.25)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu10', N'exam6', 6.25)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu2', N'exam1', 7)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu2', N'exam2', 7.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu2', N'exam3', 7)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu3', N'exam1', 9)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu3', N'exam2', 8)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu3', N'exam3', 8.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu4', N'exam1', 6.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu4', N'exam2', 9.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu4', N'exam3', 9.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu5', N'exam1', 7.5)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu5', N'exam2', 9)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu5', N'exam3', 7)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu6', N'exam4', 7)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu6', N'exam5', 8)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu6', N'exam6', 7)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu7', N'exam4', 8)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu7', N'exam5', 6)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu7', N'exam6', 9)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu8', N'exam4', 6.25)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu8', N'exam5', 6.25)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu8', N'exam6', 7.25)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu9', N'exam4', 7.75)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu9', N'exam5', 8.75)
INSERT [dbo].[STUDENT_SCORE] ([ACCOUNT_ID], [EXAM_ID], [TOTAL]) VALUES (N'stu9', N'exam6', 6.75)
GO
ALTER TABLE [dbo].[PERSONAL_INFORMATION]  WITH CHECK ADD  CONSTRAINT [FK_PERSONAL_INFORMATION_STUDENT] FOREIGN KEY([ACCOUNT_ID])
REFERENCES [dbo].[STUDENT] ([ACCOUNT_ID])
GO
ALTER TABLE [dbo].[PERSONAL_INFORMATION] CHECK CONSTRAINT [FK_PERSONAL_INFORMATION_STUDENT]
GO
ALTER TABLE [dbo].[QUESTION]  WITH CHECK ADD FOREIGN KEY([EXAM_ID])
REFERENCES [dbo].[EXAM] ([EXAM_ID])
GO
ALTER TABLE [dbo].[STUDENT_SCORE]  WITH CHECK ADD FOREIGN KEY([ACCOUNT_ID])
REFERENCES [dbo].[STUDENT] ([ACCOUNT_ID])
GO
ALTER TABLE [dbo].[STUDENT_SCORE]  WITH CHECK ADD FOREIGN KEY([EXAM_ID])
REFERENCES [dbo].[EXAM] ([EXAM_ID])
GO
