<div class="container">
    <h5>Tambah Produk Seller</h5>

    <form method="post" enctype="multipart/form-data">
    <div class="mb-3">
            <label>Kategori</label>
            <select class="form-control form-select" name="id_kategori">
                <option value="">Pilih</option>
                <?php foreach ($kategori as $k => $v): ?>
                <option value="<?php echo $v['id_kategori'] ?>">
                    <?php echo $v['nama_kategori'] ?>
                </option>
                <?php endforeach ?>
            </select>
        </div>
        <div class="mb-3">
            <label>Nama</label>
            <input type="text" name="nama_produk" class="form-control">
        </div>
        <div class="mb-3">
            <label>Harga</label>
            <input type="number" name="harga_produk" class="form-control">
        </div>
        <div class="mb-3">
            <label>Berat</label>
            <input type="number" name="berat_produk" class="form-control">
            <span class="text-muted small">Gram</span>
        </div>
        <div class="mb-3">
            <label>Foto</label>
            <input type="file" name="foto_produk" class="form-control">
        </div>
        <div class="mb-3">
            <label>Deskripsi</label>
            <textarea class="form-control" name="deskripsi_produk"></textarea>        
        </div>
        <button class="btn btn-primary">Simpan</button>
    </form>
</div>