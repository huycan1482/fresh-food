<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Order;
use App\OrderStatus;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::findOrFail(Auth::user()->id);
        if ($user->can('viewAny', Contact::class)) {
            $contacts = Contact::latest()->paginate(10);
            $users = User::all();
            return view ('admin.contact.index', [
                'contacts' => $contacts,
                'users' => $users,
            ]);
        } else {
            return view ('errors.404'); 
        }

        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::findOrFail(Auth::user()->id);
        if ($user->can('update', Contact::class)) {
            $contact = Contact::findOrFail($id);
            $order_status = OrderStatus::all();
            return view ('admin.contact.edit', [
                'contact' => $contact,
                'order_status' => $order_status,
            ]);
        } else {
            return view ('errors.404'); 
        }
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::findOrFail(Auth::user()->id);
        if ($user->can('update', Contact::class)) {
            $contact = Contact::findOrFail($id);

            $request->validate([
                'status' => 'required|exists:order_status,id',
            ]);

            $contact->status = $request->input('status');
            $contact->user_id = Auth::user()->id;

            $contact->save();

            return redirect()->route('admin.contact.index');
        } else {
            return view ('errors.auth'); 
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
