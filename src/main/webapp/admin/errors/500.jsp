<%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 21/05/2022
  Time: 9:47 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Admin - 500</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="/admin/assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/admin/assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="/admin/assets/css/style.css">
  <link rel="stylesheet" href="/admin/assets/css/components.css">
  <!-- Start GA -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-94034622-3');
  </script>
  <!-- /END GA --></head>

<body>
<div id="app">
  <section class="section">
    <div class="container mt-5">
      <div class="page-error">
        <div class="page-inner">
          <h1>500</h1>
          <div class="page-description">
            <%=request.getAttribute("message")%>
          </div>
          <div class="page-search">
            <form>
              <div class="form-group floating-addon floating-addon-not-append">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <i class="fas fa-search"></i>
                    </div>
                  </div>
                  <input type="text" class="form-control" placeholder="Search">
                  <div class="input-group-append">
                    <button class="btn btn-primary btn-lg">
                      Search
                    </button>
                  </div>
                </div>
              </div>
            </form>
            <div class="mt-3">
              <a href="/admin/home">Back to Home</a>
            </div>
          </div>
        </div>
      </div>
      <div class="simple-footer mt-5">
        Copyright &copy; Stisla <script>document.write(new Date().getFullYear());</script>
      </div>
    </div>
  </section>
</div>

<!-- General JS Scripts -->
<script src="/admin/assets/modules/jquery.min.js"></script>
<script src="/admin/assets/modules/popper.js"></script>
<script src="/admin/assets/modules/tooltip.js"></script>
<script src="/admin/assets/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="/admin/assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="/admin/assets/modules/moment.min.js"></script>
<script src="/admin/assets/js/stisla.js"></script>

<!-- JS Libraies -->

<!-- Page Specific JS File -->

<!-- Template JS File -->
<script src="/admin/assets/js/scripts.js"></script>
<script src="/admin/assets/js/custom.js"></script>
</body>

</html>
