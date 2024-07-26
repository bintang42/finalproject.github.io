<div class="container">
        <h5>Produk Terbaru</h5>
        <div class="row">
        <?php foreach ($produk as $k => $v): ?>
            <div class="col-md-4">
                <a href="<?php echo base_url("produk/detail/".$v['id_produk']) ?>" class="text-decoration-none">
                <div class="card border-0 shadow-sm">
                    <img src="<?php echo $this->config->item("url_produk").$v['foto_produk'] ?>">
                    <div class="card-body text-center">
                        <h6><?php echo $v['nama_produk'] ?></h6>
                        <p class="lead">Rp<?php echo number_format($v['harga_produk']) ?></p>
                    </div>
                </div>
                </a>
            </div>
        <?php endforeach?>
        </div>

    </div>