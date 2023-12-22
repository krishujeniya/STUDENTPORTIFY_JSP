<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>StudentPortify</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap-icons.css">
</head>
<body class="bg-secondary text-black">
    <div class="container mt-5">
        <h1>Student Data</h1>
        <form action="saveUser.jsp" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="birthdate" class="form-label">Birthdate:</label>
                <input type="date" class="form-control" id="birthdate" name="birthdate" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email ID:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="whatsapp" class="form-label">WhatsApp No:</label>
                <input type="tel" class="form-control" id="whatsapp" name="whatsapp" required>
            </div>
            <div class="mb-3">
                <label for="linkedin" class="form-label">LinkedIn URL:</label>
                <input type="url" class="form-control" id="linkedin" name="linkedin" required>
            </div>
            <div class="mb-3">
                <label for="website" class="form-label">Own Website URL:</label>
                <input type="url" class="form-control" id="website" name="website" required>
            </div>
            <div class="mb-3">
                <label for="education" class="form-label">Current Education:</label>
                <input type="text" class="form-control" id="education" name="education" required>
            </div>
            <div class="mb-3">
                <label for="interests" class="form-label">Interested In:</label>
                <input type="text" class="form-control" id="interests" name="interests" required>
            </div>
            <div class="mb-3">
                <label for="skills" class="form-label">Skills:</label>
                <input type="text" class="form-control" id="skills" name="skills" required>
            </div>
            <div class="mb-3">
                <label for="projects" class="form-label">Projects URLs:</label>
                <input type="text" class="form-control" id="projects" name="projects" required>
            </div>
            <div class="mb-3">
                <label for="internships" class="form-label">Internships:</label>
                <input type="text" class="form-control" id="internships" name="internships" required>
            </div>
            <div class="mb-3">
                <label for="openToWork" class="form-label">Open to Work:</label>
                <select class="form-select" id="openToWork" name="openToWork" required>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
