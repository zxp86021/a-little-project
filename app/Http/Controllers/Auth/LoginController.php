<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Socialite;

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
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * Handle a login request to the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\Response|\Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $this->validateLogin($request);

        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }

        if ($this->attemptLogin($request)) {
            return $this->sendLoginResponse($request);
        } else {
            $username = $this->username();
            $existingUser = User::where($username, $request->{$username})->first();

            if (!$existingUser) {
                $this->validate($request, [
                    'email' => 'required|string|email|max:255|unique:users',
                    'password' => 'required|string|min:6',
                ]);

                $user = User::create([
                    'name' => 'user' . rand(),
                    'email' => $request->{$username},
                    'password' => bcrypt($request->password),
                ]);

                $this->guard()->login($user);

                return redirect($this->redirectPath());
            }
        }

        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    /**
     * Redirect the user to the Google authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    /**
     * Obtain the user information from Google.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleGoogleCallback()
    {
        try {
            $user = Socialite::driver('google')->user();

            /*
            // only allow people with @company.com to login
            if(explode("@", $user->email)[1] !== 'company.com'){
                return redirect()->to('/');
            }
            */

            // check if they're an existing user
            $existingUser = User::where('email', $user->email)
                ->where('google_id', $user->id)
                ->first();

            if($existingUser){
                // log them in
                auth()->login($existingUser, true);
            } else {
                // create a new user
                $newUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'google_id' => $user->id,
                    'avatar' => $user->avatar,
                    'avatar_original' => $user->avatar_original
                ]);

                // log them in
                auth()->login($newUser, true);
            }

            return redirect()->to($this->redirectPath());
        } catch (\Exception $e) {
            return redirect('/login');
        }
    }
}
