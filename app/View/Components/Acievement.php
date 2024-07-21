<?php

namespace App\View\Components;

use Illuminate\View\Component;
use App\Models\Achievement;

class Acievement extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        $achievements = Achievement::where('status', 1)->get();
        return view('components.acievement', compact('achievements'));
    }
}
