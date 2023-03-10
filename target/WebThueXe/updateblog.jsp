<%@ page import="vn.edu.hcmuaf.fit.model.Blog" %>
<%@ page contentType="text/html; charset =UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Đăng bài viết</title>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css1/all.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css1/ionicons.min.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="css1/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <aside class="main-sidebar sidebar-dark-primary elevation-4">

    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="image/AdminLTELogo.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Admin</a>
        </div>
      </div>

      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
            data-accordion="false">
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Quản lý bài viết
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./fromdangbai.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Đăng bài viết</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="fromdsbaiviet.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách bài viết</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-motorcycle"></i>
              <p>
                Quản lý sản phẩm
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="addProduct.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm sản phẩm</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./removeProduct.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Xóa sản phẩm</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="updateProduct.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sửa thông tin</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Danh mục sản phẩm
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./newProduct.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sản phẩm mới </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="list_product.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách sản phẩm</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Quản lý user
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./newUser.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Khách hàng mới </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="listUser.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách khách hàng</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="./updateUserAdmin.html" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Cập nhật thông tin admin
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-arrow-right"></i>
              <p>
                Đăng xuất
              </p>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </aside>

  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Sửa thông tin</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Sửa thông tin</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Sửa thông tin</h3>
            </div>
            <form action="editBlog" method="post" role="form">
              <div class="card-body">
                <%Blog blog = (Blog) request.getAttribute("update"); %>
                <div class="form-group">
                  <label for="examplid">Mã bài viết</label>
                  <input value="<%=blog.getId()%>" name="id" type="text" readonly id="examplid" placeholder="id">
                </div>
                <div class="form-group">
                  <label >Người đăng</label>
                  <input value="<%=blog.getUser()%>" name="user" type="text" class="form-control"  placeholder="Loại sản phẩm">
                </div>
                <div class="form-group">
                  <label for="examplename">Tên bài viết</label>
                  <input value="<%=blog.getName()%>" name="name" type="text" class="form-control" id="examplename" placeholder="Tên sản phẩm">
                </div>
                <div class="form-group">
                  <label >Hình Ảnh</label>
                  <input value="<%=blog.getImg()%>" name="image" type="text" class="form-control"  placeholder="Loại sản phẩm">
                </div>

                <div class="form-group">
                  <label for="examplprice">Ngày đăng</label>
                  <input value="<%=blog.getDate()%> " name="date" class="form-control" type="text"  id="examplprice" placeholder="">
                </div>
                <div class="form-group">
                  <label for="examplprice">Nội dung</label>
                  <input value="<%=blog.getCotent()%>"type="text" name="content" class="form-control"  placeholder="">
                </div>
                <div class="form-group">
                  <label for="examplprice">Tiêu đề 1</label>
                  <input value="<%=blog.getTitle1()%>"type="text" name="title1" class="form-control"  placeholder="">
                </div>
                <div class="form-group">
                  <label for="examplprice">Nội dung 1</label>
                  <textarea value=""type="text"rows="5" name="content1" class="form-control" placeholder=""><%=blog.getContent1()%></textarea>
                </div>
                <div class="form-group">
                  <label for="examplprice">Tiêu đề 2</label>
                  <input value="<%=blog.getTitle2()%>"type="text" name="title2"  class="form-control" placeholder="">
                </div>
                <div class="form-group">
                  <label for="examplprice">Nội dung 2</label>
                  <textarea value=""type="text"rows="5" name="content2"  class="form-control" placeholder=""><%=blog.getContent2()%></textarea>
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Sửa thông tin</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer class="main-footer">
  </footer>
</div>
<script src="js1/jquery.min.js"></script>
<script src="js1/bootstrap.bundle.min.js"></script>
<script src="js1/adminlte.min.js"></script>
<script src="js1/demo.js"></script>
</body>
</html>
