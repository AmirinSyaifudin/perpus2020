@extends('admin.templates.default')
@section('content')
<h1>Penulis</h1>

 <!-- /.box-header -->
 <div class="box">
        <div class="box-header">
              <h3 class="box-title">DATA BUKU</h3><br><br>
              <a href="{{ route('admin.book.create')}}" class="btn btn-primary">TAMBAH DATA BUKU</a>
         </div>
         <div class="box-body">

            <table id="dataTable" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>JUDUL BUKU</th>
                            <th class="text-center">DESKRIPSI BUKU</th>
                            <th>JUMLAH BUKU</th>
                            <th>PENULIS BUKU</th>
                            <th>COVER BUKU</th>
                            <th width="150" class="text-center">ACTION</th>
                        </tr>
                    </thead>
                     {{--  <tbody>
                        <tr>
                            <td>1</td>
                            <td>2</td>
                        </tr>
                    </tbody>   --}}
            </table>
        </div>
</div>
<form action="" method="post" id="deleteForm">
    @csrf
    @method("DELETE")
    <input type="submit" value="Hapus" style="display:none">
</form>

@endsection

{{-- // pertemua ke 30 pindah datatable --}}
@push('styles')
    <link rel="stylesheet" href="{{ asset('assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endpush

@push('scripts')
 {{--  DataTables pertemuan ke 30   --}}
<script src="{{ asset('assets/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>

    {{--  memanggil bs-notiify.min.js   --}}
    <script src="{{ asset('/assets/plugins/bs.notify.min.js')}}"></script>
    @include('admin.templates.partials.alerts')
    {{--  jquery   --}}
    <script>
        $(function () {
            $('#dataTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('admin.book.data') }}',
                columns: [
                    //{ data: 'id'},
                    { data: 'DT_RowIndex', orderable: false, searchable : false}, //
                    { data: 'title'},
                    { data: 'description'},
                    { data: 'qty'},
                    { data: 'author'},
                    { data: 'cover'},
                    { data: 'action'},
                ]
            });
        });
    </script>
@endpush
