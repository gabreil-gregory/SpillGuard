// SpillGuard Prototype JS
// Handles alerts display (sample data for prototype)

document.addEventListener("DOMContentLoaded", () => {
    const alertList = document.getElementById("alert-list");

    // Sample alert data
    const alerts = [
        { location: "Volta Region, Ghana", level: "High", time: "2025-08-24 08:00" },
        { location: "Central Region, Ghana", level: "Medium", time: "2025-08-24 09:30" },
        { location: "Eastern Region, Ghana", level: "Low", time: "2025-08-24 10:15" }
    ];

    // Populate alerts dynamically
    alerts.forEach(alert => {
        const li = document.createElement("li");
        li.textContent = `${alert.location} - ${alert.level} risk - Reported at ${alert.time}`;
        alertList.appendChild(li);
    });
});
