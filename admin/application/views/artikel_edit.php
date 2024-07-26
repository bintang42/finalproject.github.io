<div class="container">
    <h5>Edit artikel</h5>

    <form method="post" enctype="multipart/form-data">
    <div class="mb-3">
            <label>Judul artikel</label>
            <input type="text" name="judul_artikel" class="form-control" value="<?php echo set_value("judul_artikel",$artikel['judul_artikel']) ?>"></input>
            <div class="text-danger small">
                <?php echo form_error("judul_artikel") ?>
            </div>
        </div>
        <div class="mb-3">
            <label>Isi artikel</label>
            <textarea name="isi_artikel" class="form-control" id="editorku"><?php echo set_value("isi_artikel",$artikel['isi_artikel']) ?></textarea>
            <div class="text-danger small">
              <?php echo form_error("isi_artikel") ?>
            </div>
        </div>
        <div class="mb-3">
            <label>Foto Lama</label><br>
            <img src="<?php echo  $this->config->item("url_artikel").$artikel["foto_artikel"]?>" width="300">
        </div>
        <div class="mb-3">
            <label>Ganti Foto artikel</label>
            <input type="file" name="foto_artikel" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>