
<link rel="stylesheet" href="{{asset('wa/admin/css/scoresheet.css')}}"> 
      <div>
          <span class="header-para" style="font-size:24px;"> Mock Examination Report for {{$week->week_name}} for {{$name}}</span>
      </div>
      <div class="mt-4">
          <div class="row">
          <div class="col-4">
             <p class="header-para" style="font-size:16px;">Overall Week Result</p> 
          </div>
          </div>    
          <div class="row">
          <table class="table table-hover table-bordered m-1">
              <thead class="custom-head" >
                <tr style="background: skyblue">
                  <th scope="col" class="header-para">Sr. No</th>
                  <th scope="col" class="header-para">Class Average</th>
                  <th scope="col" class="header-para">Class Highest</th>
                  <th scope="col" class="header-para">Class Lowest</th>
                  {{-- <th scope="col" class="header-para">Rank</th> --}}
                  {{-- <th scope="col" class="header-para">Percentage</th> --}}
                  <th scope="col" class="header-para">Your Total Score</th>
                </tr>
              </thead>
              <tbody>
                @php  
                   $class_average_marks=\App\Http\Controllers\OfflineController::get_class_average($week_id);
                   $class_highest_marks=\App\Http\Controllers\OfflineController::get_class_highest($week_id);
                   $student_marks=\App\Http\Controllers\OfflineController::get_your_total($week_id, $student_id);
                @endphp
                <tr class="table-td">
                  <th scope="row" class="header-para" class="header-para">1</th>
                  <td class="header-para">{{ $class_average_marks }}</td>
                  <td class="header-para">
                    @php
                        $maximum=max($class_highest_marks);
                        echo $maximum;
                    @endphp
                  </td>
                  <td class="header-para">
                    @php
                        $maximum=min($class_highest_marks);
                        echo $maximum;
                    @endphp
                  </td>
                  {{-- <td class="header-para">12</td> --}}
                  {{-- <td class="header-para">77% </td> --}}
                  <td class="header-para">{{$student_marks}}</td>
                </tr>
              </tbody>
            </table>
          </div>
      </div>
      @foreach ($subject_full_marks as $subject_full_mark)
      <div>
      <div class="mt-4">
          <div class="row">
          <div class="col-4">
              <p class="header-para" style="font-size:16px;">Overall {{$subject_full_mark->subject->name}} Result</p> 
          </div>
          </div>    
          <div class="row">
          <table class="table table-hover table-bordered m-1">
            <thead class="custom-head">
              <tr>
                <th scope="col" class="header-para">Sr. No</th>
                <th scope="col" class="header-para">Class Average</th>
                <th scope="col" class="header-para">Class Highest</th>
                <th scope="col" class="header-para">Class Lowest</th>
                <th scope="col" class="header-para">Your Score</th>
                {{-- <th scope="col" class="header-para">Rank</th> --}}
                <th scope="col" class="header-para">Percentage</th>
              </tr>
            </thead>
              <tbody>
                    @php
                        $week_id=$week->id;
                        $subject_id=$subject_full_mark->subject->id;
                        $student_id=$student_id ;
                        $class_highest_marks=\App\Http\Controllers\OfflineController::get_subject_highest_marks($week_id, $subject_id);
                        $class_lowest_marks=\App\Http\Controllers\OfflineController::get_subject_lowest_marks($week_id, $subject_id);
                        $class_average_marks=\App\Http\Controllers\OfflineController::get_subject_average_marks($week_id, $subject_id);
                        $student_marks=\App\Http\Controllers\OfflineController::get_student_marks($week_id, $subject_id, $student_id);
                        $student_percentage=\App\Http\Controllers\OfflineController::get_student_percentage($week_id, $subject_id, $student_id);
                    @endphp
                <tr>
                  <th scope="row" class="header-para">1</th>
                  <td class="header-para">{{$class_average_marks}}</td>
                  <td class="header-para">
                        {{$class_highest_marks}}
                  </td>
                  <td class="header-para"> {{$class_lowest_marks}}</td>
                  <td class="header-para">{{$student_marks->obtained_marks}}/{{$student_marks->full_marks}}</td>
                  {{-- <td class="header-para">2/10</td> --}}
                  <td class="header-para">{{$student_percentage}}%</td>
                </tr>
                
              </tbody>
            </table>
          </div>
      </div>
      </div>
      @endforeach
      <div class="row">
        <div class="col-6">
          <div class="container m-4">
            <canvas id="score-chart">

            </canvas>
        </div>
        </div>
        <div class="col-6">
          <div class="container m-4">
            <canvas id="math-chart">

            </canvas>
        </div>
        </div>
      </div>
      <div class="row">
        <div class="col-6">
          <div class="container m-4">
            <canvas id="physics-chart">

            </canvas>
        </div>
        </div>
        <div class="col-6">
          <div class="container m-4">
            <canvas id="chart-4">

            </canvas>
        </div>
        </div>
      </div>
      {{-- @php
          $subjects=[];
          foreach($subject_full_marks as $subject_marks)
          {
            $subjects=$subjects.append($subject_marks);
            echo $subjects;
          }
          
      @endphp --}}
  </div>  
  
      <script>
                var url = "{{url('get-graph-math')}}";
                var Weeks = new Array();
                var Marks = new Array();
                var subject;
                $(document).ready(function(){
                  $.get(url, function(response){
            response.forEach(function(data){
              Weeks.push(data.week_name)
              Marks.push(data.obtained_marks)
              subject=data.name
            //  console.log(data.week_name)
            });
          const data = {
          labels: Weeks,
          datasets: [{
            label: 'Your '+subject+' Progress',
            backgroundColor: ['green', 'red', 'orange', 'purple' ],
            borderColor: 'rgb(255, 99, 132)',
            data: Marks,
          }]
        };
        const config = {
          type: 'bar',
          data: data,
          options: {}
        };
        var myChart = new Chart(
            document.getElementById('score-chart'),
            config
          );
                  });
                });
            </script>


        {{-- english graph start --}}
        <script>
          var url1 = "{{url('get-graph-english')}}";
          var Weeks_English = new Array();
          var Marks_english = new Array();
          var subject_english;
          $(document).ready(function(){
            $.get(url1, function(response){
      response.forEach(function(data1){
        Weeks_English.push(data1.week_name)
        Marks_english.push(data1.obtained_marks)
        subject_english=data1.name
       console.log(data1)
      });
    const data1 = {
    labels: Weeks_English,
    datasets: [{
      label: 'Your '+subject_english +' Progress',
      backgroundColor: ['green', 'red', 'orange', 'purple' ],
      borderColor: 'rgb(255, 99, 132)',
      data: Marks_english,
    }]
  };
  const config = {
    type: 'bar',
    data: data1 ,
    options: {}
  };
  var myChart = new Chart(
      document.getElementById('math-chart'),
      config
    );
            });
          });
      </script>
        {{-- end english graph --}}

        {{-- physics graph --}}
        <script>
          var url2 = "{{url('get-graph-physics')}}";
          var Weeks2 = new Array();
          var Marks2 = new Array();
          var subject2;
          $(document).ready(function(){
            $.get(url2, function(response){
      response.forEach(function(data2){
        Weeks2.push(data2.week_name)
        Marks2.push(data2.obtained_marks)
        subject2=data2.name
       console.log(data2)
      });
    const data2 = {
    labels: Weeks2,
    datasets: [{
      label: 'Your '+subject2 +' Progress',
      backgroundColor: ['green', 'red', 'orange', 'purple' ],
      borderColor: 'rgb(255, 99, 132)',
      data: Marks2,
    }]
  };
  const config = {
    type: 'bar',
    data: data2 ,
    options: {}
  };
  var myChart = new Chart(
      document.getElementById('physics-chart'),
      config
    );
            });
          });
      </script>
        {{-- eng physics graph --}}

        {{-- Subject 4 --}}
        <script>
          var url4 = "{{url('get-graph-4')}}";
          var Weeks4 = new Array();
          var Marks4 = new Array();
          var subject4;
          $(document).ready(function(){
            $.get(url4, function(response){
      response.forEach(function(data4){
        Weeks4.push(data4.week_name)
        Marks4.push(data4.obtained_marks)
        subject4=data4.name
       console.log(data4)
      });
    const data4 = {
    labels: Weeks4,
    datasets: [{
      label: 'Your '+subject4 +' Progress',
      backgroundColor: ['green', 'red', 'orange', 'purple' ],
      borderColor: 'rgb(255, 99, 132)',
      data: Marks4,
    }]
  };
  const config = {
    type: 'bar',
    data: data4 ,
    options: {}
  };
  var myChart = new Chart(
      document.getElementById('chart-4'),
      config
    );
            });
          });
      </script>
        {{-- End Subject 4 --}}