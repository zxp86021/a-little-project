@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <p></p>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <p class="form-control-static text-center">
                                    @if (!empty($user->avatar))
                                        <img class="head-pic" src="{{ $user->avatar }}">
                                    @else
                                        <img class="head-pic" src="{{ asset('img/avatar.png') }}">
                                    @endif
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-6 control-label">Name</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">
                                    {{ $user->name }}
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-6 control-label">Email</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">
                                    {{ $user->email }}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
