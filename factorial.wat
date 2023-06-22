(module
    (func $factorial (param $n i32) (result i32)
        local.get $n
        i32.eqz
        if (result i32)
            i32.const 1
        else
            local.get $n
            local.get $n
            i32.const 1
            i32.sub
            call $factorial
            i32.mul
        end
    )
    (export "factorial" (func $factorial))
)
