@extends('layouts.admin')

@section('content')
<div class="container-fluid">

    <!-- Page Heading -->
    @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

<!-- Content Row -->
        <div class="card shadow">
            <div class="card-header">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">{{ __('edit result')}}</h1>
                    <a href="{{ route('admin.questions.index') }}" class="btn btn-sm shadow-sm" style="background: #cea008; color: white;">{{ __('Kembali') }}</a>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.results.update', $result->id) }}" method="POST">
                    @csrf
                    @method('put')
                    <div class="form-group">
                        <label for="question">{{ __('question') }}</label>
                        <select class="form-control" name="questions[]" multiple id="question">
                            @foreach($questions as $id => $question)
                                <option {{ (in_array($id, old('questions', [])) || isset($result) && $result->questions->contains($id)) ? 'selected' : '' }} value="{{ $id }}">{{ $question }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="total_points">{{ __('total_points') }}</label>
                        <input type="number" class="form-control" id="total_points" placeholder="{{ __('total_points') }}" name="total_points" value="{{ old('total_points', $result->total_points) }}" />
                    </div>
                    <button type="submit" class="btn btn-block"style="background: #cea008; color: white;">{{ __('Simpan Perubahan')}}</button>
                </form>
            </div>
        </div>
    

    <!-- Content Row -->

</div>
@endsection