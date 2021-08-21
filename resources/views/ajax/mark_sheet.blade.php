<div class="table-responsive-sm">          
    <table class="table table-bordered table table-striped">
    <thead style="color: black;">
      <tr>
        <th colspan="3" style="text-align:center">
          <img height="36" src="{{ asset('logo.png') }}" />
        </th>
        <th colspan="3" style="text-align:center">Name: Week 17 Year 5</th>
        <th colspan="4" style="text-align:center">Date: 2020-01-17</th>
      </tr>
      <tr>
        <th>Sr.No.</th>
        <th>Index Number</th>
        <th>Full Name</th>
        <th>Maths Multiple(50)</th>
        <th>English Multiple(50)</th>
        <th>Comprehension(25)</th>
        <th>Obtd Marks</th>
        <th>Total Marks</th>
        <th>Percentage</th>
        <th>Rank</th>
      </tr>
    </thead>
    <tbody>
        @php $i=1; @endphp
      @foreach($assignedhomeworks as $assignedhomework)
      <tr>
        <td>{{ $i }}</td>
        <td>{{ $assignedhomework->id }}</td>
        <td>{{ $assignedhomework->name }}</td>
        {{-- <td>{{ $assignedhomework->homeWork->session->batch->subject->name}}</td> --}}
        <td>{{ $assignedhomework->maths_marks[1] }}</td>
        <td>{{ $assignedhomework->english_marks[1] }}</td>
        <td>{{ $assignedhomework->essay_marks[1]   }}</td>
        <td>{{ $assignedhomework->obtd_marks   }}</td>
        <td>{{ $assignedhomework->total_marks    }}</td>
        <td>
          @if($assignedhomework->percentage < 40)
            <span class="text text-danger">{{ round($assignedhomework->percentage, 2) }} %</span>
          @elseif($assignedhomework->percentage > 40 && $assignedhomework->percentage < 80)
          <span class="text text-warning">{{ round($assignedhomework->percentage, 2) }} %</span>
          @else
          <span class="text text-success">{{ round($assignedhomework->percentage, 2) }} %</span>
          @endif
        </td>
        <td>{{ $i    }}</td>
      </tr>
      @php $i++; @endphp
      @endforeach
      
    </tbody>
  </table>
  </div>