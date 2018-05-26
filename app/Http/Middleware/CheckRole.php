<?php
namespace App\Http\Middleware;
use Closure;
use Auth;
class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
            // If the user is not logged in, respond with a 403 error.
        if ( ! Auth::user()) // Your logic here...
            abort(403, 'Unauthorized action.');
            //return redirect ('login')->with('status','Unauthorized!');
        if ($request->user() === null) {
            Auth::logout();
        //return redirect()->route('login');
            return response("Insufficient permissions", 401);  
            //redirect ('login')->with('status','Unauthorized!');          
        }
        $actions = $request->route()->getAction();
        $roles = isset($actions['roles']) ? $actions['roles'] : null;
        
        if ($request->user()->hasAnyRole($roles) || !$roles) {
            return $next($request);
        }       
            //return response()->view('auth.login');
            Auth::logout();     
        return response("Insufficient permissions, please login", 401);

        //return redirect ('home')->with('status','Unauthorized!');
           
    }
}