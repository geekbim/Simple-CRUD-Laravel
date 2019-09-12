<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Data Pegawai</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <nav class="container mt-5 bg-secondary text-light text-center">
        <h3>CRUD DATA PEGAWAI</h3>
    </nav>

    <div class="container mt-4">
        <div class="row">
            <div class="col-md-10">
                <form action="/pegawai/cari" method="get" class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" name="cari" type="search" placeholder="Search" autocomplete="off" value="{{ old('cari') }}">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
            <div class="col-md-2">
                <a href="/pegawai/tambah"><button type="button" class="btn btn-primary float-right">+ Tambah Data</button></a>
            </div>
        </div>
    </div>

    <div class="container mt-4">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">Nama</th>
                    <th scope="col">Jabatan</th>
                    <th scope="col">Umur</th>
                    <th scope="col">Alamat</th>
                    <th scope="col">Opsi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($pegawai as $p)
                <tr>
                    <td>{{$p->pegawai_nama}}</td>
                    <td>{{$p->pegawai_jabatan}}</td>
                    <td>{{$p->pegawai_umur}} tahun</td>
                    <td>{{$p->pegawai_alamat}}</td>
                    <td width="200px">
                        <a href="/pegawai/edit/{{$p->pegawai_id}}"><button type="button" class="btn btn-success">Edit</button></a>
                        <a href="/pegawai/hapus/{{$p->pegawai_id}}"><button type="button" class="btn btn-danger">Remove</button></a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        
        <div class="container mt-5">
            Halaman : {{ $pegawai->currentPage() }} <br/>
            Jumlah Data : {{ $pegawai->total() }} <br/>
            Data Per Halaman : {{ $pegawai->perPage() }} <br/>
        </div>

        <div class="container mt-3">
            {{ $pegawai->links() }}
        </div>

    </div>

    @include('sweetalert::alert')

</body>
</html>