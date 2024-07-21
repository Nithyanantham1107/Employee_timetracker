<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding task</title>
</head>
<style>
    :root {
        --primary-color: #3498db;
        --secondary-color: #2ecc71;
        --background-color: #ecf0f1;
        --text-color: #34495e;
        --error-color: #e74c3c;
        --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: var(--background-color);
        color: var(--text-color);
        line-height: 1.6;
    }

    h1,
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: var(--primary-color);
    }

    button {
        background-color: var(--primary-color);
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #2980b9;
    }

    input,
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #bdc3c7;
        border-radius: 5px;
        font-size: 16px;
    }

    form {
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: var(--shadow);
        max-width: 400px;
        margin: 0 auto;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: white;
        box-shadow: var(--shadow);
    }

    th,
    td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: var(--primary-color);
        color: white;
    }

    .hidden {
        display: none;
    }

    /* Login Page */
    #login-page {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
    }

    #login-page h1 {
        color: white;
        font-size: 3em;
        margin-bottom: 30px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
    }

    #login-form {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    /* Admin Dashboard */
    #admin-dashboard {
        padding: 20px;
        max-width: 800px;
        margin: 0 auto;
    }

    #logout-admin {
        position: absolute;
        top: 20px;
        right: 20px;
    }

    #register-form {
        margin-bottom: 40px;
    }

    #customer-list {
        width: 100%;
    }

    /* Customer Dashboard */
    #customer-dashboard {
        padding: 20px;
        max-width: 600px;
        margin: 0 auto;
    }

    #logout-customer {
        position: absolute;
        top: 20px;
        right: 20px;
    }

    #account-details {
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: var(--shadow);
        margin-bottom: 20px;
    }

    #view-transactions,
    #deposit,
    #withdraw,
    #close-account {
        margin-right: 10px;
        margin-bottom: 10px;
    }

    @media (max-width: 768px) {
        form {
            padding: 20px;
        }

        table {
            font-size: 14px;
        }

        button {
            width: 100%;
            margin-bottom: 10px;
        }
    }

    /* Animations */
    @keyframes fadeIn {
        from {
            opacity: 0;
        }

        to {
            opacity: 1;
        }
    }

    .fade-in {
        animation: fadeIn 0.5s ease-in;
    }

    /* Custom scrollbar */
    ::-webkit-scrollbar {
        width: 10px;
    }

    ::-webkit-scrollbar-track {
        background: #f1f1f1;
    }

    ::-webkit-scrollbar-thumb {
        background: var(--primary-color);
        border-radius: 5px;
    }

    ::-webkit-scrollbar-thumb:hover {
        background: #2980b9;
    }
</style>

<body>
<form action="emp_op" method="get">
    <label for="project">Project</label>
    <input type="text" name="project" placeholder="Project_name" required>
    <br>   
    <label for="day">Day count</label>
    <input type="text" name="day" placeholder="Day count" required>
    <br>  
    <label for="taskcategory">Task Category</label>
    <select id="taskcategory" name="taskcategory" required>
        <option value="developing">Developing</option>
        <option value="planning">Planning</option>
        <option value="design">Design</option>
        <option value="testing">Testing</option>
    </select>
    <br>   
    <label for="description">Description</label>
    <input type="text" name="description" placeholder="Description" required>
    <br>       
    <label for="time1">Start Date and Time</label>
    <input type="datetime-local" name="time1" step="1" required/>
    <br>
    <label for="time2">End Date and Time</label>
    <input type="datetime-local" name="time2" step="1" required/>
    <br><br>
    <button type="submit" id="submitValue">Add Task</button>
</form>
</body>
</html>