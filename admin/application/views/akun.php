<div class="container mt-5">
    <h5>Ubah Akun</h5>
    <div class="row">
        <div class="col-md-4"> 
            <form method="post">
                <div class="mb-3">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" value="<?php echo set_value("username",$this->session->userdata("username")) ?>">
                    <div class="text-danger small">
                      <?php echo form_error("username") ?>
                    </div>
                </div>
                <div class="mb-3">
                    <label>Password</label>
                    <input type="text" name="password" class="form-control">
                    <p class="text-muted">kosongkan jika tidak diubah</p>
                </div>
                <div class="mb-3">
                    <label>Nama Lengkap</label>
                    <input type="text" name="nama" class="form-control" value="<?php echo set_value("nama", $this->session->userdata("nama")) ?>">
                    <div class="text-danger small">
                      <?php echo form_error("nama") ?>
                    </div>
                </div>
                <button class="btn btn-primary">Ubah Akun</button>
            </form>
        </div>
    </div>
  </div>