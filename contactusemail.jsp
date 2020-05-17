<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<% 
    String to,from,host;
    String name,college,email,qus;
    name=request.getParameter("name");
    college=request.getParameter("college");
    email=request.getParameter("email");
    qus=request.getParameter("question");
    to="nidhisingh773033@gmail.com"; //recipient email ID
    from="nidhipranjali7791@gmail.com"; //sender email ID
    host="smtp.gmail.com"; //Gmail host
    final String username="nidhipranjali7791@gmail.com";   //sender gmail
    final String password="ilovemymoto333";    //sender password
    Properties obj=new Properties();
    obj.put("mail.smtp.auth","true");
    obj.put("mail.smtp.starttls.enable","true");
    obj.put("mail.smtp.host",host);
    obj.put("mail.smtp.port","587");
    Session mailsession=Session.getInstance(obj,new javax.mail.Authenticator()
    { 
        protected PasswordAuthentication getPasswordAuthentication()
        {
            return new PasswordAuthentication(username,password);
        }
    }
    );
    try
    {
        MimeMessage message=new MimeMessage(mailsession);   //creating message object for email
        message.setFrom(new InternetAddress(from)); //setting the internet address of sender
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(to));  //setting the internet address of recipient
        message.setSubject("I have a question to ask?");  //email subject
        message.setText("Name:"+name+"\n"+"College:"+college+"\n"+"Email:"+email+"\n"+"Question:"+qus); //email content of body
        Transport.send(message);    //sending email
        response.sendRedirect("contact.html");
    }
    catch(Exception e)
    {
        out.println("Exception="+e);
    }
%>