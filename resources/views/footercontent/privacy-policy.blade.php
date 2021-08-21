@extends('layouts.main')

@section('css')
    <link rel="stylesheet" href="{{ asset('wa/welcome.css') }}">
@endsection

@section('content')
{{-- <iframe src="{{asset('wa/assets/img/privacy-policy.pdf')}}" width="100%" height="700"></iframe> --}}
<div class="container"><br><br>
<h4 style="color: #0073cc; font-size: 2.5rem; font-weight: 600;">Privacy</h4><br>

    <p style="font-family: Roboto; font-size: 19px; font-style: normal; font-weight: 300; line-height: 30px; color: #666666;  text-align:justify;"> This privacy policy sets out how Wallington Academy uses and protects any information that you give Wallington Academy when you use this website.<br><br>
    Wallington Academy is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement.<br><br>
    Wallington Academy may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from your date of registration.<br><br>
    What we collect<br><br>
    We may collect the following information: <br><br>
    Name<br>
    Contact information including email address
    Demographic information such as postcode, preferences and interests
    Other information relevant to customer surveys and/or offers<br>
    What we do with the information we gather<br><br>
    We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:
    Internal record keeping.<br><br>
    We may use the information to improve our products and services.<br><br>
    We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided.<br><br>
    From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail. We may use the information to customise the website according to your interests.<br><br>
    Security<br><br>
    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.<br><br>
    Links to other websites<br><br>
    Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.<br><br>
</p>
</div>
@endsection
@section('js')
<script>
    document.FIX_HEADER_TOP = 150;
</script>

  <script src="{{ asset('wa/coustom.js') }}"></script>
  @endsection

