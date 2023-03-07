@section('script-delete')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
<script>
    //Delete SLider
    $(document).ready(function(){
        $(document).on('click', '.delete-slider', function(e){
            e.preventDefault();
            let slider_id = $(this).data('id')
            let slider_title = $(this).data('title')
            if(confirm('Are you sure to delete slider ' + slider_title + ' ?')) {
                $.ajax({
                    url: "{{ route('delete.slider') }}",
                    method: 'post',
                    data: {slider_id: slider_id},
                    success: function(response){
                        if(response.status == 'success'){
                            $('.table').load(location.href+' .table')
                            $('.msg').append('<h3 class="alert alert-success"> Delete Slider Successfully </h3>')
                        }
                        if(response.status == 'something_wrong') {
                        $('.msg').append('<h3 class="alert alert-danger"> Delete Slider Fail, something went wrong! </h3>')
                    }
                    }
                })
            }
        })
    })
</script>
@endsection
