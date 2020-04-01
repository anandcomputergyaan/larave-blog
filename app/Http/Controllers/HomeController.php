<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BlogModel;
use DB;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
       $cat_list=DB::table('categories')
       ->where('name','!=',null)
       ->pluck('name','id')
       ->toArray();
 
       $userId=Auth::user()->id;
       $blogs=BlogModel::where('user_id','=',$userId)->get();
       
        return view('home',compact('cat_list','blogs'));
    }

    public function storepost(Request $request){
       $userId=Auth::user()->id;
       $category=implode('-' , $request->category);

        $post = new BlogModel;
        $post->title=$request->title;
        $post->category=$category;
        $post->description=$request->description;
        $post->description=$request->description;
        $post->user_id=$userId;

        if($post->save()){
            $blogs=BlogModel::where('user_id','=',$userId)->get();
         return $blogs;  
        }
    }

    public function bloglist(Request $request){
          $userId=Auth::user()->id;
          $cdate=$request->cdate;
         $blogs=BlogModel::where('user_id','=',$userId)->whereDate('created_at',$cdate)->get();
       return $blogs;

    }







}
