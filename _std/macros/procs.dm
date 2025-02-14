
#define GLOBAL_PROC "THIS_IS_A_GLOBAL_PROC_CALLBACK" //used instead of null because clients can be callback targets and then go null from disconnect before invoked, and we need to be able to differentiate when that happens or when it's just a global proc.

#define CALLBACK new /datum/callback
#define INVOKE_ASYNC ImmediateInvokeAsync

//supposedly for direct arg instertion. whatever that means??
#define CONCALL(OBJ, TYPE, CALL, VARNAME) var##TYPE/##VARNAME=OBJ;if(istype(##VARNAME)) ##VARNAME.##CALL

/// returns early if x is an overlay or effect
#define return_if_overlay_or_effect(x) if (istype(x, /obj/overlay) || istype(x, /obj/effects)) return

/// completely worthless proc, used for filling out blank switch statements or something. does nothing
/proc/pass_proc(x)
	return
