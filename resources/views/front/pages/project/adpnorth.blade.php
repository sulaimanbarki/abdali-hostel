@extends('front.layouts.layout')
@section('title', 'Targets & Achievements')

@section('content')

<style>
    .bg {
        background: #508167 !important;
        border: 1px solid #406551 !important;
        border-right: 1px solid #406551 !important;
    }

    .bg-1 {
        background: #569c77 !important;
        border: 1px solid #406551 !important;
        border-right: 1px solid #406551 !important;
    }
</style>

<x-inner-page-header page='adp-north' slug='adp-north' />


<section class="page-details">
    <div class="custom-container">
        <div class="table-responsive">
            <table class="table text-center pricing-table">
                <thead>
                    <tr>
                        <th>
                            <h3>No.</h3>
                        </th>
                        <th>
                            <h3>Document Name</h3>

                        </th>
                        <th>
                            <h3>Document Type</h3>

                        </th>
                        <th>
                            <h3>Action</h3>

                        </th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>&nbsp;DISTRICT WISE ADP 2021-22 - North Zone </td>
                        <td>PDF</td>
                        <td><a href="img/downloads/DISTRICT-WISE-ADP-2021-22-North-Zone.pdf">&nbsp;Download</a></td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td>&nbsp;DISTRICT WISE ADP 2021-22 - South Zone </td>
                        <td>PDF</td>
                        <td><a href="img/downloads/DISTRICT-WISE-ADP-2021-22-South-Zone.pdf">&nbsp;Download</a></td>

                    </tr>

                </tbody>
            </table>
        </div>
    </div><!-- /.auto-container -->
</section>



@endsection