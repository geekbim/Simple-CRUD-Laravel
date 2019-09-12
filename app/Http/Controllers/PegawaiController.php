<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Alert;

class PegawaiController extends Controller
{
    public function index() {
        // mengambil data dari table pegawai
        // $pegawai = DB::table('pegawai')->get(); //untuk get seluruh data pada table pegawai

        // mengambil data dari table pegawai 10 data saja
        $pegawai = DB::table('pegawai')->paginate(10);
        
        // mengirim data pegawai ke view index
        return view('index', ['pegawai' => $pegawai]);
    }

    // method untuk menampilkan view form tambah pegawai
    public function tambah() {
        // memanggil view tambah
        return view('tambah');
    }

    // method untuk insert data ke table pegawai
    public function store(Request $request) {
        // insert data ke table pegawai
        DB::table('pegawai')->insert([
            'pegawai_nama' => $request->nama,
            'pegawai_jabatan' => $request->jabatan,
            'pegawai_umur' => $request->umur,
            'pegawai_alamat' => $request->alamat
        ]);
        // redirect ke halaman pegawai
        Alert::success('Success', 'Data Berhasil Ditambahkan');
        return redirect('/pegawai');
    }

    // method untuk edit data pegawai
    public function edit($id) {
        // mengambil data pegawai berdasarkan id yang dipilih
        $pegawai = DB::table('pegawai')->where('pegawai_id', $id)->get();
        // passing data pegawai yang didapat ke view edit.blade.php
        return view('edit', ['pegawai' => $pegawai]);
    }

    // method untuk update data pegawai
    public function update(Request $request) {
        // update data pegawai
        DB::table('pegawai')->where('pegawai_id', $request->id)->update([
            'pegawai_nama' => $request->nama,
            'pegawai_jabatan' => $request->jabatan,
            'pegawai_umur' => $request->umur,
            'pegawai_alamat' => $request->alamat
        ]);
        // redirect ke halaman pegawai
        Alert::success('Success', 'Data Berhasil Diupdate');
        return redirect('/pegawai');
    }

    // method untuk delete data pegawai
    public function hapus($id) {
        // menghapus data pegawai berdasarkan id yang dipilih
        DB::table('pegawai')->where('pegawai_id', $id)->delete();
        // redirect ke halaman pegawai
        Alert::success('Success', 'Data Berhasil Dihapus');
        return redirect('/pegawai');
    }

    // method untuk mencari data pegawai
    public function cari(Request $request) {
        // menangkap data pencarian
        $cari = $request->cari;

        // mengambil data dari table sesuai pencarian data
        $pegawai = DB::table('pegawai')->where('pegawai_nama', 'like', "%".$cari."%")->paginate(); //cari = name pada input
        return view('index', ['pegawai' => $pegawai]);
    }
}
