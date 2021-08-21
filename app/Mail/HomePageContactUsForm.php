<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class HomePageContactUsForm extends Mailable
{
    use Queueable, SerializesModels;

    public $schoolName;

    public $fullName;

    public $mobileNumber;
    
    public $msg;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($schoolName, $fullName, $mobileNumber, $msg)
    {
        $this->schoolName = $schoolName;
        $this->fullName = $fullName;
        $this->mobileNumber = $mobileNumber;
        $this->msg = $msg;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.contactusform');
    }
}
