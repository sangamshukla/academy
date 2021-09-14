
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
                  <th scope="col" class="header-para">Rank</th>
                  <th scope="col" class="header-para">Percentage</th>
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
                  <td class="header-para">12</td>
                  <td class="header-para">77% </td>
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
                <th scope="col" class="header-para">Rank</th>
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
                  <td class="header-para">2/10</td>
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
  </div>
      <script>
   
        const labels = [

        ];
        const data = {
          labels: labels,
          datasets: [{
            label: 'Your Weekly Progress',
            backgroundColor: ['green', 'red', 'orange', ],
            borderColor: 'rgb(255, 99, 132)',
            data: [50, 20, 35, 2, 20],
          }]
        };
        const config = {
          type: 'line',
          data: data,
          options: {}
        };
        var myChart = new Chart(
            document.getElementById('score-chart'),
            config
          );
            </script>
          
    <script>
    const sub_labels = [
          'Maths',
          'English',
          'Comprehension',
          'Essay',
          'May',
        ];
        const sub_data = {
          labels: sub_labels,
          datasets: [{
            label: 'Your Math Progress',
            backgroundColor: ['green', 'red', 'orange', ],
            borderColor: 'rgb(255, 99, 132)',
            data: [50, 20, 35, 2, 20],
          }]
        };
        const subconfig = {
          type: 'line',
          data: sub_data,
          options: {}
        };
        var mathChart = new Chart(
            document.getElementById('math-chart'),
            subconfig
          );
            </script>