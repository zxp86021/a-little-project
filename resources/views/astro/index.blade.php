@extends('layouts.app')
@inject(astroPresenter, App\Presenters\AstroPresenter)

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        @lang('astro.astro')
                        <select id="astro-date">
                            @foreach($dateList as $date)
                                <option value="{{ $date }}" @if($searchDate === $date) selected @endif>{{ $date }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="panel-body">
                        <div class="form-horizontal">
                            @if (count($data) > 0)
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    @foreach($data as $astro)
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="astroHeading{{ $astro->id }}">
                                                <h3 class="panel-title text-center">
                                                    <a role="button" class="accordion-toggle collapsed btn-block" data-toggle="collapse" data-parent="#accordion" href="#astroCollapse{{ $astro->id }}" aria-expanded="false" aria-controls="astroCollapse{{ $astro->id }}">
                                                        {{ $astro->name }}
                                                    </a>
                                                </h3>
                                            </div>
                                            <div id="astroCollapse{{ $astro->id }}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="astroHeading{{ $astro->id }}">
                                                <div class="panel-body">
                                                    @foreach(trans('astro.luck') as $index => $luckTitle)
                                                        @foreach(trans('astro.type') as $type => $typeTitle)
                                                            <div class="form-group">
                                                                <label class="col-sm-3 control-label">{{ $luckTitle }}&nbsp;{{ $typeTitle }}</label>
                                                                <div class="col-sm-9">
                                                                    <p class="form-control-static">
                                                                        @if($type === 'score')
                                                                            {!! $astroPresenter->getScoreImage( $astro->{$index . '_luck_' . $type} ) !!}
                                                                        @else
                                                                            {{ $astro->{$index . '_luck_' . $type} }}
                                                                        @endif
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        @endforeach
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @else
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <h3 class="form-control-static text-center">
                                            無資料
                                        </h3>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script>
        const $_astroDateSelect = $('#astro-date');

        $_astroDateSelect.on('change', function () {
            document.location.href = location.protocol + '//' + location.hostname + '/astro?date=' + $(this).val();
        });
    </script>
@endsection