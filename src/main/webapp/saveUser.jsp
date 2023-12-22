<%@ page import="com.example.model.User, com.example.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session, org.hibernate.Transaction" %>
<%@ page import="java.util.Date, java.text.ParseException, java.text.SimpleDateFormat" %>
<%@ page import="java.util.List" %>
<%
    String name = request.getParameter("name");
    String birthdateStr = request.getParameter("birthdate");
    String email = request.getParameter("email");
    String whatsapp = request.getParameter("whatsapp");
    String linkedin = request.getParameter("linkedin");
    String website = request.getParameter("website");
    String education = request.getParameter("education");
    String interests = request.getParameter("interests");
    String skills = request.getParameter("skills");
    String projects = request.getParameter("projects");
    String internships = request.getParameter("internships");
    boolean openToWork = "true".equalsIgnoreCase(request.getParameter("openToWork"));

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    Date birthdate = null;
    Session hibernateSession = HibernateUtil.getSessionFactory().openSession();
    Transaction transaction = null;

    try {
        birthdate = dateFormat.parse(birthdateStr);

        User user = new User(name, birthdate, email, whatsapp, linkedin, website,
                education, interests, skills, projects, internships, openToWork);

        transaction = hibernateSession.beginTransaction();

        hibernateSession.save(user);

        transaction.commit();

        List<User> users = hibernateSession.createQuery("from User", User.class).list();

        request.setAttribute("users", users);
    } catch (ParseException e) {
        e.printStackTrace();
        out.println("Error parsing birthdate.");
    } catch (Exception e) {
        if (transaction != null) {
            transaction.rollback(); // Rollback the transaction in case of error
        }
        e.printStackTrace();
        out.println("Error adding user to the database.");
    } finally {
        if (hibernateSession != null && hibernateSession.isOpen()) {
            hibernateSession.close();
        }
    }
%>

<jsp:forward page="display.jsp"/>
