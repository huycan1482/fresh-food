<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class MailNotify extends Mailable
{
    use Queueable, SerializesModels;

    protected $order;
    protected $job; 

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($order, $job)
    {
        $this->order = $order;
        $this->job = $job;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // return $this->view('view.name');
        if ($this->job == 'shopping') {
            

            return $this->view ('mail.shopping', [
                'order' => $this->order,
            ]);
        }
        
        
    }
}
