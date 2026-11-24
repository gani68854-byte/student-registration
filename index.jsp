<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f3f6fb; margin: 0; padding: 40px 16px; }
        .container { max-width: 520px; margin: auto; background: white; padding: 28px; border-radius: 12px; box-shadow: 0 4px 18px #00000012; }
        h1 { margin-top: 0; color: #203354; }
        label { display: block; margin: 14px 0 6px; font-weight: bold; }
        input, select { width: 100%; box-sizing: border-box; padding: 11px; border: 1px solid #cbd3df; border-radius: 6px; }
        button { margin-top: 20px; width: 100%; padding: 12px; background: #2457c5; color: white; border: 0; border-radius: 6px; font-size: 16px; cursor: pointer; }
        button:hover { background: #19459f; }
        .note { color: #5d6878; font-size: 13px; }
    </style>
</head>
<body>
<div class="container">
    <h1>Student Registration</h1>
    <p class="note">Enter your details to register. This demo displays a confirmation; it does not save records to a database.</p>
    <form action="success.jsp" method="post">
        <label for="studentId">Student ID</label>
        <input id="studentId" name="studentId" required maxlength="20">

        <label for="studentName">Full Name</label>
        <input id="studentName" name="studentName" required maxlength="80">

        <label for="email">Email</label>
        <input id="email" name="email" type="email" required maxlength="120">

        <label for="course">Course</label>
        <select id="course" name="course" required>
            <option value="">Select a course</option>
            <option>Computer Science</option>
            <option>Electronics</option>
            <option>Mechanical</option>
            <option>Business Administration</option>
        </select>

        <button type="submit">Register Student</button>
    </form>
</div>
</body>
</html>
