<div style="border: 2px solid green;">
<div style="text-align: center;">
    <!--<img src="{{'testing/public/wa/admindashboard/img/logo.png'}}">-->
    
     
</div><br>
@component('mail::message')
# {{ $fullName }} has contacted You.
Full Name : {{ $fullName }}<br>
Mobile Number : {{ $mobileNumber }}<br>
School Name : {{ $schoolName }}<br>
Msg : {{ $msg }}
<h4>Thank you for getting in touch!</h4>
<h4>We have received your details. We will get back to you at the earliest.</h4>
<h4>If your query is urgent, please use the telephone number to talk to one of our staff members.</h4>
<h4>Talk to you soon.</h4>
<h4>Team Wallington Academy</h4>
<h4>Disclaimer: We will not, in any circumstances, share your personal information with other individuals or organizations without your permission, including public organizations, corporations or individuals, except when applicable by law. We do not sell, communicate or divulge your information to any mailing lists.</h4>


Thanks,
{{ config('app.name') }}
@endcomponent
</div>