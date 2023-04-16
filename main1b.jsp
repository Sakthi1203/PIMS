<%@ page import = "java.sql.*"%>
<%
HttpSession sess = request.getSession(false);
String username = String.valueOf(sess.getAttribute("rusername"));
String firstname = request.getParameter("tfname");
String lastname = request.getParameter("tlname");
String date= request.getParameter("tdate");
String height = request.getParameter("theight");
String weight = request.getParameter("tweight");
String bloodgroup = request.getParameter("tbgroup");
String Nationaliy = request.getParameter("tnationality");
String religion = request.getParameter("treligion");
String mothertongue = request.getParameter("tmothertongue");
String caste = request.getParameter("tcaste");
String emailID = request.getParameter("temailid");
String gender = request.getParameter("tgender");
String phonenumber = request.getParameter("tphoneno");
String aadharno = request.getParameter("taadhar");
String pan = request.getParameter("tpan");
String hobbies = request.getParameter("thobbies");
String Xmark = request.getParameter("tClassX_Board");
String Xpercent = request.getParameter("tClassX_Percentage");
String Xyear = request.getParameter("tClassX_Year_of_passing");
String Xiimark = request.getParameter("tClassXII_Board");
String Xiipercent = request.getParameter("tClassXII_Percentage");
String Xiiyear = request.getParameter("tClassXII_Year_of_passing");
String Bmark = request.getParameter("tGraduation_Board");
String Bpercent = request.getParameter("tGraduation_Percentage");
String Byear = request.getParameter("tGraduation_Year_of_passing");
String Mmark = request.getParameter("tMasters_Board");
String Mpercent = request.getParameter("tMasters_Percentage");
String Myear = request.getParameter("tMasters_Year_of_passing");
String address = request.getParameter("taddress");
String city = request.getParameter("tcity");
String pincode = request.getParameter("tPin_code");
String state = request.getParameter("tstate");
String country = request.getParameter("tcountry");





    try{
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","123456");
        PreparedStatement ps = conn.prepareStatement("insert into pinformation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,username);
        ps.setString(2,firstname);
        ps.setString(3,lastname);
        ps.setString(4,date);
        ps.setString(5,height);
        ps.setString(6,weight);
        ps.setString(7,bloodgroup);
        ps.setString(8,Nationaliy);
        ps.setString(9,religion);
        ps.setString(10,mothertongue);
        ps.setString(11,caste);
        ps.setString(12,emailID);
        ps.setString(13,gender);
        ps.setString(14,phonenumber);
        ps.setString(15,aadharno);
        ps.setString(16,pan);
        ps.setString(17,hobbies);
        ps.setString(18,Xmark);
        ps.setString(19,Xpercent);
        ps.setString(20,Xyear);
        ps.setString(21,Xiimark);
        ps.setString(22,Xiipercent);
        ps.setString(23,Xiiyear);
        ps.setString(24,Bmark);
        ps.setString(25,Bpercent);
        ps.setString(26,Byear);
        ps.setString(27,Mmark);
        ps.setString(28,Mpercent);
        ps.setString(29,Myear);
        ps.setString(30,address);
        ps.setString(31,city);
        ps.setString(32,pincode);
        ps.setString(33,state);
        ps.setString(34,country);
        
        
        int x = ps.executeUpdate();
        if(x!=0){%>
            <!DOCTYPE html>
            <html lang="en">
            <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Registration form</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500@600@700&display=swap" rel="stylesheet">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500@800&display=swap" rel="stylesheet">
    
            </head>
            <body>
                <style>
                    body
                    {
                        background-color: #c8d0f0;
                        margin:0;
                        padding:0;
                        overflow:hidden;
                    }
                    .square
                    {
                        width:1100px;
                        height:600px;
                        background-color: white;
                        position: relative;
                        top: 65px;
                        left: 200px;
                        filter: drop-shadow(3px 3px 4px rgb(73, 71, 71));
                        border: none;
                        border-radius: 20px;
            
                    }
                    .welcome
                    {
                        width:50%;
                        position: relative;
                        left:550px;
                        top: 50px;
            
                    }
                    .circle
                    {
                        width:80%;
                        position: relative;
                        bottom: 800px;
                        right: 179px;
                        opacity: 60%;
                    }
                    .circle1
                    {
                        width:200px;
                        position: relative;
                        bottom: 930px;
                        right: 440px;
                    }
                    h1
                    {
                        position: relative;
                        bottom: 470px;
                        left: 155px;
                        font-family: 'Poppins', sans-serif;
                        font-weight: bolder;
                        font-size: 65px;
                    }
                    h3
                    {
                        position: relative;
                        bottom:460px;
                        left:100px;
                        width: 300px;
                        font-family: 'Poppins', sans-serif;
                        font-weight: 600 ;
                    }       
        
                    .btn
                    {
                        background-color:#1D0D90;
                        border: none;
                        position: relative;
                        padding:6px 6px;
                        width:160px;
                        height: 60px;
                        bottom: 850px;
                        left:160px;
                        font-family: 'Poppins', sans-serif;
                        font-weight: 600 ;
                        font-size: 20px;
          
                    }
        
                </style>
                <form action="view1.jsp" method="post">
                    <div class="square" >
                        <img src="img/welcome.png" alt="" class="welcome">
                        <h1>Hello!</h1>
                        <h3>You have successfully &nbsp&nbsp&nbspstored your data..</h3>
                        <img src="img/circle.png" alt="" class="circle">
                        <img src="img/circle.png" alt="" class="circle1">
                        <input class="btn btn-primary" type="submit" value="View data">
                    </div>
                </form>
   
            </body>
            </html>
        
       <% }
        else{
            out.print("Something went wrong...");
        }
    }
    catch(Exception e)
    {
        out.print(e);
    }
    

%>