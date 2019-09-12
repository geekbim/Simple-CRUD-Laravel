<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tambah Data Pegawai</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
    <nav class="container mt-5 bg-secondary text-light text-center">
        <h3>EDIT DATA PEGAWAI</h3>
    </nav>

    <div class="container mt-4 text-right">
        <a href="/pegawai"><button type="button" class="btn btn-warning">Kembali</button></a>
    </div>

    <div class="container">
        @foreach($pegawai as $p)
            <form action="/pegawai/update" method="post">
                {{csrf_field()}}
                <div class="form-group">
                    <input type="hidden" class="form-control" name="id" value={{$p->pegawai_id}}>
                </div>
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan nama" autocomplete="off" autofocus value={{$p->pegawai_nama}}>
                </div>
                <div class="form-group">
                    <label for="jabatan">Jabatan</label>
                    <input type="text" class="form-control" id="jabatan" name="jabatan" placeholder="Masukkan jabatan" autocomplete="off" value={{$p->pegawai_jabatan}}>
                </div>
                <div class="form-group">
                    <label for="umur">Umur</label>
                    <input type="number" class="form-control" id="umur" name="umur" placeholder="Masukkan umur" value={{$p->pegawai_umur}}>
                </div>
                <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <textarea class="form-control" id="alamat" name="alamat" rows="3">{{$p->pegawai_alamat}}</textarea>
                </div>
                <button type="submit" class="btn btn-primary float-right">Simpan</button>
            </form>
        @endforeach
    </div>
</body>
</html>