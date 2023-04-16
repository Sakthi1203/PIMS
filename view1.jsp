<%@ page import = "java.sql.*"%>
<%
HttpSession sess = request.getSession(false);
String username = String.valueOf(sess.getAttribute("rusername"));
try{
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","123456");
    String sql = "select * from pinformation where rusername=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, username);
    ResultSet rs = ps.executeQuery();
    if (rs.next())
    {
%>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500;600;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <style>
            body
            {           
            background: #f4f3f8; 
            background: -moz-linear-gradient(45deg,  #f4f3f8 3%, #e0e6fc 24%, #bdd0fb 47%, #e6ebf5 71%, #d4d4f6 100%); 
            background: -webkit-linear-gradient(45deg,  #f4f3f8 3%,#e0e6fc 24%,#bdd0fb 47%,#e6ebf5 71%,#d4d4f6 100%); 
            background: linear-gradient(45deg,  #f4f3f8 3%,#e0e6fc 24%,#bdd0fb 47%,#e6ebf5 71%,#d4d4f6 100%); 
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f4f3f8', endColorstr='#d4d4f6',GradientType=1 ); 
            }
            .viewdetails
            {
                background-color:#fff9f9;
                width:865px;
                margin-top: 80px;;
                padding: 30px;
                position: relative;
                left: 320px;
                bottom: 90px;
                border-radius: 20px;
                font-family: 'Poppins', sans-serif;
            }
            .User
            {
                font-family: 'Noto Sans', sans-serif;
                font-weight: 800;
                font-size: 50px;
                position: relative;
                letter-spacing: 1px;;
                bottom:10px;
                
                margin-bottom: 0;
            }
            .btn
            {
                background-color:#1D0D90;
                border: none;
                position: relative;
                padding:6px 6px;
                width:85px;
                top: 20px;
                left:350px;
            }
            .image
            {
                border-radius: 100px;
                position: relative;
                top:50px;
                left: 150px;
                z-index: 1;
            }
            .region
            {
                
                position: relative;
                top: 250px;
                left:200px;
            }

            .table1
            {
                border-spacing: 10px;
                border: dashed;
                padding-top: 20px;
                font-family: 'Roboto Slab', serif;
                font-weight: lighter;
                border-collapse: separate;
            }
            
            
        </style>
        
        
        <img src="img/view1.png" class="image" width="200">
            <form action="index.html">
            <div class="viewdetails">

                <h2 class="User">Hello <% out.print(rs.getString(1));%>!</h2>
                <table  class="table1" cellpadding="10px" border="1px"  width="800px" rules="rows">
                    <tr>
                        <td class="heading"><strong>First Name</strong></td>
                        <td><% if(rs.getString(2)==null){out.print("Not entered");}else{out.print(rs.getString(2));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Last Name</strong></td>
                        <td><% if(rs.getString(3)==null){out.print("Not entered");}else{out.print(rs.getString(3));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Date Of Birth</strong></td>
                        <td><% if(rs.getString(4)==null){out.print("Not entered");}else{out.print(rs.getString(4));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Height</strong></td>
                        <td><% if(rs.getString(5)==null){out.print("Not entered");}else{out.print(rs.getString(5));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Weight</strong></td>
                        <td><% if(rs.getString(6)==null){out.print("Not entered");}else{out.print(rs.getString(6));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Blood Group</strong></td>
                        <td><% if(rs.getString(7)==null){out.print("Not entered");}else{out.print(rs.getString(7));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Nationality</strong></td>
                        <td><% if(rs.getString(8)==null){out.print("Not entered");}else{out.print(rs.getString(8));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Religion</strong></td>
                        <td><% if(rs.getString(9)==null){out.print("Not entered");}else{out.print(rs.getString(9));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Mother Tongue</strong></td>
                        <td><% if(rs.getString(10)==null){out.print("Not entered");}else{out.print(rs.getString(10));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Caste</strong></td>
                        <td><% if(rs.getString(11)==null){out.print("Not entered");}else{out.print(rs.getString(11));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Email ID</strong></td>
                        <td><% if(rs.getString(12)==null){out.print("Not entered");}else{out.print(rs.getString(12));}%></td>
                    </tr><tr>
                        <td class="heading"><strong>Gender</strong></td>
                        <td><% if(rs.getString(13)==null){out.print("Not entered");}else{out.print(rs.getString(13));}%></td>
                    </tr><tr>
                        <td class="heading"><strong>Phone Number</strong></td>
                        <td><% if(rs.getString(14)==null){out.print("Not entered");}else{out.print(rs.getString(14));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Aadhar Number</strong></td>
                        <td><% if(rs.getString(15)==null){out.print("Not entered");}else{out.print(rs.getString(15));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>PAN Number</strong></td>
                        <td><% if(rs.getString(16)==null){out.print("Not entered");}else{out.print(rs.getString(16));}%></td>
                    </tr>
                    <tr>
                        <td class="heading"><strong>Hobbies</strong></td>
                        <td><% if(rs.getString(17)==null){out.print("Not entered");}else{out.print(rs.getString(17));}%></td>
                    </tr>
                    <tr>
                        <td>
                            <Strong class="heading">Qualification</Strong><br/><br/><br/><br/><br/><br/><br/>
                        </td>
                <td>
                <table cellpadding="13px">
                <tr>
                    <td align="center" class="heading"><b>SI.no</b></td>
                    <td align="center" class="heading"><b>&nbsp&nbsp&nbsp&nbspExamination</b></td>
                    <td align="center" class="heading"><b>Board</b></td>
                    <td align="center" class="heading"><b>Percentage</b></td>
                    <td align="center" class="heading"><b>Passed out</b></td>
                </tr>
                <tr>
                    <td class="heading"><Strong>1</Strong></td>
                    <td class="heading"><strong>Class X</strong></td>
                    <td><% if(rs.getString(18)==null){out.print("Not entered");}else{out.print(rs.getString(18));}%></td>
                    <td><% if(rs.getString(19)==null){out.print("Not entered");}else{out.print(rs.getString(19));}%></td>
                    <td><% if(rs.getString(20)==null){out.print("Not entered");}else{out.print(rs.getString(20));}%></td>
                </tr>
                <tr>
                    <td class="heading"><Strong>2</Strong></td>
                    <td class="heading"><strong>Class XII</strong></td>
                    <td><% if(rs.getString(21)==null){out.print("Not entered");}else{out.print(rs.getString(21));}%></td>
                    <td><% if(rs.getString(22)==null){out.print("Not entered");}else{out.print(rs.getString(22));}%></td>
                    <td><% if(rs.getString(23)==null){out.print("Not entered");}else{out.print(rs.getString(23));}%></td>
                </tr>
                <tr>
                    <td class="heading"><Strong>3</Strong></td>
                    <td class="heading"><strong>Graduation</strong></td>
                    <td><% if(rs.getString(24)==null){out.print("Not entered");}else{out.print(rs.getString(24));}%></td>
                    <td><% if(rs.getString(25)==null){out.print("Not entered");}else{out.print(rs.getString(25));}%></td>
                    <td><% if(rs.getString(26)==null){out.print("Not entered");}else{out.print(rs.getString(26));}%></td>
                </tr>
                <tr>
                    <td class="heading"><Strong>4</Strong></td>
                    <td class="heading"><strong>Masters</strong></td>
                    <td><% if(rs.getString(27)==null){out.print("Not entered");}else{out.print(rs.getString(27));}%></td>
                    <td><% if(rs.getString(28)==null){out.print("Not entered");}else{out.print(rs.getString(28));}%></td>
                    <td><% if(rs.getString(29)==null){out.print("Not entered");}else{out.print(rs.getString(29));}%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td align="center"></td>
                    <td align="center"></td>
                </tr>
            </table>
            <tr>
                <td class="heading"><strong>Address</strong></td>
                <td><% if(rs.getString(30)==null){out.print("Not entered");}else{out.print(rs.getString(30));}%></td>
            </tr>
            <tr>
                <td class="heading"><strong>City</strong></td>
                <td><% if(rs.getString(31)==null){out.print("Not entered");}else{out.print(rs.getString(31));}%></td>
            </tr>
            <tr>
                <td class="heading"><strong>PIN Code</strong></td>
                <td><% if(rs.getString(32)==null){out.print("Not entered");}else{out.print(rs.getString(32));}%></td>
            </tr>
            <tr>
                <td class="heading"><strong>State</strong></td>
                <td><% if(rs.getString(33)==null){out.print("Not entered");}else{out.print(rs.getString(33));}%></td>
            </tr>
            <tr>
                <td class="heading"><strong>Country</strong></td>
                <td><% if(rs.getString(34)==null){out.print("Not entered");}else{out.print(rs.getString(34));}%></td>
            </tr>
            
            </table>
            <input class="btn btn-primary" type="submit" value="Close">
        </div>
        </form>       
            
            
        
    </body>
</html>
<% }
 else
{
    out.print("Sorry! Nothing fetched!");
}
}
catch(Exception e)
{
    out.print(e);
}
%>



