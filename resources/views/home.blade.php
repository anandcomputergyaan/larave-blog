@extends('layouts.app')

@section('content')

<style type="text/css">
  #cdate{
    width:20%;
  }

</style>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.js"></script>

 <!-- The Modal -->
  <div class="modal fade" id="newpostid">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">New post</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
              {!! Form::open(['url' =>'postsave', 'method' => 'get','id'=>'idnewpost']);!!}
            <div class="row form-group">

               <div class=" col-12">
                 
                 {!! Form::text('title','', array('class'=>'form-control inputfiled','required'=>'true','placeholder'=>'Tilte',)) !!}
           </div>
                 <div class=" col-12">    
                          {!! Form::select('category[]', $cat_list,'null', array('class'=>'form-control inputfiled','autocomplete'=>'off','placeholder'=>'Select Category ', 'id'=>'category','required'=>'true', "multiple"=>true))!!}
               </div><div class=" col-12">
                 {!! Form::textarea('description','', array('class'=>'form-control inputfiled','required'=>'true','placeholder'=>'Test here',)) !!}
                      </div>
                 <div class=" col-12">
                      <input type="submit" name="submit"  class="btn btn-primary" style="float: right;" >
</div>

              </div>
             
        
                  {!! Form::close(); !!}
        </div>
           
      </div>
    </div>
  </div>


<div class="container-flude">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header"> {!! Form::date('cdate',date('yy-m-d'),array( 'autocomplete'=>'off','id'=>'cdate', 'placeholder'=>'Start Date')); !!}
                 <button  class=" btn btn-info"data-toggle="modal" data-target="#newpostid"  style="float: right;">New post </button></div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Title</th>

                      <th scope="col">Text</th>
                      <th scope="col">Created At</th>

                    </tr>
                  </thead>
                  <tbody>
                    @foreach($blogs as $key=>$blog)
                    <tr>
                      <th scope="row">{{$key}}</th>
                      <td>{{$blog['title']}}</td>
                      <td>{{$blog['description']}}</td>
                      <td>{{$blog['created_at']}}</td>
                   
                    </tr>
               @endforeach
                  </tbody>
                </table>


                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.6/css/selectize.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.6/js/standalone/selectize.min.js"></script> -->


    <script type="text/javascript">

  $(document).ready(function(){


 $('#cdate').change(function(){
  var c_date=$(this).val();
    $.get("{{url('blog-list')}}",{cdate:c_date}, function(data, status){
        
      $('table tbody').html();
      var ttd='';
       $.each(data, function(index, value) {
             ttd+='<tr><td>'+index +'</td><td>'+value.title+'</td><td>'+value.description+'</td><td>'+value.created_at+' </td></tr>';
        });
         $('table tbody').html(ttd);
    });
 });


   var frm = $('#idnewpost');

   frm.submit(function (e) {

       e.preventDefault();

       $.ajax({
           type: frm.attr('method'),
           url: frm.attr('action'),
           data: frm.serialize(),
           complete: function(){
             $('#newpostid').modal('hide');
            alert("Save ");
           },
           success: function (data) {

               $('table tbody').html();
               var ttd='';
                $.each(data, function(index, value) {
                      ttd+='<tr><td>'+index +'</td><td>'+value.title+'</td><td>'+value.description+'</td><td>'+value.created_at+' </td></tr>';
                 });
                  $('table tbody').html(ttd);

           },
           error: function (data) {
               console.log('An error occurred.');
               console.log(data);
           },
       });
   });


 });
</script>

@endsection
