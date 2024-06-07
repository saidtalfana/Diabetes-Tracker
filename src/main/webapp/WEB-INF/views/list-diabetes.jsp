<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Diabetes List</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .chart-container {
            width: 100%;
            max-width: 600px;
            margin: auto;
            height: 500px;
        }
    </style>
</head>
<body>
<h2>Diabetes List</h2>
<a href="show">Add New Record</a>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Time</th>
        <th>Glucose Level</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${diabetes}" var="diabete">
        <tr>
            <td>${diabete.id}</td>
            <td>${diabete.date}</td>
            <td>${diabete.time}</td>
            <td>${diabete.glucoseLevel}</td>
            <td>${diabete.user.idDiabete}</td>
            <td>
                <a href="update?diabeteId=${diabete.id}">Update</a> |
                <a href="delete?diabeteId=${diabete.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div class="chart-container mt-5">
    <canvas id="myChart"></canvas>
</div>



<script>
    document.addEventListener('DOMContentLoaded', (event) => {

        const labels = [
            <c:forEach var="gl" items="${diabetes}" varStatus="status">
            "${gl.date}"<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];

        const Level= [
            <c:forEach var="gl" items="${diabetes}" varStatus="status">
            ${gl.glucoseLevel}<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];


        const data = {
            labels: labels, datasets: [
                {
                    label: 'Level',
                    data: Level,
                    fill: true,
                    borderColor: 'rgb(255, 99, 132)',
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                }
            ]
        };  const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Glycemie Levels Over Time'
                    }
                }
            },
        };

        const ctx = document.getElementById('myChart').getContext('2d');
        new Chart(ctx, config);
    });
</script>
</body>
</html>
