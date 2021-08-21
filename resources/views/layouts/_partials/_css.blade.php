 <!-- App css -->
 <link href="{{ asset('assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
 <link href="{{ asset('assets/css/app-modern.min.css') }}" rel="stylesheet" type="text/css" id="light-style" />
 <link href="{{ asset('assets/css/app-modern-dark.min.css') }}" rel="stylesheet" type="text/css" id="dark-style" />
 {{-- delete icon for session --}}
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Datatables css -->
<link href="/testing/public/assets/css/vendor/dataTables.bootstrap4.css" rel="stylesheet" type="text/css" />
<link href="/testing/public/assets/css/vendor/responsive.bootstrap4.css" rel="stylesheet" type="text/css" />

<!-- Summernote css for editor -->
<link href="/testing/public/assets/css/vendor/summernote-bs4.css" rel="stylesheet" type="text/css" />

 <!--date time picker -->
<link rel="stylesheet" href="/testing/public/assets/css/datepicker/jquery.datetimepicker.min.css" />

 <style>
    .border-lable-flt {
      display: block;
      position: relative;
    }
    .border-lable-flt label, .border-lable-flt > span {
      position: absolute;
      left: 0;
      top: 0;
      cursor: text;
      font-size: 75%;
      opacity: 1;
      -webkit-transition: all .2s;
              transition: all .2s;
      top: -.5em;
      left: 0.75rem;
      z-index: 3;
      line-height: 1;
      padding: 0 1px;
    }
    .border-lable-flt label::after, .border-lable-flt > span::after {
      content: " ";
      display: block;
      position: absolute;
      background: white;
      height: 2px;
      top: 50%;
      left: -.2em;
      right: -.2em;
      z-index: -1;
    }
    .border-lable-flt .form-control::-webkit-input-placeholder {
      opacity: 1;
      -webkit-transition: all .2s;
              transition: all .2s;
    }
    .border-lable-flt .form-control:placeholder-shown:not(:focus)::-webkit-input-placeholder {
      opacity: 0;
    }
    .border-lable-flt .form-control:placeholder-shown:not(:focus) + * {
      font-size: 150%;
      opacity: .5;
      top: .3em;
    }
    
    .input-group .border-lable-flt {
      display: table-cell;
    }
    .input-group .border-lable-flt .form-control {
      border-radius: 0.25rem;
    }
    .input-group .border-lable-flt:not(:last-child), .input-group .border-lable-flt:not(:last-child) .form-control {
      border-bottom-right-radius: 0;
      border-top-right-radius: 0;
      border-right: 0;
    }
    .input-group .border-lable-flt:not(:first-child), .input-group .border-lable-flt:not(:first-child) .form-control {
      border-bottom-left-radius: 0;
      border-top-left-radius: 0;
    }
    
    /* .form-control:focus {
      color: #804000;
      background-color: #fff;
      border-color: #006633;
      box-shadow: 0 0 0 0.2rem rgba(0, 102, 51, 0.25);
    } */

    /* .form-group {
        margin-bottom: 1rem;
        border: solid 1px gray;
        border-radius: 0.50rem;
        padding: 6px;
    } */
    .no-mr{
      margin-bottom: 0 !important;
    }
    .no-border {
      border: none !important;
      padding: 0 !important;
    }

    /* for funcy radio */
  .funkyradio div {
  clear: both;
  overflow: hidden;
}

.funkyradio label {
  width: 100%;
  border-radius: 3px;
  border: 1px solid #D1D3D4;
  font-weight: normal;
}

.funkyradio input[type="radio"]:empty,
.funkyradio input[type="checkbox"]:empty {
  display: none;
}

.funkyradio input[type="radio"]:empty ~ label,
.funkyradio input[type="checkbox"]:empty ~ label {
  position: relative;
  line-height: 2.5em;
  text-indent: 3.25em;
  margin-top: 2em;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

.funkyradio input[type="radio"]:empty ~ label:before,
.funkyradio input[type="checkbox"]:empty ~ label:before {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #D1D3D4;
  border-radius: 3px 0 0 3px;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label {
  color: #888;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label:before,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #C2C2C2;
}

.funkyradio input[type="radio"]:checked ~ label,
.funkyradio input[type="checkbox"]:checked ~ label {
  color: #777;
}

.funkyradio input[type="radio"]:checked ~ label:before,
.funkyradio input[type="checkbox"]:checked ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #333;
  background-color: #ccc;
}

.funkyradio input[type="radio"]:focus ~ label:before,
.funkyradio input[type="checkbox"]:focus ~ label:before {
  box-shadow: 0 0 0 3px #999;
}

.funkyradio-default input[type="radio"]:checked ~ label:before,
.funkyradio-default input[type="checkbox"]:checked ~ label:before {
  color: #333;
  background-color: #ccc;
}

.funkyradio-primary input[type="radio"]:checked ~ label:before,
.funkyradio-primary input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #337ab7;
}

.funkyradio-success input[type="radio"]:checked ~ label:before,
.funkyradio-success input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5cb85c;
}

.funkyradio-danger input[type="radio"]:checked ~ label:before,
.funkyradio-danger input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #d9534f;
}

.funkyradio-warning input[type="radio"]:checked ~ label:before,
.funkyradio-warning input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #f0ad4e;
}

.funkyradio-info input[type="radio"]:checked ~ label:before,
.funkyradio-info input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5bc0de;
}
/* for placeholder */
input[type=text]:focus {
  background-color: #f8f8f8;
}
input[type=email]:focus {
  background-color: #f8f8f8;
}
input[type=number]:focus {
  background-color: #f8f8f8;
}
input[type=select]:focus {
  background-color: #f8f8f8;
}
input[type=date]:focus {
  background-color: #f8f8f8;
}
input[type=time]:focus {
  background-color: #f8f8f8;
}
select {
  width: 100%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f8f8f8;
}
</style>