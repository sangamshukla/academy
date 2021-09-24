@extends('layouts.admin_dashboard')
@section('content')
    <link rel="stylesheet" href="{{ asset('wa/admin/css/scoresheet.css') }}">
    <div>
        <div class="container">
            <div class="inner-container">
                <p class="para">{{ \App\Models\Week::find($week_id)->week_name }} Score Sheet</p
                    class="para">
                {{-- <div>
                    <div class="search-div">
                        <input type="text" name="" id="" class="search-box">
                        <img src="{{ asset('wa/admin/img/search.svg') }}" alt="" class="search-img">
                    </div>
                </div> --}}
                <div>
                    @include('_form.success')

                    <table class="table table-hover table-bordered mt-4 m-1" id="marks-table">
                        <thead class="table-head">
                            <tr>
                                <th scope="col">Sr. No</th>
                                <th scope="col"> List Of Students</th>
                                @foreach ($subject_full_marks as $subject_full_mark)
                                    <th scope="col">
                                        {{ $subject_full_mark->subject->name . '(' . round($subject_full_mark->full_marks) . ')' }}
                                    </th>
                                @endforeach
                                <th scope="col">Allow Student</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                @forelse($students as $student)
                                    <th scope="row">
                                        {{ $loop->iteration }}
                                    </th>
                                    <td>{{ $student->student->name }}</td>
                                    @foreach ($subject_full_marks as $subject_full_mark)
                                        <td>
                                            <form method="POST" action="{{ url('submit-scores') }}">
                                                @php
                                                    $submitted = App\Http\Controllers\OfflineController::is_mark_submitted($student->student->id, $subject_full_mark->id);
                                                    $obtained_mark = App\Http\Controllers\OfflineController::obtained_mark($student->student->id, $subject_full_mark->id);
                                                @endphp
                                                @if ($submitted)
                                                    {{ round($obtained_mark->obtained_marks) }}
                                                @else
                                                    <input type="number"
                                                        name="scoresheet[{{ $student->student->id }}][{{ $subject_full_mark->id }}]"
                                                        id="" style="width: 80px;"
                                                        class="input{{ $students[$loop->index] }}" required
                                                        max="{{ $subject_full_mark->full_marks }}">
                                                    <input type="hidden" name="week_id" value="{{ $week_id }}" />
                                                @endif

                                        </td>
                                        {{-- <td>{{ $subject_full_mark->id }}</td> --}}
                                    @endforeach
                                    @php
                                        $allowed = App\Http\Controllers\OfflineController::is_allowed($student->student_id, $week_id);
                                        // dump($allowed);
                                    @endphp
                                    <td>
                                        @if (!$submitted)
                                            <select name="is_allowed" id="">
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                            </select>
                                        @else
                                            @if ($allowed)
                                                {{ 'Yes' }}
                                            @else
                                                {{ 'No' }}
                                            @endif

                                        @endif
                                    </td>
                                    <td>
                                        @if (!$submitted)
                                            <label>
                                                <input type="submit" style="display: none;" />
                                                <svg width="19" height="19" viewBox="0 0 19 19" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg" wire:submit.preventDefault="save"
                                                    class="submitmark{{ $students[$loop->index] }}" type="submit">
                                                    <path
                                                        d="M17.6607 3.28275C17.3959 3.0175 16.9662 3.01704 16.7014 3.28162L8.563 11.3986L5.62668 8.20944C5.37296 7.93403 4.94398 7.91617 4.66811 8.16985C4.39245 8.42358 4.3748 8.85276 4.62852 9.12842L8.04311 12.8367C8.16816 12.9727 8.34317 13.0516 8.5277 13.0554C8.53266 13.0556 8.53744 13.0556 8.54219 13.0556C8.72152 13.0556 8.89403 12.9844 9.02112 12.8578L17.6593 4.2422C17.9248 3.97765 17.9253 3.548 17.6607 3.28275Z"
                                                        fill="#999999" />
                                                    <path
                                                        d="M17.4983 9.14483C17.1237 9.14483 16.82 9.44851 16.82 9.82324C16.82 14.0379 13.3914 17.4665 9.17676 17.4665C4.96237 17.4665 1.53354 14.0379 1.53354 9.82324C1.53354 5.60885 4.96237 2.18003 9.17676 2.18003C9.55145 2.18003 9.85517 1.87635 9.85517 1.50165C9.85517 1.12692 9.55145 0.823242 9.17676 0.823242C4.2141 0.823242 0.176758 4.86059 0.176758 9.82324C0.176758 14.7857 4.2141 18.8232 9.17676 18.8232C14.1392 18.8232 18.1768 14.7857 18.1768 9.82324C18.1768 9.44855 17.8731 9.14483 17.4983 9.14483Z"
                                                        fill="#999999" />
                                                </svg>

                                            </label>

                                            </form>
                                        @else
                                            {{-- <a href="#my_modal" data-toggle="modal" data-book-id="my_id_value">Open Modal</a> --}}
                                            <a
                                                href="{{ route('offline-scoresheet-pdf', [$student->student->id, $week_id]) }}"><svg
                                                    width="25" height="24" viewBox="0 0 25 24" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M20.3202 11.7877C20.1773 11.5922 16.7715 7 12.4218 7C8.07207 7 4.66619 11.5922 4.52341 11.7875C4.38803 11.973 4.38803 12.2246 4.52341 12.4101C4.66619 12.6056 8.07207 17.1978 12.4218 17.1978C16.7715 17.1978 20.1773 12.6056 20.3202 12.4103C20.4558 12.2248 20.4558 11.973 20.3202 11.7877ZM12.4218 16.1429C9.21776 16.1429 6.44272 13.095 5.62125 12.0985C6.44166 11.1013 9.21089 8.05494 12.4218 8.05494C15.6257 8.05494 18.4005 11.1023 19.2224 12.0993C18.4019 13.0965 15.6327 16.1429 12.4218 16.1429Z"
                                                        fill="#666666" />
                                                    <path
                                                        d="M12.4202 8.93506C10.6752 8.93506 9.25537 10.3548 9.25537 12.0999C9.25537 13.845 10.6752 15.2648 12.4202 15.2648C14.1653 15.2648 15.5851 13.845 15.5851 12.0999C15.5851 10.3548 14.1653 8.93506 12.4202 8.93506ZM12.4202 14.2098C11.2568 14.2098 10.3103 13.2633 10.3103 12.0999C10.3103 10.9365 11.2568 9.99003 12.4202 9.99003C13.5836 9.99003 14.5301 10.9365 14.5301 12.0999C14.5301 13.2633 13.5837 14.2098 12.4202 14.2098Z"
                                                        fill="#666666" />
                                                </svg> </a>
                                            <a
                                                href="{{ route('offline-scoresheet-edit', [$student->student->id, $week_id]) }}">
                                                <svg width="25" height="24" viewBox="0 0 25 24" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg " data-toggle="modal"
                                                    data-target="#exampleModalCenter">
                                                    <path
                                                        d="M19.3417 14.041C19.1205 14.041 18.9413 14.2203 18.9413 14.4415V17.9974C18.9405 18.6607 18.4031 19.1982 17.7398 19.1989H6.50245C5.83914 19.1982 5.30176 18.6607 5.30098 17.9974V7.56104C5.30176 6.89789 5.83914 6.36036 6.50245 6.35957H10.0584C10.2796 6.35957 10.4588 6.18029 10.4588 5.95908C10.4588 5.73803 10.2796 5.55859 10.0584 5.55859H6.50245C5.39703 5.55985 4.50125 6.45563 4.5 7.56104V17.9976C4.50125 19.103 5.39703 19.9988 6.50245 20H17.7398C18.8452 19.9988 19.741 19.103 19.7422 17.9976V14.4415C19.7422 14.2203 19.563 14.041 19.3417 14.041Z"
                                                        fill="#333333" />
                                                    <path
                                                        d="M19.5837 4.52787C18.8799 3.82404 17.7388 3.82404 17.035 4.52787L9.88999 11.6729C9.84102 11.7218 9.80567 11.7825 9.78721 11.8492L8.84762 15.2413C8.80898 15.3804 8.84825 15.5293 8.95025 15.6315C9.0524 15.7335 9.20134 15.7727 9.34041 15.7342L12.7325 14.7945C12.7992 14.776 12.8599 14.7407 12.9088 14.6917L20.0537 7.54656C20.7564 6.84227 20.7564 5.70212 20.0537 4.99782L19.5837 4.52787ZM10.7626 11.9332L16.6102 6.0854L18.4961 7.9713L12.6484 13.8191L10.7626 11.9332ZM10.3859 12.6891L11.8926 14.1959L9.80848 14.7734L10.3859 12.6891ZM19.4874 6.98025L19.0626 7.40498L17.1766 5.51893L17.6015 5.09419C17.9924 4.70324 18.6263 4.70324 19.0173 5.09419L19.4874 5.56414C19.8777 5.95556 19.8777 6.58899 19.4874 6.98025Z"
                                                        fill="#333333" />
                                                </svg>

                                            </a>
                                            <svg width="25" height="24" viewBox="0 0 25 24" fill="none"
                                                xmlns="http://www.w3.org/2000/svg" onclick="deletemark()"
                                                class="delete1">
                                                <g clip-path="url(#clip0)">
                                                    <path
                                                        d="M13.9992 9.79688C13.7923 9.79688 13.6245 9.96462 13.6245 10.1716V17.2535C13.6245 17.4604 13.7923 17.6283 13.9992 17.6283C14.2062 17.6283 14.3739 17.4604 14.3739 17.2535V10.1716C14.3739 9.96462 14.2062 9.79688 13.9992 9.79688Z"
                                                        fill="#333333" />
                                                    <path
                                                        d="M9.57783 9.79688C9.37087 9.79688 9.20312 9.96462 9.20312 10.1716V17.2535C9.20312 17.4604 9.37087 17.6283 9.57783 17.6283C9.7848 17.6283 9.95254 17.4604 9.95254 17.2535V10.1716C9.95254 9.96462 9.7848 9.79688 9.57783 9.79688Z"
                                                        fill="#333333" />
                                                    <path
                                                        d="M6.35524 8.76335V17.9953C6.35524 18.541 6.55533 19.0534 6.90486 19.4211C7.25278 19.7898 7.73697 19.9991 8.2437 20H15.3333C15.8401 19.9991 16.3243 19.7898 16.6721 19.4211C17.0216 19.0534 17.2217 18.541 17.2217 17.9953V8.76335C17.9165 8.57893 18.3668 7.90768 18.2738 7.19471C18.1807 6.48189 17.5734 5.94867 16.8545 5.94852H14.936V5.48014C14.9382 5.08626 14.7825 4.70804 14.5036 4.42979C14.2248 4.15169 13.846 3.99683 13.4521 4.00005H10.1248C9.73096 3.99683 9.35216 4.15169 9.07333 4.42979C8.79449 4.70804 8.63875 5.08626 8.64095 5.48014V5.94852H6.72248C6.00352 5.94867 5.39623 6.48189 5.30314 7.19471C5.21019 7.90768 5.66043 8.57893 6.35524 8.76335ZM15.3333 19.2506H8.2437C7.60304 19.2506 7.10465 18.7002 7.10465 17.9953V8.79629H16.4723V17.9953C16.4723 18.7002 15.9739 19.2506 15.3333 19.2506ZM9.39036 5.48014C9.38787 5.28503 9.46457 5.09724 9.60304 4.9595C9.74136 4.82177 9.92959 4.7461 10.1248 4.74946H13.4521C13.6474 4.7461 13.8356 4.82177 13.9739 4.9595C14.1124 5.09709 14.1891 5.28503 14.1866 5.48014V5.94852H9.39036V5.48014ZM6.72248 6.69793H16.8545C17.227 6.69793 17.5289 6.99989 17.5289 7.3724C17.5289 7.74492 17.227 8.04688 16.8545 8.04688H6.72248C6.34997 8.04688 6.04801 7.74492 6.04801 7.3724C6.04801 6.99989 6.34997 6.69793 6.72248 6.69793Z"
                                                        fill="#333333" />
                                                    <path
                                                        d="M11.7883 9.79688C11.5813 9.79688 11.4136 9.96462 11.4136 10.1716V17.2535C11.4136 17.4604 11.5813 17.6283 11.7883 17.6283C11.9952 17.6283 12.163 17.4604 12.163 17.2535V10.1716C12.163 9.96462 11.9952 9.79688 11.7883 9.79688Z"
                                                        fill="#333333" />
                                                </g>
                                                <defs>
                                                    <clipPath id="clip0">
                                                        <rect width="24" htmlheight="24" fill="white"
                                                            transform="translate(0.5)" />
                                                    </clipPath>
                                                </defs>
                                            </svg>

                                        @endif


                                    </td>

                            </tr>

                        @empty
                            <tr>
                                <td colspan=6>
                                    <p>No data availables</p>
                                </td>

                                @endforelse
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <!-- Link to open the modal -->
    {{-- <p><a href="#ex1" rel="modal:open">Open Modal</a></p> --}}
    @push('scripts')
        <script>
            // $("#marks-table").dataTable({

            // });
        </script>
    @endpush
@endsection
