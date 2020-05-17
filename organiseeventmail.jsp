<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<% 
    String to,from,host;
    String name,college,branch,year,id,email,contact,ename,edesc;
    name=request.getParameter("name");
    college=request.getParameter("college");
    branch=request.getParameter("branch");
    year=request.getParameter("year");
    id=request.getParameter("id");
    email=request.getParameter("email");
    contact=request.getParameter("contact");
    ename=request.getParameter("ename");
    edesc=request.getParameter("edescription");
    to="aarizanomaly@gmail.com"; //recipient email ID
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
        message.setSubject("Application for organizing an event in the college.");  //email subject
        message.setText("Name: "+name+"\n"+"College: "+college+"\n"+"Branch: "+branch+"\n"+"Year: "+year+"\n"+"College ID: "+id+"\n"+"Email :"+email+"\n"+"Contact: "+contact+"\n"+"Event Name: "+ename+"\n"+"Event Details: "+edesc); //email content of body
        Transport.send(message);    //sending email
        response.sendRedirect("organizeevent.html");
    }
    catch(Exception e)
    {
        out.println("Exception="+e);
    }
%>