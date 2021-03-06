<!-- Content Wrapper. Contains page content -->

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Danh sách
            <small>
                Tour
            </small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <?php if ($this->session->flashdata('message_error')): ?>
                <div class="alert alert-warning alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fa fa-warning"></i> Alert!</h4>
                    <?php echo $this->session->flashdata('message_error'); ?>
                </div>
            <?php endif ?>
            <?php if ($this->session->flashdata('message_success')): ?>
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fa fa-check"></i> Alert!</h4>
                    <?php echo $this->session->flashdata('message_success'); ?>
                </div>
            <?php endif ?>
            <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash() ?>" id="csrf" />
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">
                            Tour
                        </h3>
                    </div>

                    <div class="row" style="padding: 5px;">
                        <div class="col-md-2 col-ms-12">
                            <a href="<?php echo base_url('admin/'.$controller.'/create') ?>" class="btn btn-primary" role="button">Thêm mới</a>
                        </div>
                        <div class="col-md-12 col-ms-12">
                            <form action="<?php echo base_url('admin/'.$controller.'/index') ?>" method="get">
                                <div class="checkbox col-md-7 col-ms-12">
                                    <label style="padding-right: 10px;">
                                        <input type="checkbox" name="promotion" <?php echo (!empty($promotion))? 'checked' : '';?>> Khuyến Mãi
                                    </label>
                                    <label style="padding-right: 10px;">
                                        <input type="checkbox" name="bestselling" <?php echo (!empty($bestselling))? 'checked' : '';?>> Bán Chạy
                                    </label>
                                    <label style="padding-right: 10px;">
                                        <input type="checkbox" name="hot" <?php echo (!empty($hot))? 'checked' : '';?>> Hot
                                    </label>
                                    <label>
                                        <input type="checkbox" name="banner" <?php echo (!empty($banner))? 'checked' : '';?>> banner
                                    </label>
                                    <select name="category_id" id="category_id" class="" data-url="<?php echo base_url('admin/product/check_category');?>" style="margin-left: 20px;">
                                        <option value="">Tour Top 10 </option>
                                        <option value="1" <?php echo (!empty($category_toptour) && in_array(1, $category_toptour))? 'selected' : '';?>>Tour Packages</option>
                                        <option value="2" <?php echo (!empty($category_toptour) && in_array(2, $category_toptour))? 'selected' : '';?>>Backpack travel</option>
                                    </select>
                                </div>
                                <div class="input-group col-md-5 col-ms-12">
                                    <input type="text" class="form-control" placeholder="Tìm kiếm theo tên tiêu đề..." name="search" value="<?php echo (!empty($keyword))? $keyword : '';?>">
                                    <span class="input-group-btn">
                                        <input type="submit" class="btn btn-block btn-primary" value="Tìm kiếm">
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">

                        <div class="table-responsive">
                            <table id="table" class="table table_product">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Hình ảnh</th>
                                    <th>Tiêu đề</th>
                                    <th>Danh mục</th>
                                    <th>Trạng thái</th>
                                    <th>Detail</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if(isset($result) && $result): ?>
                                <?php $i = 1; ?>
                                <?php foreach ($result as $key => $value): ?>
                                    <tr class="remove_<?php echo $value['id'] ?>">
                                        <td><?php echo $i++ ?></td>
                                        <td>
                                            <div class="mask_sm">
                                                <?php if (!empty($value['image'])): ?>
                                                    <img src="<?php echo base_url('assets/upload/'.$controller.'/'.$value['slug'].'/' .$value['image']) ?>" alt="anh-cua-<?php echo $value['slug'] ?>" width=150px>
                                                <?php else: ?>
                                                    Chưa có Ảnh.
                                                <?php endif ?>
                                            </div>
                                        </td>
                                        <td><?php echo $value['title'] ?></td>
                                        <td><?php echo $value['parent_title'] ?></td>
                                        <td>
                                            <?php echo ($value['is_activated'] == 0)? '<span class="label label-success">Đang sử dụng</span>' : '<span class="label label-warning">Không sử dụng</span>'; ?>   
                                        </td>
                                        <td>
                                            <a href="<?php echo base_url('admin/'.$controller.'/detail/'.$value['id']) ?>"
                                            <button class="btn btn-default btn-sm" type="button" data-toggle="collapse" data-target="#collapse_1" aria-expanded="false" aria-controls="collapse_1">Xem chi tiết</button>
                                        </td>
                                        <td>
                                            <?php if ($value['is_activated'] == 0): ?>
                                                <a href="javascript:void(0);" onclick="deactive('<?php echo $controller; ?>', <?php echo $value['id'] ?>, 'Chăc chắn tắt')" class="dataActionDelete" title="Tắt tour"><i class="fa fa-low-vision" aria-hidden="true"></i> </a>
                                            <?php else: ?>
                                                <a href="javascript:void(0);" onclick="active('<?php echo $controller; ?>', <?php echo $value['id'] ?>, 'Chăc chắn bật')" class="dataActionDelete" title="Bật tour"><i class="fa fa-eye" aria-hidden="true"></i> </a>
                                            <?php endif ?>
                                            <a href="<?php echo base_url('admin/'.$controller.'/edit/'. $value['id']) ?>" class="dataActionEdit" title="Sửa tour"><i class="fa fa-pencil" aria-hidden="true"></i> </a>
                                            &nbsp&nbsp&nbsp
                                            <a href="javascript:void(0);" onclick="remove('<?php echo $controller; ?>', <?php echo $value['id'] ?>)" class="dataActionDelete" title="Xóa tour"><i class="fa fa-remove" aria-hidden="true"></i> </a>

                                            <!-- <a href="<?php echo base_url('admin/'.$controller.'/remove/'.$value['id']); ?>" class="dataActionDelete"><i class="fa fa-remove" aria-hidden="true"></i> </a> -->
                                        </td>

                                    </tr>
                                <?php endforeach ?>

                                    <tr>
                                        <th>No.</th>
                                        <th>Hình ảnh</th>
                                        <th>Tiêu đề</th>
                                        <th>Danh mục</th>
                                        <th>Trạng thái</th>
                                        <th>Detail</th>
                                        <th>Action</th>
                                    </tr>
                                <?php else: ?>
                                    <tr>
                                        Chưa có Tour
                                    </tr>
                                <?php endif; ?>

                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-6 col-md-offset-5 page">
                            <?php echo (isset($page_links))? $page_links : ''; ?>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>

                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>