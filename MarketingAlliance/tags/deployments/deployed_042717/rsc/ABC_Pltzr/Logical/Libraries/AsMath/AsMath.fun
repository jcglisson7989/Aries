(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Library: AsMath
 * File: AsMath.fun
 * Author: B+R
 ********************************************************************
 * Functions and function blocks of library AsMath
 ********************************************************************)
                                                                      
{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION atan2 : REAL                  (*calculates the arc tangent of y/x*)
	VAR_INPUT
		y	:REAL;                     (*y*)
		x	:REAL;                     (*x*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION ceil : REAL                   (*calculates the smallest integer value which is greater than or equal to the input value*)
	VAR_INPUT
		x	:REAL;                     (*input value*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION cosh : REAL                   (*calculates the hyperbolic cosine of x*)
	VAR_INPUT
		x	:REAL;                     (*input value*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION floor : REAL                  (*calculates the largest integer value which is less than or equal to the input value*)
	VAR_INPUT
		x	:REAL;                     (*input value*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION fmod : REAL                   (*calculates the remainder of the division x/y*)
	VAR_INPUT
		x	:REAL;                     (*numerator*)
		y	:REAL;                     (*denominator*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION frexp : REAL                  (*calculates the mantissa and the exponent of a floating point number*)
	VAR_INPUT
		x	:REAL;                     (*input value*)
		pExp	:UDINT;                (*address of the exponent (address of DINT) (base 2)*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION ldexp : REAL                  (*calculates a floating point number from mantissa x and exponent exp*)
	VAR_INPUT
		x	:REAL;                     (*mantissa*)
		exp_val	:DINT;                 (*exponent (base 2)*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION modf : REAL                   (*separates a floating point number into an integer and decimal part*)
	VAR_INPUT
		x	:REAL;                     (*input value*)
		plp	:UDINT;                    (*address of the integer part (address of a REAL value)*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION pow : REAL                    (*calculates x raised to the power of y*)
	VAR_INPUT
		x	:REAL;                     (*base*)
		y	:REAL;                     (*exponent*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION sinh : REAL                   (*calculates the hyperbolic sine of x*)
	VAR_INPUT
		x	:REAL;                     (*input value*)
	END_VAR
END_FUNCTION

{REDUND_OK} {REDUND_UNREPLICABLE} FUNCTION tanh : REAL                   (*calculates the hyperbolic tangent of x*)
	VAR_INPUT
		x	:REAL;                     (*input value*)
	END_VAR
END_FUNCTION
