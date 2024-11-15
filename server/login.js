// server.js
const express = require("express");
const sql = require("msnodesqlv8");
const cors = require("cors");  // Import CORS
const app = express();
const port = 3001;

const serverName = "ADMIN\\SQLEXPRESS";
const connectionString = `server=${serverName};Database=QUIZ;Trusted_Connection=Yes;Driver={ODBC Driver 18 for SQL Server};Encrypt=yes;TrustServerCertificate=Yes`;

app.use(cors()); 
app.use(express.json());  // Cấu hình cho phép xử lý dữ liệu JSON từ frontend

// Endpoint để kiểm tra thông tin đăng nhập
app.post("/login", (req, res) => {
  const { username, password } = req.body;  // Lấy thông tin từ request body

  const query = `
    SELECT * FROM Student WHERE USERNAME = ? AND PASS_WORD = ?
  `;

  sql.query(connectionString, query, [username, password], (err, rows) => {
    if (err) {
      console.error("Error executing query:", err);
      res.status(500).send("Error executing query");
    } else {
      if (rows.length > 0) {
        const user = {
          id: rows[0].USERNAME,  // Chỉ trả về username
          // Bạn có thể thêm các trường khác nếu cần, ví dụ email, tên đầy đủ,...
        };
        res.json({ success: true, message: "Đăng nhập thành công", user });
      } else {
        res.status(401).json({ success: false, message: "Sai tên người dùng hoặc mật khẩu" });
      }
    }
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}/login`);
});
