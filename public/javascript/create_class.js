$(document).ready(function () {
    $(".class_settings_id").hide();
    // $("#class_settings").hide();
    $("#showLoader").hide();
    // $(".js-example-basic-multiple").select2();
    $(".js-example-basic-single").select2();
});
$("#generate-session").on("click", function () {
    $("#generate-session").hide();
    $("#append-row").show();
    $(".generate-session").show();
    var value_session = $("#row-list").find($("select")).length + 1;
    var index_val = value_session;
    var value_session = "Session-" + value_session;

    var firstDate = $("#class_date_time").val();

    $("#end_date_time").val(firstDate);
    var row = `
    <div style="margin-top:80px;">
        <span class="cross_img" style="float:right;" ><img onclick="$(this).closest(\'div\').remove(); deletePlusButton();" src="/wa/admindashboard/img/cross-img.svg"></span>
            <div class="card-body add_class_block add_sectionbox">
                <form class="form_block">
                    <div class="form-group">
                        <label class="col-md-12 control-label" for="class">Select Date</label>  
                        <div class="col-md-12">
                            <input type="text" onchange="getAvailability(event, '${value_session}')" name="session_start_date[]" class="showdatepicker form-control" value="${firstDate}" id="first_date_time" placeholder="Select Start Date & Time">
                            <span id="${value_session}"></span>
                            <span id="class_start_date_valid" class="text-danger"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12 control-label" for="class">Session name</label>  
                        <div class="col-md-12">
                            <input class="form-control" name="session_name[]" value="${value_session}" placeholder="Session Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12 control-label" for="class">Select Class</label>  
                        <div class="col-md-12">
                            <select style="min-width:300px;" name="topic_id[]"  class="form-control js-example-basic-multiple" id="topic_id" placeholder="Select  Topic" >
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12 control-label" for="name">Comment</label>  
                        <div class="col-md-12">
                            <input type="text" name="comment[]" class="form-control" placeholder="comment">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <button id="first_button" class="btn btn-success generate-session" style="margin-top:28px; !important" onclick="addRow()" type="button">+</button>
                        </div>
                    </div>
                </form>
            </div>
            </div>
        </div>`;
    $("#row-list").append(row);

    $(".showdatepicker").datetimepicker({
        formatDate: "Y/m/d",
        minDate: "-1970/01/01", //yesterday is minimum date(for today use 0 or -1970/01/01)
    });
    var subject_id_value = $("#subject_id").val();
    $.get("/api/topics/" + subject_id_value, function (data, status) {
        $("#topic_id").empty();
        $.each(data, function (index, subcategory) {
            $("#topic_id").append(
                '<option value="' +
                    subcategory.id +
                    '">' +
                    subcategory.name +
                    "</option>"
            );
        });
    });
    deletePlusButton();
});

function deletePlusButton() {
    var plusLength = $("#row-list").find($("select")).length;
    if (plusLength == 0) {
        $("#generate-session").show();
    }
    if (plusLength == 1) {
        $("#first_button").show();
    }
    if (plusLength == 2) {
        $("#first_button").hide();
    }
    if (plusLength > 2) {
        for (var lx = 2; lx < plusLength; lx++) {
            // var l = lx + 1;
            var l = lx;
            //  alert('#first_button' + l);
            $("#first_button" + l).hide();
        }
    }
}
/**
 * get availablity from add more button
 * @param {event} e
 * @param {*} id
 */
function getAvailability(e, id) {
    var batch_start_date_time = e.target.value;
    $("#end_date_time").val(batch_start_date_time);
    batch_start_date_time = batch_start_date_time.replaceAll("/", "-");
    var time = batch_start_date_time.split(" ")[1].replace(":", "");

    let current_date_time = new Date();
    let minutes =
        (current_date_time.getMinutes() < 10 ? "0" : "") +
        current_date_time.getMinutes();

    let hour = current_date_time.getHours() + "" + minutes;

    // console.log("time", time);
    // console.log("hour", hour);
    // get time selected by user
    let getdates = batch_start_date_time.split(" ")[0];
    let selectedDate = getdates.split("-")[2];
    // console.log(current_date_time.getDate());
    if (selectedDate == current_date_time.getDate()) {
        if (parseInt(hour) >= parseInt(time)) {
            $("#class_start_date_valid").html(
                "Selected Time Should be greater than current date and time"
            );
        } else {
            $("#class_start_date_valid").html("");
        }
    } else {
        $("#class_start_date_valid").html("");
    }

    var teacher_id = $("#class_name").val();
    var duration = $("#duration_per_sessions_id").val();
    $.get(
        "/find/teacher/" +
            teacher_id +
            "/" +
            batch_start_date_time +
            "/" +
            duration,
        function (data, status) {
            // $("#teacher_available_status").val(data);
            if (data == "NO") {
                $("#" + id).html(
                    "<span class='text-danger'>Teacher Not Available</span>"
                );

                $("#saveForm").prop("disabled", true);
            } else {
                // if teacher is available
                $("#" + id).html("");

                $("#saveForm").prop("disabled", false);
            }
        }
    );
}
function addRow() {
    $("#append-row").show();
    var value_session = $("#row-list").find($("select")).length + 1;
    var index_val = value_session;
    var value_session = "Session-" + value_session;
    var row = `
    <div>
        <span class="cross_img" style="float:right;" ><img onclick="$(this).closest(\'div\').remove();" src="/wa/admindashboard/img/cross-img.svg"></span>
        <div class="card-body add_class_block add_sectionbox">
            <form class="form_block">
                <div class="form-group">
                    <label class="col-md-12 control-label" for="class">Select Date</label>  
                    <div class="col-md-12">
                    <input type="text" onchange="getAvailability(event, '${value_session}')" name="session_start_date[]" class="showdatepicker form-control" id="first_date_time_${index_val}" placeholder="Select Start Date & Time">
                    <span id="${value_session}"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-12 control-label" for="class">Session name</label>  
                    <div class="col-md-12">
                        <input class="form-control" name="session_name[]" value="${value_session}" placeholder="Session Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-12 control-label" for="class">Select Class</label>  
                    <div class="col-md-12">
                        <select style="min-width:300px;" name="topic_id[]" class="form-control js-example-basic-multiple topic_id" id="topic_id_${index_val}" placeholder="Select  Topic" >
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-12 control-label" for="name">Comment</label>  
                    <div class="col-md-12">
                        <input type="text" name="comment[]" class="form-control" placeholder="comment">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <button id="first_button${index_val}" class="btn btn-success generate-session" style="margin-top:28px; !important" onclick="addRow()" type="button">+</button>
                    </div>
                </div>
            </form>
        </div>
        </div>
    </div>`;
    // $('#first_button').hide();
    $("#row-list").append(row);

    if (index_val == 2) {
        var firstValue = $("#first_date_time").val();
        if (firstValue.length > 1) {
            var datetimeVal = firstValue.split("/");
            var year = datetimeVal[0];
            var month = datetimeVal[1];
            var date = datetimeVal[2];
            var maindate = date.slice(0, -5);
            var intDate = parseInt(maindate) + 1;
            var adate = `${year}/${("0" + month).slice(-2)}/${(
                "0" + intDate
            ).slice(-2)} 00:00`;

            $(`#first_date_time_${index_val}`).datetimepicker({
                formatDate: "Y/m/d",
                minDate: adate, //yesterday is minimum date(for today use 0 or -1970/01/01)
            });
        } else {
            zdate = $("#class_date_time").val();
            $(".showdatepicker").datetimepicker({
                formatDate: "Y/m/d",
                minDate: zdate, //yesterday is minimum date(for today use 0 or -1970/01/01)
            });
        }
    } else {
        var firstValue = $(`#first_date_time`).val();
        if (firstValue.length > 1) {
            var datetimeVal = firstValue.split("/");
            var year = datetimeVal[0];
            var month = datetimeVal[1];
            var date = datetimeVal[2];
            var maindate = date.slice(0, -5);
            var intDate = parseInt(maindate) + 1;
            var adate = `${year}/${("0" + month).slice(-2)}/${(
                "0" + intDate
            ).slice(-2)} 00: 00`;
            $(`#first_date_time_${index_val} `).datetimepicker({
                formatDate: "Y/m/d",
                minDate: adate, //yesterday is minimum date(for today use 0 or -1970/01/01)
            });
        } else {
            zdate = $("#class_date_time").val();
            $(`#first_date_time_${index_val} `).datetimepicker({
                formatDate: "Y/m/d",
                minDate: zdate, //yesterday is minimum date(for today use 0 or -1970/01/01)
            });
        }
    }
    var subject_id_value = $("#subject_id").val();
    $.get("/api/topics/" + subject_id_value, function (data, status) {
        $(`#topic_id_${index_val}`).empty();
        $.each(data, function (index, subcategory) {
            $(`#topic_id_${index_val}`).append(
                '<option value="' +
                    subcategory.id +
                    '">' +
                    subcategory.name +
                    "</option>"
            );
        });
    });
    deletePlusButton();
}

//  <button type="button" class="btn del btn-danger btn-xs">x</button>
$("#select_year").on("change", function () {
    var year_id_value = $("#select_year").val();
    $.get("/api/subjects/" + year_id_value, function (data, status) {
        $("#subject_id").empty();
        $("#subject_id").append('<option value="">Choose Subject</option>');
        $.each(data, function (index, subcategory) {
            $("#subject_id").append(
                '<option value="' +
                    subcategory.id +
                    '">' +
                    subcategory.name +
                    "</option>"
            );
        });
    });
});
$("#class_name").on("change", function () {
    var batch_start_date_time = $("#class_date_time").val();

    batch_start_date_time = batch_start_date_time.replaceAll("/", "-");
    var teacher_id = $("#class_name").val();
    var duration = $("#duration_per_sessions_id").val();
    $.get(
        "/api/teacher/" +
            teacher_id +
            "/" +
            batch_start_date_time +
            "/" +
            duration,
        function (data, status) {
            $("#teacher_available_status").val(data);
            if (data == "NO") {
                $("#saveForm").prop("disabled", true);
                $("#not_available").html(
                    "<span class='text-danger'>Teacher Not Available</span>"
                );
            } else {
                $("#not_available").html("");

                $("#saveForm").prop("disabled", false);
            }
        }
    );
});

$("#class_date_time").on("change", function () {
    let batch_start_date_time = $("#class_date_time").val();
    batch_start_date_time = batch_start_date_time.replaceAll("/", "-");
    var teacher_id = $("#class_name").val();
    var duration = $("#duration_per_sessions_id").val();

    batch_start_date_time = $("#class_date_time").val();
    batch_start_date_time = batch_start_date_time.replaceAll("/", "-");
    let time = batch_start_date_time.split(" ")[1].replace(":", "");

    let current_date_time = new Date();
    let minutes =
        (current_date_time.getMinutes() < 10 ? "0" : "") +
        current_date_time.getMinutes();

    let hour = current_date_time.getHours() + "" + minutes;

    // console.log("time", time);
    // console.log("hour", hour);
    // get time selected by user
    let getdates = batch_start_date_time.split(" ")[0];
    let selectedDate = getdates.split("-")[2];
    // console.log(current_date_time.getDate());
    if (selectedDate == current_date_time.getDate()) {
        if (parseInt(hour) >= parseInt(time)) {
            $("#class_date_time_validation").html(
                "Class start date and time can not be less than current time."
            );
        } else {
            $("#class_date_time_validation").html("");
        }
    } else {
        $("#class_date_time_validation").html("");
    }

    $.get(
        "/api/teacher/" +
            teacher_id +
            "/" +
            batch_start_date_time +
            "/" +
            duration,
        function (data, status) {
            if (teacher_id != "... Select Teacher ...") {
                if (data == "NO") {
                    $("#saveForm").prop("disabled", true);
                    $("#not_available").html(
                        "<span class='text-danger'>Teacher Not Available</span>"
                    );
                    document.getElementById("saveForm").disabled = true;
                } else {
                    $("#not_available").html("");

                    $("#saveForm").prop("disabled", false);
                    document.getElementById("saveForm").disabled = false;
                }
                $("#teacher_available_status").val(data);
            }
        }
    );
});

function validateDateTime() {
    var source_val = $("#class_date_time").val();
    var nowDate = new Date(source_val);
    if (!$("#first_date_time").val()) {
        alert("Please Add Atleast 1 Session Before Saving the Class.");
        return false;
    }
    var Time1 = new Date($("#first_date_time").val());
    if (nowDate > Time1) {
        alert("Start Date Can Not Be Greater Than Batch Start Date");
        return false;
    }
    return true;
}

$("#subject_id").change(function () {
    var subject_id_value = $("#subject_id").val();
    $.get("/api/topics/" + subject_id_value, function (data, status) {
        $("#topic_id").empty();
        $.each(data, function (index, subcategory) {
            $("#topic_id").append(
                '<option value="' +
                    subcategory.id +
                    '">' +
                    subcategory.name +
                    "</option>"
            );
        });
    });
});

$("#class_settings_id").on("change", function () {
    if ($("#class_settings_id").val() == 5) {
        $("#select_class_master").hide();
        $(".class_settings_id").show();
    }
});

// date time picker
$("document").ready(function () {
    $("#class_date_time").datetimepicker({
        formatDate: "Y/m/d",
        minDate: "-1970/01/01", //yesterday is minimum date(for today use 0 or -1970/01/01)
    });
    $("#end_date_time").datetimepicker({
        formatDate: "Y/m/d",
        minDate: "-1970/01/01", //yesterday is minimum date(for today use 0 or -1970/01/01)
    });

    // Location
});
$("#location_address").hide();

$("#name").click(function () {
    $("#location_address").hide();
});

$("#name1").click(function () {
    $("#location_address").show();
});
function isInt(number) {
    if (!/^["|']{0,1}[-]{0,1}\d{0,}(\.{0,1}\d+)["|']{0,1}$/.test(number))
        return false;
    return !(number - parseInt(number));
}

$("#duration_per_sessions_id").on("change", function () {
    var batch_start_date_time = $("#class_date_time").val();

    batch_start_date_time = batch_start_date_time.replaceAll("/", "-");
    var teacher_id = $("#class_name").val();
    var duration = $("#duration_per_sessions_id").val();
    $.get(
        "/api/teacher/" +
            teacher_id +
            "/" +
            batch_start_date_time +
            "/" +
            duration,
        function (data, status) {
            $("#teacher_available_status").val(data);
            if (data == "NO") {
                $("#saveForm").prop("disabled", true);
                $("#not_available").html(
                    "<span class='text-danger'>Teacher Not Available</span>"
                );
            } else {
                $("#not_available").html("");

                $("#saveForm").prop("disabled", false);
            }
        }
    );
});

var trueArray = 0;
/**
 * Get Availibility Checks
 */
/**
 * get availablity from add more button
 * @param {event} e
 * @param {*} id
 */
function getAvailabilities(datetimeprovided) {
    var batch_start_date_time = datetimeprovided;
    batch_start_date_time = batch_start_date_time.replaceAll("/", "-");
    var time = batch_start_date_time.split(" ")[1].replace(":", "");

    let current_date_time = new Date();
    let minutes =
        (current_date_time.getMinutes() < 10 ? "0" : "") +
        current_date_time.getMinutes();

    let hour = current_date_time.getHours() + "" + minutes;

    // console.log("time", time);
    // console.log("hour", hour);
    // get time selected by user
    let getdates = batch_start_date_time.split(" ")[0];
    let selectedDate = getdates.split("-")[2];
    // console.log(current_date_time.getDate());
    if (selectedDate == current_date_time.getDate()) {
        if (parseInt(hour) >= parseInt(time)) {
            $("#class_start_date_valid").html(
                "Selected Time Should be greater than current date and time"
            );
        } else {
            $("#class_start_date_valid").html("");
        }
    } else {
        $("#class_start_date_valid").html("");
    }

    var teacher_id = $("#class_name").val();
    var duration = $("#duration_per_sessions_id").val();
    $.get(
        "/find/teacher/" +
            teacher_id +
            "/" +
            batch_start_date_time +
            "/" +
            duration,
        function (data, status) {
            // $("#teacher_available_status").val(data);
            if (data == "NO") {
                trueArray = trueArray - 1;
            } else {
                trueArray = trueArray + 1;
            }
        }
    );
}

$(document).ready(function () {
    $("#saveForm").click(function (e) {
        e.preventDefault();

        // to disable save button after clicking once
        document.getElementById("saveForm").disabled = true;

        // form validation starts here
        var valid = true;
        if ($("#class_settings_id").val() == "") {
            $("#select_class_validation").html("Class Field Is Required.");
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if ($("#batch_price_per_session").val() == "") {
            $("#batch_price_per_session_validation").html(
                "Batch Price Per Session Field Is Required."
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if (!isInt($("#batch_price_per_session").val())) {
            $("#batch_price_per_session_validation").html(
                "Price Per Session Can not be empty and must be integer"
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }

        if ($("#class_date_time").val() == "") {
            $("#class_date_time_validation").html(
                "Class Date Time Field Is Required."
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if ($("#end_date_time").val() == "") {
            $("#end_date_time_validation").html(
                "End Date Time Field Is Required."
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if ($("#no_of_seats").val() == "") {
            $("#no_of_seats_validation").html("No Of Seats Field Is Required.");
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        //  alert(isInt($("#no_of_seats").val()));
        if ($("#no_of_seats").val() != "" && $("#no_of_seats").val() < 3) {
            $("#no_of_seats_validation").html(
                "No of seats must be integer and greater than 3"
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if (!isInt($("#no_of_seats").val())) {
            $("#no_of_seats_validation").html(
                "No of seats must be integer and greater than 3"
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if ($("#duration_per_sessions_id").val() == "") {
            $("#duration_per_sessions_validation").html(
                "Duration Per Sessions Field Is Required."
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if ($("#class_name").val() == "") {
            $("#class_name_validation").html(
                "Assign Teacher Field Is Required."
            );
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if ($("#class_master_id").val() == "") {
            $("#class_master_id_validation").html("Year Field Is Required.");
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        if ($("#subject_id").val() == "") {
            $("#subject_id_validation").html("Subject Field Is Required.");
            document.getElementById("saveForm").disabled = false;

            valid = false;
        }
        let countTotal = $("input[name='session_start_date[]']").length;
        let trueValues = 0;
        // check for available classes
        let allsessions = $("input[name='session_start_date[]']")
            .map(function () {
                return $(this).val();
            })
            .get();
        let session_array = [];
        let countSession = 1;
        allsessions.forEach(function (v) {
            if (session_array.includes(v)) {
                valid = false;
                $(`#Session-${countSession}`).html(
                    `<span class="text-danger">Session Date and time can not be same</span>`
                );
            } else {
                session_array.push(v);
            }
            countSession++;
            getAvailabilities(v);
        });
        $("#showLoader").show();
        setTimeout(() => {
            if (countTotal != trueArray) {
                valid = false;
                $("#showLoader").hide();
            }
            if (!valid) {
                $("#showLoader").hide();
            }

            // form validation ends here
            if (valid) {
                $("#showLoader").show();
                $.post("/create-classes", {
                    name: $("#class_name").val(),
                    location: $("#location").val(),
                    class_settings_id: $("#class_settings_id").val(),
                    class_settings: $("#class_settings").val(),
                    sell_each_session: $("#sell_each_session").val(),
                    batch_price_per_session: $(
                        "#batch_price_per_session"
                    ).val(),
                    batch_start_date: $("#class_date_time").val(),
                    batch_end_date: $("#end_date_time").val(),
                    duration_per_sessions_id: $(
                        "#duration_per_sessions_id"
                    ).val(),
                    no_of_seats: $("#no_of_seats").val(),
                    teacher_available_status: $(
                        "#teacher_available_status"
                    ).val(),
                    status: $('input[name="status"]:checked').val(),
                    class_master_id: $("#class_master_id").val(),
                    subject_id: $("#subject_id").val(),
                    session_start_date: $("input[name='session_start_date[]']")
                        .map(function () {
                            return $(this).val();
                        })
                        .get(),
                    topic_id: $("select[name='topic_id[]']")
                        .map(function () {
                            return $(this).val();
                        })
                        .get(),
                    session_name: $("input[name='session_name[]']")
                        .map(function () {
                            return $(this).val();
                        })
                        .get(),
                    comment: $("input[name='comment[]']")
                        .map(function () {
                            return $(this).val();
                        })
                        .get(),
                }).done(function (msg) {
                    $("#showLoader").hide();
                    window.location = "/manage-classes";
                });
            }
        }, 5000);

        // form validation ends here
        if (valid) {
            // $.post("/create-classes", {
            //     name: $("#class_name").val(),
            //     location: $("#location").val(),
            //     class_settings_id: $("#class_settings_id").val(),
            //     class_settings: $("#class_settings").val(),
            //     sell_each_session: $("#sell_each_session").val(),
            //     batch_price_per_session: $("#batch_price_per_session").val(),
            //     batch_start_date: $("#class_date_time").val(),
            //     batch_end_date: $("#end_date_time").val(),
            //     duration_per_sessions_id: $("#duration_per_sessions_id").val(),
            //     no_of_seats: $("#no_of_seats").val(),
            //     teacher_available_status: $("#teacher_available_status").val(),
            //     status: $('input[name="status"]:checked').val(),
            //     class_master_id: $("#class_master_id").val(),
            //     subject_id: $("#subject_id").val(),
            //     session_start_date: $("input[name='session_start_date[]']")
            //         .map(function () {
            //             return $(this).val();
            //         })
            //         .get(),
            //     topic_id: $("select[name='topic_id[]']")
            //         .map(function () {
            //             return $(this).val();
            //         })
            //         .get(),
            //     session_name: $("input[name='session_name[]']")
            //         .map(function () {
            //             return $(this).val();
            //         })
            //         .get(),
            //     comment: $("input[name='comment[]']")
            //         .map(function () {
            //             return $(this).val();
            //         })
            //         .get(),
            // }).done(function (msg) {
            //     window.location = "/manage-classes";
            // });
        }

        //
        // function (data, status) {
        //     window.location = "/manage-classes";
        // }
        // In your Javascript (external .js resource or <script> tag)
        // $(document).ready(function() {

        // });
    });
});
