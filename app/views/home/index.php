<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <h6>Data Siswa</h6>
                <a class="btn btn-primary btn-sm" href="<?= base_url("siswa/tambah") ?>">Tambah Siswa</a>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center mb-0">
                        <thead>
                            <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">No</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Nama</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Username</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Nilai</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $nomor = 1; ?>
                            <?php foreach ($siswa as $value) : ?>
                                <tr>
                                    <td class="px-4 text-center"><?= $nomor++ ?></td>
                                    <td class="text-center"><?= $value->nama ?></td>
                                    <td class="text-center"><?= $value->username  ?></td>
                                    <td class="text-sm text-center">
                                        <a href="<?= base_url('siswa/edit/' . $value->id) ?>" class="btn btn-success btn-xs">Edit</a>
                                        <a href="<?= base_url("nilai/detail/" . $value->id) ?>" class="btn btn-primary btn-xs">Detail nilai</a>
                                        <a href="<?= base_url('siswa/delete/' . $value->id) ?>" onclick="return confirm('Yakin ??')" class="btn btn-danger btn-xs">Hapus</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
</div>