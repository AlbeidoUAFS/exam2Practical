const refreshButton = document.getElementById("refresh");

refreshButton.addEventListener("click", loadCourses);

async function loadCourses() {
    try {
       
        const response = await fetch("/api/courses");
        if (!response.ok) {
            throw new Error("Failed to retrieve courses");
        }
      
       const parse = await response.json();
        const data = parse.data;
        const courses = data;
        const table = document.getElementById("coursetable");

        table.innerHTML = `
            <thead>
                <tr>
                    <th>courseNo</th>
                    <th>courseDesc</th>
                    <th>lastSemTaught</th>
                    <th>maxStudents</th>                   
                </tr>
            </thead>
            <tbody></tbody>
        `;

        const tbody = table.querySelector("tbody");

        courses.forEach(course => {
            const row = document.createElement("tr");

            row.innerHTML = `
                <td>${course.courseNo || ''}</td>
                <td>${course.courseDesc || ''}</td>
                <td>${course.lastSemTaught || ''}</td>
                <td>${course.maxStudents || ''}</td>               
            `;

            tbody.appendChild(row);
        });

    } catch (error) {
        console.error("Error loading courses:", error);
    }
}

loadCourses();

const courseForm = document.getElementById("courseForm");

courseForm.addEventListener("submit", async function(event) {
    event.preventDefault();

    const course = {
        courseNo: document.getElementById("courseNo").value,
        courseDesc: document.getElementById("courseDesc").value,
        lastSemTaught: document.getElementById("lastSemTaught").value,
        maxStudents: document.getElementById("maxStudents").value
       
    };

    try {
        const response = await fetch("/api/courses", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(course)
        });

        if (!response.ok) {
            throw new Error("Failed to add course");
        }

        
        courseForm.reset();

       
        loadCourses();

    } catch (error) {
        console.error("Error:", error);
    }
});