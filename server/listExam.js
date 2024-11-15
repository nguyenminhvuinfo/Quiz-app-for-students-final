const express = require("express");
const sql = require("msnodesqlv8");
const cors = require("cors"); // Import CORS
const app = express();
const port = 3002;

app.use(cors()); // Kích hoạt CORS để cho phép yêu cầu từ các nguồn khác

const serverName = "ADMIN\\SQLEXPRESS";
const connectionString = `server=${serverName};Database=QUIZ;Trusted_Connection=Yes;Driver={ODBC Driver 18 for SQL Server};Encrypt=yes;TrustServerCertificate=Yes`;

const query = `SELECT * FROM EXAM`;

app.get("/listExam", (req, res) => {
  sql.query(connectionString, query, (err, rows) => {
    if (err) {
      console.error("Error executing query", err);
      res.status(500).send("Error retrieving data from database");
    } else {
      res.json(rows); // Trả dữ liệu về dưới dạng JSON
    }
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}/listExam`);
});
