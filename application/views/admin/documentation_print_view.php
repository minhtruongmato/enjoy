<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin Mato Creative | Documentation</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>fontAwesome/css/font-awesome.min.css">
    <!-- Google Font -->
    <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,700,700i" rel="stylesheet">
    <!-- Documentation Style -->
    <link rel="stylesheet" href="<?php echo site_url('assets/') ?>sass/admin/documentation.css">

    <!-- jQuery 3 -->
    <script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="<?php echo site_url('assets/lib/') ?>bootstrap/js/bootstrap.min.js"></script>

</head>
<body onload="window.print()">

<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url('admin');?>">Admin Controller</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="http://matocreative.vn" target="_blank">Mato Creative</a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>


    <section class="main-content container-fluid">
        <div class="row">
            <div class="left col-md-3 col-sm-4 col-xs-12">

                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading"><b>User</b>Guide</div>
                    <div class="panel-body">
                        <p>Hướng dẫn sử dụng trang quản lý Admin website enjoyvietnam.vn</p>
                    </div>

                    <!-- List group -->
                    <ul class="list-group">
                        <li class="list-group-item">
                            <a href="#1">Đăng nhập</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#2">Dashboard</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#3">Danh mục bài viết</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#4">Danh sách bài viết</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#5">Danh mục tour</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#6">Danh sách tour</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#7">Danh sách địa điểm</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#8">Đặt tour </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#9">Tùy biến khách hàng </a>
                        </li>
                    </ul>
                    <div class="panel-footer">
                        <a href="<?php echo base_url('admin/documentation/printfile') ?>" class="btn btn-default" role="button" target="_blank">
                            <i class="fa fa-print" aria-hidden="true"></i> In tài liệu
                        </a>
                    </div>
                </div>
            </div>
            <div class="right col-md-9 col-sm-8 col-xs-12">
                <div class="content">
                    <div class="main-title" id="top">
                        <h1>User Guide</h1>
                        <h3>Website: enjoyvietnam.vn</h3>
                        <h4>Author: Mato Creative | Email: hello@matocreative.vn</h4>
                        <p>Date Created: 20/07/2018</p>
                    </div>
                    <ol>
                        <li id="1">Đăng nhập</li>
                            <p>User nhập vào thanh địa chỉ trên trình duyệt đường dẫn</p>
                            <a href="http://ngochuong.vn/admin" target="_blank">enjoyvietnam.vn/admin</a>
                            <p>Hiển thị trên trang:</p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>login.png" alt="ảnh đăng nhập" style="width: 500px;height: 500px;">
                            <p>User nhập thông tin đăng nhập như sau:</p>
                            <p>Username: <b>admin@admin.com</b></p>
                            <p>Password: <b>password</b></p>
                            <p>Sau khi đăng nhập thành công, sẽ chuyển sang trang <a href="#2">Dashboard</a></p>

                        <li id="2">Dashboard</li>
                            <p>Hiển thị trên trang:</p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>dashboard.png" alt="ảnh màn hình giới thiệu" style="width: 100%;">
                            <p>Phần Dashboard gồm các mục chính</p>
                                <ul>
                                    <li><b>Xem tổng số tour</b>: Gồm tổng số tour và link chuyên trang xem danh sách tour.</li>
                                    <li><b>Tổng số điểm đến</b>: Gồm tổng số điểm đến và link chuyển trang xem danh sách điểm đến.</li>
                                    <li><b>Tổng số bài viết</b>: Gồm tổng số bài viết và link chuyển trang xem danh sách bài viết.</li>
                                    <li><b>Thông tin cơ bản của đặt tour</b>: Hiển thị 1 số đơn đặt tour và link chuyển trang xem danh sách đơn đặt tour theo từng loại ( chờ xử lý, Đã xác nhận, Đã hủy ).</li>
                                    <li><b>Thông tin cơ bản của tùy biến khách hàng</b>: Hiển thị 1 số tùy biến khách hàng và link chuyển trang xem danh sách tùy biến khách hàng theo từng loại ( chờ xử lý, Đã xác nhận, Đã hủy ).</li>
                                </ul>
                            <br>
                            <!-- <p><b>Chỉnh sửa Giới thiệu</b>: Click vào button "Chỉnh sửa" để tới trang Cỉnh sửa </p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>edit_about.png" alt="ảnh chỉnh sửa giới thiệu">
                            <p>Như đã thấy trên ảnh, ở từng phần chúng ta có các mục để chỉnh sửa lại nội dung trên trang. Sau khi thay đổi, click <b>OK</b> để lưu lại</p> -->

                        <li id="3">Danh mục bài viết</li>
                            <p>Hiển thị trên trang:</p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>category-blog.png" alt="ảnh màn hình slider" style="width: 100%;">
                            <p>Để xem danh sách danh mục bài viết bạn nhìn vào trong hình ảnh bạn click vào khoanh vùng số 1 rồi tiếp theo click vào khoanh vùng số 2.</p>
                            <p>Để thêm mới, click <b>"Thêm mới" (khoanh vùng số 3)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>create-category-blog.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể tạo thêm danh mục mới</p>
                            <p>Để sửa danh mục bài viết, click vào icon <b><i class="fa fa-pencil"></i> (khoanh vùng số 7)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>edit-category-blog.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể sửa danh mục bài viết</p>
                            <p>Để xoá danh mục bài viết, click vào icon <b><i class="fa fa-remove" aria-hidden="true"></i> (khoanh vùng số 8)</b></p>
                            <p>Để xem các danh mục con, click vào <b>Xem (khoanh vùng số 4)</b></p>
                            <p>Để xem chi tiết của danh mục, click vào <b>See Detail (khoanh vùng số 5)</b></p>
                            <p>Để tắt danh mục, click vào icon <b><i class="fa fa-low-vision" aria-hidden="true"></i> (khoanh vùng số 6)</b></p>
                            <p class="note">Lưu ý: Ảnh upload lên không quá 1200kb, danh mục có cấp danh mục là: <b>Danh mục cấp 1</b> không thể xóa hay tắt</p>

                        <li id="4">Danh sách bài viết</li>
                            <p>Hiển thị trên trang:</p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>blog.png" alt="ảnh màn hình slider" style="width: 100%;">
                            <p>Để xem danh sách bài viết bạn nhìn vào trong hình ảnh bạn click vào khoanh vùng số 1 rồi tiếp theo click vào khoanh vùng số 2.</p>
                            <p>Để thêm mới, click <b>"Thêm mới" (khoanh vùng số 3)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>create-blog.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể tạo thêm bài viết mới</p>
                            <p>Để sửa bài viết, click vào icon <b><i class="fa fa-pencil"></i> (khoanh vùng số 7)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>edit-blog.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể sửa bài viết</p>
                            <p>Để xoá bài viết, click vào icon <b><i class="fa fa-remove" aria-hidden="true"></i> (khoanh vùng số 8)</b></p>
                            <p>Để tìm kiếm bài viết, click vào <b>(khoanh vùng số 4) nhập tên tiêu đề của bài viết rồi click vào nút tìm kiếm</b></p>
                            <p>Để xem chi tiết của bài viết, click vào <b>See Detail (khoanh vùng số 5)</b></p>
                            <p>Để tắt bài viết, click vào icon <b><i class="fa fa-low-vision" aria-hidden="true"></i> (khoanh vùng số 6)</b></p>
                            <p class="note">Lưu ý: Ảnh upload lên không quá 1200kb</p>
                        <li id="5">Danh mục tour</li>
                            <p>Hiển thị trên trang:</p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>category-tour.png" alt="ảnh màn hình slider" style="width: 100%;">
                            <p>Để xem danh sách danh mục tour bạn nhìn vào trong hình ảnh bạn click vào khoanh vùng số 1 rồi tiếp theo click vào khoanh vùng số 2.</p>
                            <p>Để thêm mới, click <b>"Thêm mới" (khoanh vùng số 3)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>create-category-tour.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể tạo thêm danh mục mới</p>
                            <p>Để sửa danh mục tour, click vào icon <b><i class="fa fa-pencil"></i> (khoanh vùng số 7)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>edit-category-tour.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể sửa danh mục tour</p>
                            <p>Để xoá danh mục tour, click vào icon <b><i class="fa fa-remove" aria-hidden="true"></i> (khoanh vùng số 8)</b></p>
                            <p>Để xem các danh mục con, click vào <b>Xem (khoanh vùng số 4)</b></p>
                            <p>Để xem chi tiết của danh mục, click vào <b>See Detail (khoanh vùng số 5)</b></p>
                            <p>Để tắt danh mục, click vào icon <b><i class="fa fa-low-vision" aria-hidden="true"></i> (khoanh vùng số 6)</b></p>
                            <p class="note">Lưu ý: Ảnh upload lên không quá 1200kb, danh mục có cấp danh mục là: <b>Danh mục cấp 1</b> không thể xóa hay tắt</p>

                        <li id="6">Danh sách tour</li>
                            <p>Hiển thị trên trang:</p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>tour.png" alt="ảnh màn hình slider" style="width: 100%;">
                            <p>Để xem danh sách tour bạn nhìn vào trong hình ảnh bạn click vào khoanh vùng số 1 rồi tiếp theo click vào khoanh vùng số 2.</p>
                            <p>Để thêm mới, click <b>"Thêm mới" (khoanh vùng số 3)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>create-tour.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>create-tour1.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể tạo thêm tour mới</p>
                            <p>Để sửa tour, click vào icon <b><i class="fa fa-pencil"></i> (khoanh vùng số 7)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>edit-tour.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>edit-tour1.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể sửa tour</p>
                            <p>Để xoá tour, click vào icon <b><i class="fa fa-remove" aria-hidden="true"></i> (khoanh vùng số 8)</b></p>
                            <p>Để tìm kiếm tour, trong <b>(khoanh vùng số 4) có các checkbox tìm tour theo kiểu khuyến mãi,hot, bán chạy và tiêu đề tour</b></p>
                            <p>Để xem chi tiết của tour, click vào <b>See Detail (khoanh vùng số 5)</b></p>
                            <p>Để tắt tour, click vào icon <b><i class="fa fa-low-vision" aria-hidden="true"></i> (khoanh vùng số 6)</b></p>
                            <p class="note">Lưu ý: Ảnh upload lên không quá 1200kb</p>
                        <li id="7">Danh sách địa điểm</li>
                            <p>Hiển thị trên trang:</p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>location.png" alt="ảnh màn hình slider" style="width: 100%;">
                            <p>Để xem danh sách địa điểm bạn nhìn vào trong hình ảnh bạn click vào khoanh vùng số 1.</p>
                            <p>Để thêm mới, click <b>"Thêm mới" (khoanh vùng số 2)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>create-location.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể tạo thêm vị trí mới</p>
                            <p>Để sửa vị trí, click vào icon <b><i class="fa fa-pencil"></i> (khoanh vùng số 6)</b></p>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>edit-location.png" alt="ảnh màn hình tạo thêm slider" style="width: 100%;">
                            <p>Thao tác như hướng dẫn trên ảnh để có thể sửa vị trí</p>
                            <p>Để xoá vị trí, click vào icon <b><i class="fa fa-remove" aria-hidden="true"></i> (khoanh vùng số 7)</b></p>
                            <p>Để tìm kiếm vị trí, trong <b>(khoanh vùng số 3) nhập tiêu đề vị trí và click vào ( khoanh vùng số 4) để tiến hành tìm kiếm</b></p>
                            <p>Để xem chi tiết của vị trí, click vào <b>See Detail (khoanh vùng số 5)</b></p>
                            <p class="note">Lưu ý: Ảnh upload lên không quá 1200kb</p>

                        <li id="8">Đặt tour</li>
                            <p>Hiển thị trên trang</p>
                            <p>Danh sách đặt tour được chia làm 03 phần:</p>
                            <h3>Phần 1 là vừa đặt tour xong chờ xác nhận:</h3>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>inquire-waiting.png" alt="ảnh màn hình list đặt bàn">
                            <p>Ở đây ta sẽ có list danh sách các khách hàng đã đặt tour qua chế độ đặt tour qua trang.</p>
                            <p>Click số 1 rồi tiếp theo click số 2 để xem danh sách đơn đặt tour chờ xác nhận</p>
                            <p>Click số 3 rồi chọn ngày để tìm kiếm</p>
                            <p>Click số 4 rồi viết tên hoặc họ khách hàng để tìm kiếm</p>
                            <p>Khi có thông tin trong khoanh vùng số 3 hoặc khoanh vùng số 4 rồi nhấn nút tìm kiếm (khoanh vùng số 5) thì dữ liệu trả ra sẽ được lọc theo các từ khóa trong khoanh vùng số 3 và khoanh vùng số 4</p>
                            <p>Click số 6 để xem chi tiết tour mà khách hàng đăng ký</p>
                            <p>Click số 7 để xem chi tiết thông tin của khách hàng đăng ký</p>
                            <p>Click số 8 để xác nhận đơn đặt tour</p>
                            <p>Click số 9 để xem hủy bỏ đơn đặt tour</p>
                            <h3>Phần 2 đã xác nhận đơn đặt tour:</h3>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>inquire-success.png" alt="ảnh màn hình list đặt bàn">
                            <p>Ở đây ta sẽ có list danh sách các khách hàng đặt tour đã được xác nhận.</p>
                            <p>Click số 1 rồi tiếp theo click số 2 để xem danh sách đơn đặt tour đã xác nhận</p>
                            <p>Click số 3 rồi chọn ngày để tìm kiếm</p>
                            <p>Click số 4 rồi viết tên hoặc họ khách hàng để tìm kiếm</p>
                            <p>Khi có thông tin trong khoanh vùng số 3 hoặc khoanh vùng số 4 rồi nhấn nút tìm kiếm (khoanh vùng số 5) thì dữ liệu trả ra sẽ được lọc theo các từ khóa trong khoanh vùng số 3 và khoanh vùng số 4</p>
                            <p>Click số 6 để xem chi tiết tour mà khách hàng đăng ký</p>
                            <p>Click số 7 để xem chi tiết thông tin của khách hàng đăng ký</p>
                            <p>Click số 8 để xem hủy bỏ đơn đặt tour</p>
                            <h3>Phần 3 đơn đặt tour đã được hủy bỏ:</h3>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>inquire-error.png" alt="ảnh màn hình list đặt bàn">
                            <p>Ở đây ta sẽ có list danh sách các khách hàng đặt tour đã bị hủy bỏ.</p>
                            <p>Click số 1 rồi tiếp theo click số 2 để xem danh sách đơn đặt tour đã hủy bỏ</p>
                            <p>Click số 3 rồi chọn ngày để tìm kiếm</p>
                            <p>Click số 4 rồi viết tên hoặc họ khách hàng để tìm kiếm</p>
                            <p>Khi có thông tin trong khoanh vùng số 3 hoặc khoanh vùng số 4 rồi nhấn nút tìm kiếm (khoanh vùng số 5) thì dữ liệu trả ra sẽ được lọc theo các từ khóa trong khoanh vùng số 3 và khoanh vùng số 4</p>
                            <p>Click số 6 để xem chi tiết tour mà khách hàng đăng ký</p>
                            <p>Click số 7 để xem chi tiết thông tin của khách hàng đăng ký</p>
                        <li id="9">Tùy biến khách hàng</li>
                            <p>Hiển thị trên trang</p>
                            <p>Danh sách tùy biến khách hàng được chia làm 03 phần:</p>
                            <h3>Phần 1 là vừa tạo tùy biến khách hàng xong chờ xác nhận:</h3>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>customize-waiting.png" alt="ảnh màn hình list đặt bàn">
                            <p>Ở đây ta sẽ có list danh sách các khách hàng đã tạo tùy biến khách hàng qua trang.</p>
                            <p>Click số 1 rồi tiếp theo click số 2 để xem danh sách tùy biến khách hàng chờ xác nhận</p>
                            <p>Click số 3 rồi chọn ngày để tìm kiếm</p>
                            <p>Click số 4 rồi viết tên hoặc họ khách hàng để tìm kiếm</p>
                            <p>Khi có thông tin trong khoanh vùng số 3 hoặc khoanh vùng số 4 rồi nhấn nút tìm kiếm (khoanh vùng số 5) thì dữ liệu trả ra sẽ được lọc theo các từ khóa trong khoanh vùng số 3 và khoanh vùng số 4</p>
                            <p>Click số 6 để xem chi tiết thông tin của khách hàng đăng ký thay đổi</p>
                            <p>Click số 7 để xem chi tiết tour mà khách hàng đăng ký</p>
                            <p>Click số 8 để xác nhận tùy biến của khách hàng</p>
                            <p>Click số 9 để xem hủy bỏ tùy biến khách hàng</p>
                            <h3>Phần 2 đã xác nhận tùy biến khách hàng:</h3>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>customize-success.png" alt="ảnh màn hình list đặt bàn">
                            <p>Ở đây ta sẽ có list danh sách các tùy biến của khách hàng đã được xác nhận.</p>
                            <p>Click số 1 rồi tiếp theo click số 2 để xem danh sách đơn đặt tour đã xác nhận</p>
                            <p>Click số 3 rồi chọn ngày để tìm kiếm</p>
                            <p>Click số 4 rồi viết tên hoặc họ khách hàng để tìm kiếm</p>
                            <p>Khi có thông tin trong khoanh vùng số 3 hoặc khoanh vùng số 4 rồi nhấn nút tìm kiếm (khoanh vùng số 5) thì dữ liệu trả ra sẽ được lọc theo các từ khóa trong khoanh vùng số 3 và khoanh vùng số 4</p>
                            <p>Click số 6 để xem chi tiết thông tin của khách hàng đăng ký</p>
                            <p>Click số 7 để xem chi tiết tour mà khách hàng đăng ký</p>
                            <p>Click số 8 để xem hủy bỏ tùy biến của khách hàng</p>
                            <h3>Phần 3 Danh sách tùy biến khách hàng đã được hủy bỏ:</h3>
                            <img src="<?php echo site_url('assets/img/admin/ug/') ?>customize-error.png" alt="ảnh màn hình list đặt bàn">
                            <p>Ở đây ta sẽ có list danh sách các tùy biến khách hàng đã bị hủy bỏ.</p>
                            <p>Click số 1 rồi tiếp theo click số 2 để xem danh sách đơn đặt tour đã hủy bỏ</p>
                            <p>Click số 3 rồi chọn ngày để tìm kiếm</p>
                            <p>Click số 4 rồi viết tên hoặc họ khách hàng để tìm kiếm</p>
                            <p>Khi có thông tin trong khoanh vùng số 3 hoặc khoanh vùng số 4 rồi nhấn nút tìm kiếm (khoanh vùng số 5) thì dữ liệu trả ra sẽ được lọc theo các từ khóa trong khoanh vùng số 3 và khoanh vùng số 4</p>
                            <p>Click số 7 để xem chi tiết thông tin của khách hàng đăng ký</p>
                            <p>Click số 6 để xem chi tiết tour mà khách hàng đăng ký</p>


                    </ol>
                </div>
            </div>
        </div>
    </section>

</body>

<script>
    $(document).ready(function(){

    });

    $(window).scroll(function () {

        'use strict';
        if ($(window).scrollTop() > 150) {
            $('.left').addClass('sticky');
        }
        if ($(window).scrollTop() < 150) {
            $('.left').removeClass('sticky');
        }
    });
</script>

</html>