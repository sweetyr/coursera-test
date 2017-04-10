@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Register</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name_str') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input id="name_str" type="text" class="form-control" name="name_str" value="{{ old('name_str') }}" required autofocus>

                                @if ($errors->has('name_str'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name_str') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('address_str') ? ' has-error' : '' }}">
                            <label for="Address" class="col-md-4 control-label">Address</label>

                            <div class="col-md-6">
                                <input id="address_str" type="text" class="form-control" name="address_str" value="{{ old('address_str') }}" required autofocus>

                                @if ($errors->has('address_str'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('address_str') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div> 

                        <div class="form-group{{ $errors->has('mobile_str') ? ' has-error' : '' }}">
                            <label for="Mobile" class="col-md-4 control-label">Mobile</label>

                            <div class="col-md-6">
                                <input id="mobile_str" type="tel" class="form-control" name="mobile_str" value="{{ old('mobile_str') }}" required autofocus>

                                @if ($errors->has('mobile_str'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('mobile_str') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('is_admin') ? ' has-error' : '' }}">
                            <label for="Admin" class="col-md-4 control-label">Admin</label>

                            <div class="col-md-6">
                                <input id="is_admin" type="checkbox" class="form-control" name="is_admin" 
                                 value="1">True
                                <input id="is_admin" type="checkbox" class="form-control" name="is_admin" 
                                 value="0"> False <br>  

                                @if ($errors->has('is_admin'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('is_admin') }}</strong>
                                    </span>
                                @endif                                                              

                            </div>
                        </div> 
                                                

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
