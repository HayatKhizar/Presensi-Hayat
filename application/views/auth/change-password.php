<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a href="<?= base_url() ?>">PRESENSI<a>
        </div>
        <!-- /.login-logo -->
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Change your password for </p>
                <p class="login-box-msg"><?= $this->session->userdata('reset_email'); ?></p>


                <?= $this->session->flashdata('message'); ?>


                <form action="<?= base_url('auth/changePassword') ?>" method="post">
                    <?= form_error('password1', '<small class="text-danger pl-3">', '</small>'); ?>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" placeholder="Password" name="password1">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>