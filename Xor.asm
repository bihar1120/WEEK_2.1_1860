
function Sys.max 0

    push argument 0 //get the value x 
    push argument 1 //get the value y 
    gt // compare which is greater than who 

    if-goto MAX_A
    push argument 1
    return

label MAX_A 
    push argument 0
    return

function Sys.min 0 // 2 values can be taken
    push argument 0 //get the value x
    push argument 1 //get the value y
    lt //cmpare which is less than 
    if-goto MIN_A //if x<y jump to min_A and print arg0
    push argument 1 //if the x>y push argument 1 
    return
label MIN_A
    push argument 0
    return

function Sys.range 
    push argument 0
    push argument 1
    lt
    if-goto RETURN_ZERO //
    push argument 0
    push argument 1 //no. of elements in an array
    call Sys.min 2 //pop the result minimum value
    pop local 0

    push argument 0
    push argument 1
    call Sys.max 2
    pop local 1 

    push local 1
    push local 0
    sub 
    return

  
label RETURN_ZERO
    push constant 0
    return
