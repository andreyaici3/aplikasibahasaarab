<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <h6>Nilai Siswa - <?= $siswa->nama ?></h6>
               
            </div>
            <div class="card-body px-0 pt-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center mb-0">
                        <thead>
                            <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">No</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Bab</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Nilai</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">KKM</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Waktu Akses</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Status</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php $nomor = 1; ?>
                            <?php foreach ($nilai as $value) : ?>
                                <?php 
                                    $bab = $this->db->query("SELECT * FROM daftar_bab WHERE id = $value->bab_id")[0];
                                ?>
                                <tr>
                                    <td class="px-4 text-center"><?= $nomor++ ?></td>
                                    <td class="text-center"><?= $bab->bab ?></td>
                                    <td class="text-center"><?= $value->nilai  ?></td>
                                    <td class="text-center"><?= $bab->kkm ?></td>
                                    <td class="text-center"><?= $value->waktu_akses  ?></td>
                                    <td class="text-center"><?= ($value->nilai >= $bab->kkm) ? "LULUS" : "TIDAK LULUS" ?></td>
                                    <td class="text-sm text-center">
                                        <a href="<?= base_url('nilai/reset/' . $value->id ."/" . $siswa->id) ?>" onclick="return confirm('Yakin Ingin Mereset??')" class="btn btn-danger btn-xs">RESET NILAI</a>
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