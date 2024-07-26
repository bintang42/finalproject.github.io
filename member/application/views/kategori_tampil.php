<div class="container">
        <h5>Kategori Produk</h5>
        <div class="row">
        <?php foreach ($kategori as $k => $v): ?>
            <div class="col-md-3">
                <a href="<?php echo base_url("kategori/detail/".$v['id_kategori']); ?>" class="text-decoration-none">
                <div class="card border-0 shadow-sm">
                    <img src="<?php echo $this->config->item("url_kategori").$v['foto_kategori'] ?>">
                    <div class="card-body text-center">
                        <h6><?php echo $v['nama_kategori'] ?></h6>
                    </div>
                </div>
                </a>
            </div>
        <?php endforeach?>
        </div>
    </div>