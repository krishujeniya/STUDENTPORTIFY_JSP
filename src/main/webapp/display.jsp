<%@ page import="com.example.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>StudentPortify</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        @media print {
            .print-button-container, .template-container {
                display: none;
                
            }
        }
       
    </style>
</head>
<body class="bg-light text-black">
    <div class="container mt-5">
            <h1 class="text-black">Print Template:</h1>
        <div class="container">
        <div class="portfolio-details bg-light text-black">
            <ul class="list-group bg-light text-black">
                <% 
                    String template = request.getParameter("template");
                    List<User> users = (List<User>) request.getAttribute("users");
                    User lastAddedUser = null;
                    if (users != null && users.size() > 0) {
                        lastAddedUser = users.get(users.size() - 1);
                %>
                <li class="list-group-item bg-light text-black">
                    
                    <div id="template1" class="bg-light p-4 rounded shadow-sm text-dark">
                        <h2 class="mb-4"><strong><%= lastAddedUser.getName() %></strong></h2>
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <p class="mb-2"><strong>Birthdate:</strong> <%= lastAddedUser.getBirthdate() %></p>
                                <p class="mb-2"><strong>Email:</strong> <%= lastAddedUser.getEmail() %></p>
                                <p class="mb-2"><strong>WhatsApp:</strong> <%= lastAddedUser.getWhatsapp() %></p>
                                <p class="mb-2"><strong>LinkedIn:</strong> <%= lastAddedUser.getLinkedin() %></p>
                            </div>
                            <div class="col-sm-6">
                                <p class="mb-2"><strong>Website:</strong> <a href="<%= lastAddedUser.getWebsite() %>" class="text-dark" target="_blank"><%= lastAddedUser.getWebsite() %></a></p>
                                <p class="mb-2"><strong>Education:</strong> <%= lastAddedUser.getEducation() %></p>
                                <p class="mb-2"><strong>Open to Work:</strong> <%= lastAddedUser.isOpenToWork() ? "Yes" : "No" %></p>
                            </div>
                        </div>
                        <hr class="my-4">
                        <h4 class="mb-3"><strong>Skills & Experience</strong></h4>
                        <ul class="list-group">
                            <li class="list-group-item"><strong>Interests:</strong> <%= lastAddedUser.getInterests() %></li>
                            <li class="list-group-item"><strong>Skills:</strong> <%= lastAddedUser.getSkills() %></li>
                            <li class="list-group-item"><strong>Projects:</strong> <%= lastAddedUser.getProjects() %></li>
                            <li class="list-group-item"><strong>Internships:</strong> <%= lastAddedUser.getInternships() %></li>
                        </ul>
                    </div>
                    <div class="text-center">        
                            <button class="btn btn-dark template-button m-3 " data-template="template1">Print</button>
                    </div>
                    <br><br>
                    <div id="template2" class="p-4 rounded shadow-sm">
                        <div class="bg-dark text-light p-3 mb-4">
                            <h3 class="mb-0"><%= lastAddedUser.getName() %></h3>
                        </div>
                        <div class="bg-light text-dark p-3 mb-4">
                            <h4>Personal Information</h4>
                            <p><strong>Birthdate:</strong> <%= lastAddedUser.getBirthdate() %></p>
                            <p><strong>Email:</strong> <%= lastAddedUser.getEmail() %></p>
                            <p><strong>WhatsApp:</strong> <%= lastAddedUser.getWhatsapp() %></p>
                            <p><strong>LinkedIn:</strong> <%= lastAddedUser.getLinkedin() %></p>
                            <p><strong>Website:</strong> <a href="<%= lastAddedUser.getWebsite() %>" class="text-dark" target="_blank"><%= lastAddedUser.getWebsite() %></a></p>
                        </div>
                        <div class="bg-light text-dark p-3 mb-4">
                            <h4>Education</h4>
                            <p><%= lastAddedUser.getEducation() %></p>
                        </div>
                        <div class="bg-light text-dark p-3 mb-4">
                            <h4>Skills & Experience</h4>
                            <p><strong>Interests:</strong> <%= lastAddedUser.getInterests() %></p>
                            <p><strong>Skills:</strong> <%= lastAddedUser.getSkills() %></p>
                            <p><strong>Projects:</strong> <%= lastAddedUser.getProjects() %></p>
                            <p><strong>Internships:</strong> <%= lastAddedUser.getInternships() %></p>
                        </div>
                        <div class="bg-light text-dark p-3">
                            <h4>Availability</h4>
                            <p><strong>Open to Work:</strong> <%= lastAddedUser.isOpenToWork() ? "Yes" : "No" %></p>
                        </div>
                    </div>
                    
                    <div class="text-center">        
                        <button class="btn btn-dark template-button m-3 " data-template="template2">Print</button>
                    </div>             <br><br>       <div id="template3" class="bg-light text-black">
                        <h3 class="m-3 bg-light text-black"><strong class="text-black"><%= lastAddedUser.getName() %></strong> </h3>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Birthdate:</strong> <%= lastAddedUser.getBirthdate() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Email:</strong> <%= lastAddedUser.getEmail() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">WhatsApp:</strong> <%= lastAddedUser.getWhatsapp() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">LinkedIn:</strong> <%= lastAddedUser.getLinkedin() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Website:</strong> <a href="<%= lastAddedUser.getWebsite() %>" class="text-black" target="_blank"><%= lastAddedUser.getWebsite() %></a></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Education:</strong> <%= lastAddedUser.getEducation() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Interests:</strong> <%= lastAddedUser.getInterests() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Skills:</strong> <%= lastAddedUser.getSkills() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Projects:</strong> <%= lastAddedUser.getProjects() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Internships:</strong> <%= lastAddedUser.getInternships() %></p>                        <hr class="my-4">

                        <p class="m-1 bg-light text-black"><strong class="text-black">Open to Work:</strong> <%= lastAddedUser.isOpenToWork() ? "Yes" : "No" %></p>                        <hr class="my-4">

                    </div>
  
                    <div class="text-center">        
                        <button class="btn btn-dark template-button m-3 " data-template="template3">Print</button>
                    </div>    <br><br>
                    <div id="template4" class="bg-light text-dark p-4 rounded shadow-sm d-flex align-items-center">
                        <div class="col-md-4 text-start">
                            <h1 class="fw-bold"><%= lastAddedUser.getName() %></h1>
                        </div>
                        <div class="col-md-8">
                            <p><strong>Birthdate:</strong> <%= lastAddedUser.getBirthdate() %></p>
                            <p><strong>Email:</strong> <%= lastAddedUser.getEmail() %></p>
                            <p><strong>WhatsApp:</strong> <%= lastAddedUser.getWhatsapp() %></p>
                            <p><strong>LinkedIn:</strong> <%= lastAddedUser.getLinkedin() %></p>
                            <p><strong>Website:</strong> <a href="<%= lastAddedUser.getWebsite() %>" class="text-dark" target="_blank"><%= lastAddedUser.getWebsite() %></a></p>
                            <p><strong>Education:</strong> <%= lastAddedUser.getEducation() %></p>
                            <p><strong>Open to Work:</strong> <%= lastAddedUser.isOpenToWork() ? "Yes" : "No" %></p>
                            <h4 class="mt-4"><strong>Skills & Experience</strong></h4>
                            <ul class="list-group">
                                <li class="list-group-item"><strong>Interests:</strong> <%= lastAddedUser.getInterests() %></li>
                                <li class="list-group-item"><strong>Skills:</strong> <%= lastAddedUser.getSkills() %></li>
                                <li class="list-group-item"><strong>Projects:</strong> <%= lastAddedUser.getProjects() %></li>
                                <li class="list-group-item"><strong>Internships:</strong> <%= lastAddedUser.getInternships() %></li>
                            </ul>
                        </div>
                    </div>    
                    <div class="text-center">        
                        <button class="btn btn-dark template-button m-3 " data-template="template4">Print</button>
                    </div>     <br><br>     </div>

                    
                </li>
                <% } else { %>
                    <li class="list-group-item bg-light text-black">
                        No portfolio data available.
                    </li>
                <% } %>
            </ul>
            
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const templateButtons = document.querySelectorAll('.template-button');
        const printButton = document.getElementById('printButton');
        
        templateButtons.forEach(button => {
            button.addEventListener('click', () => {
                const selectedTemplate = button.getAttribute('data-template');
                const selectedDiv = document.getElementById(selectedTemplate);
                const clonedDiv = selectedDiv.cloneNode(true);
                const printWindow = window.open('', '', 'width=600,height=600');
                printWindow.document.open();
                printWindow.document.write(`
                    <html>
                    <head>
                        <title>Print Template</title>
                        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
                        <style>
                            .list-group-item {
                                border: none;
                            }
                        </style>
                    </head>
                    <body>
                        ${clonedDiv.outerHTML}
                    </body>
                    </html>
                `);
                printWindow.print();    
                printWindow.document.close();
            });
        });
    </script>
</body>
</html>
