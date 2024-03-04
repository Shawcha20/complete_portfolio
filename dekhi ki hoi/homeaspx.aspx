<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
     <style>
        /* Style for buttons */
        button {
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            align-items:center;
        }
        .header{
            display:flex;
            align-content:center;
            justify-content:center;
        }
        .buttons{
            display:flex;
            justify-content:center;
        }
        /* Style for content divs */
        #addContent, #deleteContent, #updateContent, #showContent {
            display: none;
            padding: 10px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1> Portfolio Project Panel</h1>
    </div>
    <div class="buttons">
        <button onclick="loadAddContent()">Add</button>
        <button onclick="loadDeleteContent()">Delete</button>
        <button onclick="loadUpdateContent()">Update</button>
        <button onclick="showDatabase()">Show Table</button>
    </div>
    <div id="addContent"></div>
    <div id="deleteContent"></div>
    <div id="updateContent"></div>
    <div id="showContent"></div>

<script>
    function loadAddContent() {
        // Use AJAX to load add.aspx content
        fetch("add_project.aspx")
            .then(response => response.text())
            .then(data => {
                document.getElementById("addContent").innerHTML = data;
                document.getElementById("addContent").style.display = "block";
                document.getElementById("deleteContent").style.display = "none";
                document.getElementById("updateContent").style.display = "none";
                document.getElementById("showContent").style.display = "none";
            })
            .catch(error => console.error('Error loading add.aspx:', error));
    }

    function loadDeleteContent() {
        // Use AJAX to load delete.aspx content
        fetch("delete.aspx")
            .then(response => response.text())
            .then(data => {
                document.getElementById("deleteContent").innerHTML = data;
                document.getElementById("addContent").style.display = "none";
                document.getElementById("deleteContent").style.display = "block";
                document.getElementById("updateContent").style.display = "none";
                document.getElementById("showContent").style.display = "none";
            })
            .catch(error => console.error('Error loading delete.aspx:', error));
    }

    function loadUpdateContent() {
        // Use AJAX to load update.aspx content
        fetch("update.aspx")
            .then(response => response.text())
            .then(data => {
                document.getElementById("updateContent").innerHTML = data;
                document.getElementById("addContent").style.display = "none";
                document.getElementById("deleteContent").style.display = "none";
                document.getElementById("updateContent").style.display = "block";
                document.getElementById("showContent").style.display = "none";
            })
            .catch(error => console.error('Error loading update.aspx:', error));
    }

    function showDatabase() {
        // Use AJAX to load database.aspx content
        fetch("show_table.aspx")
            .then(response => response.text())
            .then(data => {
                document.getElementById("showContent").innerHTML = data;
                document.getElementById("addContent").style.display = "none";
                document.getElementById("deleteContent").style.display = "none";
                document.getElementById("updateContent").style.display = "none";
                document.getElementById("showContent").style.display = "block";
            })
            .catch(error => console.error('Error loading database.aspx:', error));
    }
</script>
</body>
</html>
