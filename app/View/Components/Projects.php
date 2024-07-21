<?php

namespace App\View\Components;

use Illuminate\View\Component;
use App\Models\Link;

class Projects extends Component
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
        // $projects = Project::limit(6)->orderBy('id', 'Desc')->get();
        $links = Link::where('status', 1)->where('type', 'initiative')->limit(6)->get();
        return view('components.projects', compact('links'));
    }
}
