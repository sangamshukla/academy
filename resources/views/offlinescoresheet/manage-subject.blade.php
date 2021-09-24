@extends('layouts.admin_dashboard')
@section('content')
    <div class="container-fluid">
        <!-- Page Heading -->
        <link href="http://walocal.test/wa/admin/css/custom.css" rel="stylesheet">
        <div class="inner-container" style="overflow-y: scroll;">
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <p style="margin-top: 30px; margin-left:20px; position:relative;" class="p-text">Score Sheet
                        </p>
                    </div>
                </div>
            </div>

            <!-- validation -->
            <div>
                @include('_form.success')
            </div>
            <!-- validation -->

            <div class="row">
                {{-- <div class="col-md-12">
    <h6 style="margin-top: 30px; margin-left:20px; position:relative;">Select week for score card list</h6>
</div> --}}
            </div>
            {{-- <form method="POST" action="http://walocal.test/full-marks"> --}}
            <form method="POST" action="http://walocal.test/manage-yearedit">

                <input type="hidden" name="_token" value="M9UsCe0hWJUvFMFCc7lArf6CFcOsJDUPeccxFNN8">
                <div class="row">
                    <div class="col-md-4">
                        <div class="input-group mb-3">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <table style="width:100%; margin-left:20px;" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width:20%" scope="col">S. No</th>
                                    <th style="width:50%" scope="col">Subject</th>
                                    <th style="width:30%" scope="col">Action</th>

                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($subjects as $subject)
                                    <tr style="background-color: white;">
                                        <th scope="row">{{ $loop->iteration }}</th>
                                        <td> <input type="text" value="{{ $subject->name }}" readonly disabled></td>
                                        <td>
                                            <a href="{{ route('add-manage-subject', $subject->id) }}"
                                                class="action-icon"><i style="color:#858796" class="fa fa-plus-circle"
                                                    aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;
                                            </a>
                                            <a href="{{ route('manage-subject-edit', $subject->id) }}"
                                                class="action-icon"> <i style="color:#858796"
                                                    class="fa fa-edit"></i></a>&nbsp;&nbsp;&nbsp;
                                            <a href="{{ route('manage-subject-destroy', $subject->id) }}"
                                                onclick="return confirm('Are You Sure For Delete ?')"
                                                class="action-icon"> <i style="color:#ce0b5c"
                                                    class="fa fa-trash"></i></a>
                                        </td>
                                        {{-- <td><input name="sub_marks[]" value="0" class="form-control"></td> --}}
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>
            </form>
        </div>


        <!-- subject card section end -->
        <!-- image block -->

        <!-- Content Row -->
    </div>
@endsection
