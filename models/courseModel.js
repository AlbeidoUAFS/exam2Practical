const db = require("../config/db");

const Course = {
  // Create
  async addCourse(courseData) {
    const { courseNo, courseDesc, lastSemTaught, maxStudents } = courseData;
    const sql = `INSERT INTO courses (courseNo, courseDesc, lastSemTaught, maxStudents) VALUES (?, ?, ?,?)`;
    const [result] = await db.execute(sql, [courseNo, courseDesc, lastSemTaught, maxStudents]);
    return result.insertId;
  },

  // Read All
  async getCourses() {
    const sql = `SELECT courseID, courseNo, courseDesc, lastSemTaught, maxStudents FROM courses`;
    const [rows] = await db.execute(sql);
    return rows;
  },

  // Read One by ID
  async getCourseById(id) {
    const sql = `SELECT courseID, courseNo, courseDesc, lastSemTaught, maxStudents FROM courses WHERE courseID = ?`;
    const [rows] = await db.execute(sql, [id]);
    return rows[0] || null;
  },

};

module.exports = Course;
