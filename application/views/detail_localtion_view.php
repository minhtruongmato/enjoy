<!-- About Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>blogs.css">

<section class="cover">
	<img src="<?php echo site_url('assets/upload/localtion/' . $detail['slug'] .'/'. $detail['image']); ?>" alt="image blog">
</section>

<div id="detail-post" class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="left col-xs-12">
                <div class="big-title">
                    <h4 class="subtitle">
                        <?php echo $detail['area'] ?>
                    </h4>
                    <h1 class="title">
                        <?php echo $detail['title'] ?>
                    </h1>
                </div>

                <article>

                    <p><?php echo $detail['content'] ?></p>
                </article>

                <div class="foot">
                    <p>Shared:</p>
                    <ul class="list-inline">
                        <li class="facebook"><a href=""><i class="fa fa-facebook-f"></i> Facebook </a></li>
                    </ul>
                </div>
            </div>
            <?php if (!empty($location_array)): ?>
                <div class="right col-sm-12 col-xs-12">
                    <div class="section-header">
                        <div class="row">
                            <div class="left col-xs-12">
                                <b><u><h3><?php echo $this->lang->line('post-related'); ?></h3></u></b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <?php foreach ($location_array as $key => $value): ?>
                                <div class="item col-md-4 col-xs-12">
                                    <div class="wrapper">
                                        <div class="mask">
                                            <a href="<?php echo base_url('bai-viet/'.$value['slug']) ?>">
                                                <img src="<?php echo base_url('assets/upload/localtion/' . $value['slug'] .'/'. $value['image']) ?>" alt="" style="width: 100%;">
                                            </a>
                                        </div>
                                        <div class="head">
                                            <h4 class="post-subtitle"><?php echo $value['area']; ?></h4>
                                            <h2 class="post-title"><?php echo $value['title'];?></h2>
                                        </div>
                                        <div class="body">
                                            <p class="post-description"><?php echo $value['content'];?></p>
                                        </div>
                                        <div class="foot">
                                            <a href="<?php echo base_url('diem-den/' . $value['slug']) ?>" class="btn btn-primary" role="button">
                                                <?php echo $this->lang->line('view-detail'); ?>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                        <?php endforeach ?>
                    </div>
                </div>
            <?php endif ?>
        </div>

    </div>
</div>
