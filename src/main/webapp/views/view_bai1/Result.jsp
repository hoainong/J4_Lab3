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
  <body
  style="
  width: 100%;
  height: 800px;
  background-image: url('https://c4.wallpaperflare.com/wallpaper/1021/871/632/autumn-bmw-bmw-car-bmw-4-series-hd-wallpaper-preview.jpg');
  background-size: 100% 100%;
"
  >
    <div class="container">
      <div class="d-flex justify-content-center ">
        <form class="border border-primary mt-5 rounded-8 bg-light "   style="width: 600px;height: 500px;"  >
            <div class="form-group d-flex justify-content-center ">
                <label class="form-label">Tên Image : <b>${img.name}</b></label>
           
                <img
                  src="/PS24487_NgocHoai_Lab3/files/${img.name}"
                  height="200"
                />
              </div>
      
              <div class="form-group d-flex justify-content-center ">
                <label class="form-label">
                  <b>Document: </b> 
                  </label>
                  <p>${doc.name}</p>
              </div>
              <div class="form-group d-flex justify-content-center ">
                  <a type="button" class="btn btn-outline-success"  href="PS24487_NgocHoai_Lab3/files/${doc.name}">Tải về</a>
              </div>
        </form>
        

          
        </div>
      </div>
    </div>
  </body>
</html>
