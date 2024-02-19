<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <h6>Edit Bab</h6>
            </div>
            <form class="px-3" action="<?= base_url('bab/update/' . $bab->id) ?>" method="POST">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" id="bab" name="bab" placeholder="Masukan Judul Bab" value="<?= $bab->bab ?>">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="number" class="form-control" id="kkm" name="kkm" placeholder=" Nilai kkm" value="<?= $bab->kkm ?>">
                        </div>
                    </div>
                </div>
                
                <div class="row">
                   
                    <div class="col-md-6">
                        <div class="form-group">
                            <button class="btn btn-success" name="simpan">Simpan</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>