const express = require("express");
const router = express.Router();
const Course = require("../models/courseModel");

// Endpoint: GET /api/courses - Find all courses (READ)
router.get("/", async function (req, res) {
  try {
    const courses = await Course.getCourses();
    res.status(200).json({ success: true, data: courses });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

// Endpoint: GET /api/courses/:id - Find single course (READ)
router.get("/:id", async function (req, res) {
  try {
    const course = await Course.getCourseById(req.params.id);
    if (!course) {
      return res.status(404).json({ success: false, error: "Course not found" });
    }
    res.status(200).json({ success: true, data: course });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

// Endpoint: POST /api/courses - Add new course (CREATE)
router.post("/", async function (req, res) {
  try {
    const { courseNo, courseDesc, lastSemTaught, maxStudents } = req.body;
    const insertId = await Course.addCourse(req.body);
    const newCourse = await Course.getCourseById(insertId);

    res.status(201).json({ success: true, data: newCourse });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

module.exports = router;
