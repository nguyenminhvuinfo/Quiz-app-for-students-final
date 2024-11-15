const express = require("express");
const sql = require("msnodesqlv8");
const cors = require("cors"); // Import CORS
const app = express();
const port = 3003;

// Kích hoạt CORS để cho phép yêu cầu từ các nguồn khác
app.use(cors());

// Middleware để xử lý dữ liệu JSON trong body
app.use(express.json());

// Kết nối tới SQL Server
const serverName = "ADMIN\\SQLEXPRESS";
const connectionString = `server=${serverName};Database=QUIZ;Trusted_Connection=Yes;Driver={ODBC Driver 18 for SQL Server};Encrypt=yes;TrustServerCertificate=Yes`;

// Truy vấn lấy dữ liệu từ bảng QUESTION theo EXAM_ID
const getQuery = `SELECT 
    Q.EXAM_ID, 
    Q.CONTENT, 
    Q.OPTION_A, 
    Q.OPTION_B, 
    Q.OPTION_C, 
    Q.OPTION_D, 
    Q.CORRECT_ANSWER, 
    E.TIME_TEST
FROM 
    QUESTION Q
INNER JOIN 
    EXAM E
ON 
    Q.EXAM_ID = E.EXAM_ID
WHERE 
    Q.EXAM_ID = ?`;

// Route để nhận POST request và trả về dữ liệu theo examId
app.post("/exam", (req, res) => {
  const { examId } = req.body; // Lấy examId từ body của request
  
  if (!examId) {
    return res.status(400).send("Missing examId in request body");
  }

  sql.query(connectionString, getQuery, [examId], (err, rows) => {
    if (err) {
      console.error("Error executing query:", err);
      res.status(500).send("Error retrieving data from database");
    } else {
      res.json(rows); // Trả về dữ liệu từ database
    }
  });
});

// Lắng nghe trên cổng 3003
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}/exam`);
});
