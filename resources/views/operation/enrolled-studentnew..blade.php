@extends('layouts.operation_dashboard')
@section('content')

<div id="alert" style="margin-top: 200px;">

</div>
    <table class="table table-bordered table-responsive" style="margin-top:0px;">
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Purchased On</th>
          <th>Total Amount</th>
          <th>Due Amount</th>
          <th>Payment Status</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($session->enrolled()->pluck('order_id') as $ord )
          @php
            $singleOrder = App\Models\OrderPayment::find($ord);
          @endphp
          <tr>
              <td>{{ $singleOrder->student->name }}</td>
              <td style="overflow: scroll;">{{ $singleOrder->student->email }}</td>
              <td>{{ $singleOrder->created_at->format("Y-m-d h:i:s a") }}</td>
              <td>
                  {{ $singleOrder->order_amount }}

                </td>
              <td>

                  <div class="row">
                    <div class="col-2">{{ $singleOrder->order_amount - $singleOrder->paid_amount  }}</div>
                    @if($singleOrder->order_amount - $singleOrder->paid_amount > 0)
                    <div class="col-5">
                        <form id="add-amount" style="padding:0px; margin:0px;" class="form">
                            <input type="number" name="paid_amount" id="paid_amount" style="display: block;" min="1" max="5" class="form-group">
                    </div>
                    <div class="col-5">
                        <button type="button" class="btn btn-success" onclick="payDue()" id="payment-button">Pay</button>
                    </form>
                    </div>
                    @else
                    @endif
                </div>
                </div>
                </td>
              <td>
                    @if($singleOrder->order_amount - $singleOrder->paid_amount == 0)
                        <i class="fa fa-check" style="color:green; float:right;"></i>
                    @else
                        <i class="fa fa-times" style="color:red; float:right;"></i>
                    @endif
             </td>
          </tr>
        @endforeach
      </tbody>
    </table>
    <script>
        function payDue()
        {
           payment_amount=parseInt($('#paid_amount').val())+parseInt('{{ $singleOrder->paid_amount }}');
           order_id='{{ $singleOrder->id }}';
           $.ajax({
            type: 'post',
            url: '{{route("pay-due-amount")}}',
            data: {
            '_token': '{{ csrf_token() }}',
            payment_amount:payment_amount,
            order_id:order_id,
            },
            success: function (response) {
                $('#alert').html('<div class="alert alert-success alert-dismissible fade show" role="alert">'+
    ' Your payment has been updated successfully Refresh the page to see it now. '+
    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
        '<span aria-hidden="true">&times;</span></button></div>');

            },
            error: function (response) {
                $('#alert').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">'+
    ' There is some error making payment. Please try again '+
    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
        '<span aria-hidden="true">&times;</span></button></div>');

            }
            });
        }
    </script>
@endsection
