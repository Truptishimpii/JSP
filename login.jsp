<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
     <!--Links -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

     <!--Style of login page-->
     <style>
          body{
               background: white;
          }

          .box-area{
               width: 930px;
          }

          .right-box{
               padding: 40px 30px 40px 40px;
          }

          ::placeholder{
               font-size: 16px;
          }

          @media only screen and (max-width:768px) {
               .box-area{
                    margin: 0 100px;

               }

               .left-box{
                    height: 100px;
                    overflow: hidden;
               }

               .right-box{
                    padding: 20px;
               }
          }

     </style>

</head>
<body>

     <!--main container-->
     <div class="container d-flex justify-content-center align-items-center min-vh-100">


     <!--login container-->
     <div class="row border rounded-5 p-3 bg-white shadow box-area">
     

     <!--left box-->
          <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background: rgb(202, 159, 79);">
               <div class="featured-image mb-3 ">
                    <img src="images/login-01.jpg" class="img-fluid" style="width: 250px;">
               </div>
               <p class="text-white fs-2" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;" >Be Verified</p>
               <small class="text-white text-wrap text-center" style="width: 17rem; font-family: 'Courier New', Courier, monospace;">Experience the joy of food !!</small>
          </div>

     <!--right box-->
     <div class="col-md-6 right-box">
     <form action="login_logic.jsp" method="post">
          <div class="row align-items-center">
               <div class="header-text mb-4">
                    <h1>Hello Customer's!!</h1>
                    <p>We are happy to have you back.</p>
               </div>
               
               <div class="input-group mb-3">
                    <input type="email" name="email" class="form-control form-control-lg bg-light fs-6" placeholder="Email Address">
               </div>
               <div class="input-group mb-1">
                    <input type="password" name="pwd" class="form-control form-control-lg bg-light fs-6" placeholder="Password">
               </div>
               <div class="input-group mb-5 d-flex justify-content-between">
                    <div class="form-check">
                         <input type="checkbox" class="form-check-input" id="formCheck">
                         <label for="formCheck" class="form-check-label text-secondary">
                              <small>Remember me</small>
                         </label>
                    </div>
                    <div class="forgot">
                         <small> <a href="#">Forget Password?</a> </small>
                    </div>
               </div>
               <div class="input-group mb-3">
                     <button type="submit" class="btn btn-lg btn-outline-warning w-100 fs-6 ">Login</button>
               </div>
               <div class="input-group mb-3">
                    <button class="btn btn-lg btn-light w-100 fs-6  ">
                         <img src="images/google.png" width="20" class="me-2" ><small>Sign In With Google</small>
                    </button>
               </div>
               <div class="row">
                    <small>Don't Have account ? <a href="result_cookies.jsp">Sign Up</a> </small>
               </div>

          </div>
          </form>
          
          
         <a href="result_cookies.jsp"><button>Cookies</button></a> 
     </div>

     </div>
     </div>
     
     
</body>
</html>
