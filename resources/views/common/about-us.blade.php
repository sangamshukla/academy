@extends('layouts.main')
@section('css')
    <link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">
@endsection
@section('content')

<div class="container"><br><br>
    <h1 style="color: #0073cc; font-size: 2.5rem; font-weight: 600; ">About Us</h1>
    <span style="font-family:verdana,geneva,sans-serif; font-weight: bolder; margin-left:400px;"><strong>Welcome to Wallington Academy!</strong></span><br><br><br>

<p style=" font-family: Roboto; font-size: 19px; font-style: normal; font-weight: 300; line-height: 30px; color: #666666; text-align:justify;">
In the quest for making the best of life, academic career plays a pivotal role. Every child who takes this up is bound to face challenges. But the lesson behind each of these adversities is one important thing that helps us get through it.<br><br>


With an intent of providing educational excellence and a passionate and adept staff, we try to achieve this through:<br><br>

- Personalised tuition service that helps students gain individual and unique learning experience<br><br>
-Learning in smaller- class size settings and low student is to teacher ratio makes sure the student is guided and made aware about their areas of improvement<br><br>
- Our personalised feedbacks are targeted to the learner's own learning process, boosting their self - confidence<br><br>
-More opportunities to ask questions, because the more we learn, the more doubts we come across during reflection and introspection<br><br>
Our observations... ?<br><br>

-Improving retention rates and engagement pertaining to academic curriculum,<br><br>
-Higher self-confidence and less unproductive and dissociate behaviours,<br><br>
 -Improved academic performance.<br><br>

 Founded on a passion for teaching, Wallington Academy has blossomed from a humble, independent enterprise to a well-trusted service which continues to help children reach their full potential. Just 0.1 miles from the rail station and only a short distance from a selection of the best grammar schools in the country. Our central location makes us ideal for students preparing for the 11+ examination. Our personalised programmes are tailored to meet each child at their point of need. We have built a fully comprehensive curriculum which, when implemented by our passionate and adept staff, continues to lead to exceptional 11+ pass rates of over 90%.<br><br>


</p>
</div>
@endsection
@section('js')
<script>
    document.FIX_HEADER_TOP = 150;
</script>

  <script src="{{ asset('wa/coustom.js') }}"></script>
  @endsection