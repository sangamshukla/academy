<?php

namespace App\View\Components;

use Illuminate\View\Component;

class row extends Component
{
    public $batch;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($batch)
    {
        $this->batch = $batch;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|string
     */
    public function render()
    {
        return view('components.row');
    }
}
