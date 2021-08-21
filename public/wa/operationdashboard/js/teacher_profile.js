
$(document).ready(function (e) {
    $('#profile_upload').change(function () {
        reader.onload = (e) => {

            $('#preview-image-before-upload').attr('src', e.target.result);
        }

        reader.readAsDataURL(this.files[0]);

    });

});


$(document).ready(function (e) {


    $('#id_upload').change(function () {

        let reader = new FileReader();

        reader.onload = (e) => {

            $('#before-id').attr('src', e.target.result);
        }

        reader.readAsDataURL(this.files[0]);

    });

});


$('#profile_photo_form').submit(function (e) {
    e.preventDefault();
    let formData = new FormData(this);
    $('#image-input-error').text('');

    $.ajax({
        "_token": "{{ csrf_token() }}",
        type: 'POST',
        url: "{{route('teacher-image')}}",
        data: formData,
        contentType: false,
        processData: false,
        success: (xhr, response) => {
            if (response) {
                this.reset();
                $('#image-input-success').text("Uploaded Succcessfully");

            }
        },
        error: (xhr, status, error) => {
            if (error) {
                this.reset();
                var err = JSON.parse(xhr.responseText);
                $('#image-input-error').text(err.message + err.errors.profile_photo_input[0]);
            }
        }
    });
});



$('#profile_details').submit(function (e) {
    e.preventDefault();
    let formData = new FormData(this);
    $('#image-info-error').text('');

    $.ajax({
        "_token": "{{ csrf_token() }}",
        type: 'POST',
        url: "{{route('teacher-info')}}",
        data: formData,
        contentType: false,
        processData: false,
        success: (response) => {
            if (response) {
                this.reset();
                alert('Your inforamtion has been save successfully');
            }
        },
        error: function (response) {
            console.log(response);
            $('#image-information-error').text(response.responseJSON.errors.file);
        }
    });
});


$('#profile_idphoto').submit(function (e) {
    e.preventDefault();
    let formData = new FormData(this);
    $('#id-input-error').text('');

    $.ajax({
        "_token": "{{ csrf_token() }}",
        type: 'POST',
        url: "{{route('teacher-idproof')}}",
        data: formData,
        contentType: false,
        processData: false,
        success: (response) => {
            if (response) {
                this.reset();
                alert('Image has been uploaded successfully');
            }
        },
        error: function (response) {
            console.log(response);
            $('#iden-input-error').text(response.responseJSON.errors.file);
        }
    });
});

