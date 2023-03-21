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
  <body style="  width: 100%; height: 800px;background-image: url('https://c4.wallpaperflare.com/wallpaper/634/686/460/gotham-2014-james-gordon-harvey-bullock-wallpaper-preview.jpg'); background-size: 100% 100%;" >
    <div class="container">
        <div class="d-flex justify-content-center ">
            <div class="row border border-warning rounded-8 mt-5" style="  max-width: 480px; height: 100%;background-image: url('https://c4.wallpaperflare.com/wallpaper/619/242/360/david-mazouz-5k-tv-series-gotham-season-4-wallpaper-preview.jpg'); background-repeat: no-repeat;background-size: contain;">
              
                    <h2 class="font-monospace">UpLoad</h2>
                    <form
                      action="/PS24487_NgocHoai_Lab3/home-hoaiNong"
                      method="post"
                      enctype="multipart/form-data"
                     >
                    <div class="form-group">
                      <label for="formFileMultiple" for="validationServer01" class="form-label">Chọn Hình Đẹp:</label>
                      <input class="form-control" type="file" id="formFileMultiple"  name="photo_file" id="validationServer01"  required multiple />
                    </div>
                   
                    <div class="form-group">
                      <label for="formFileMultiple" for="validationServer02" class="form-label">Chọn File Hay:</label>
                      <input class="form-control" type="file" id="formFileMultiple"  name="doc_file" id="validationServer02"  required multiple />
                      </div>
                      <hr />
                      <button type="submit" class="btn btn-primary mb-3">UpLoad</button>
                    </form>
               
          
            </div>
        </div>
        
      
    </div>
  </body>
</html>
