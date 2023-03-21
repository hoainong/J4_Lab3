<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Thông tin cá nhân</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Font Awesome -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
      rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
      rel="stylesheet"
    />
    <!-- MDB -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css"
      rel="stylesheet"
    />
    <!-- MDB -->
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"
    ></script>
  </head>
  <body>
    <div class="container">
      <div class="d-flex justify-content-center ">
        <form action="/PS24487_NgocHoai_Lab3/email" method="post" class="border border-primary mt-5 rounded-8 bg-info "   style="width: 600px;height: 500px;"  >
            <h1>SEND EMAIL</h1>
            
            <div class="form-group m-3">
              <label >TO: </label>
              <input type="text" name="to" class="form-control" >
            </div>
            <div class="form-group m-3">
              <label >Subject: </label>
              <input type="text" name="subject" class="form-control" >
            </div>
            <div class="form-group m-3">
              <label for="exampleFormControlTextarea1">Body</label>
              <textarea class="form-control" name="body" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
              <div class="form-group d-flex justify-content-center mt-2 ">
                  <button type="submit" class="btn btn-success"  >Send</button>
              </div>
        </form>
        </div>
      </div>
    </div>
  </body>
</html>