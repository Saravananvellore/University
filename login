<?php
include_once('db.php');

?>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Form</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
    </head>
    <body style="background-color:pink;font-size:16px;">
        <div style="background-color:#ccc;margin:0 auto;border:1px solid #eee; border-radius:5px; width:500px; height:auto; margin-top:30px;padding:30px;">
            <h1 style="text-align:center;">Login Form</h1>
            <form method="post" name="frmLogin" id="frmLogin" action="dashboard.php">
                <div style="text-align:center;padding:10px;">
                    <label>Username:</label>
                    <input type="text" name="username" value="" placeholder="Enter username" maxlength="30" required/>
                </div>
                <div style="text-align:center;padding:10px;">
                    <label>Password:</label>
                    <input type="password" name="password" value="" placeholder="Enter Password" maxlength="15" required/>
                </div>

                <div  style="text-align:center;padding:10px;">
                    <input type="submit" name="submit_button" value="SUBMIT">
                </div>

            </form>
        </div>

        <script language="javascript">
        $(document).ready(function(){
            $("#frmLogin").validate({
                rules:{
                    username:{
                        required:true,
                        minlength:5,                                              
                    },
                    password:{
                        required: true,
                        minlength:5,
                    }
                },
                messages:{
                    username:{
                         required:  "Please enter User name",
                         minlength :"Please Enter min characters 5",                                        
                    },
                    password:{
                         required:  "Please enter password",
                         minlength :"Please Enter min characters 5",                        
                    }                   

                }
            });
        });

    </script>

    <body>
</html>


