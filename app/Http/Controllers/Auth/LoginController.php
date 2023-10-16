<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Role;
use App\User;
use Session;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    protected function authenticated(Request $request, $user)
    {
        $user = User::find($user->id);
  
        $permited_menu = sideMenu($user->role_id);     

        if (count($permited_menu) > 0) {
            Session::push('side_menu', $permited_menu);
            // $user->setSession($roles->toArray());
            
            // dd($user->perfil()->persona);
            // if ($user->perfil()->persona) {
            //     session([
            //         'datos_personales' => [$user->perfil()->persona->nombres],
            //         'nombre_usuario' => $user->perfil()->persona->nombres,
            //         'imagen_usuario' => $user->perfil()->persona->foto
            //     ]);
            //     $nombre_saludo = $user->perfil()->persona->nombres;
            // }else{
            //     $nombre_saludo = 'Usuario';
            // }
            return redirect('/')
                ->with('mensaje_toast', ['tipo' => 'success', 'text' => 'Bienvenido, ' . $user->name]);
            // Redireccionar inicio según Rol de Usuario

            // if (isRol('super_admin') || isRol('administrador')) {
            //     return redirect('admin/user')
            //     ->with('mensaje_toast', ['tipo' => 'success', 'text' => 'Bienvenido, ' . $nombre_saludo]);
            // }elseif (isRol('supervisor')) {
            //     return redirect()->route('lista_derivaciones')
            //     ->with('mensaje_toast', ['tipo' => 'success', 'text' => 'Bienvenido, ' . $nombre_saludo]);
            // }elseif (isRol('revisor')) {
            //     return redirect()->route('lista_solicitudes')
            //     ->with('mensaje_toast', ['tipo' => 'success', 'text' => 'Bienvenido, ' . $nombre_saludo]);
            // }elseif (isRol('editor')) {
            //     return redirect()->route('lista_impresion')
            //     ->with('mensaje_toast', ['tipo' => 'success', 'text' => 'Bienvenido, ' . $nombre_saludo]);
            // }elseif (isRol('usuario')) {
            //     return redirect()->route('buzon')
            //     ->with('mensaje_toast', ['tipo' => 'success', 'text' => 'Bienvenido, ' . $nombre_saludo]);
            // }else {
            //     return redirect()->route('buzon')
            //     ->with('mensaje_toast', ['tipo' => 'success', 'text' => 'Bienvenido, ' . $nombre_saludo]);
            // }
            
        } else {
            $this->guard()->logout();
            $request->session()->invalidate();
            return redirect('/')->withErrors(['error' => 'Este usuario no tiene un rol activo']);
        }
    }
}
