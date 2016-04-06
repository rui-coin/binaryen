(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $FUNCSIG$i (func (result i32)))
  (type $FUNCSIG$j (func (result i64)))
  (type $FUNCSIG$f (func (result f32)))
  (type $FUNCSIG$d (func (result f64)))
  (type $FUNCSIG$v (func))
  (type $FUNCSIG$ii (func (param i32) (result i32)))
  (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
  (import $i32_nullary "env" "i32_nullary" (result i32))
  (import $i64_nullary "env" "i64_nullary" (result i64))
  (import $float_nullary "env" "float_nullary" (result f32))
  (import $double_nullary "env" "double_nullary" (result f64))
  (import $void_nullary "env" "void_nullary")
  (import $i32_unary "env" "i32_unary" (param i32) (result i32))
  (import $i32_binary "env" "i32_binary" (param i32 i32) (result i32))
  (export "call_i32_nullary" $call_i32_nullary)
  (export "call_i64_nullary" $call_i64_nullary)
  (export "call_float_nullary" $call_float_nullary)
  (export "call_double_nullary" $call_double_nullary)
  (export "call_void_nullary" $call_void_nullary)
  (export "call_i32_unary" $call_i32_unary)
  (export "call_i32_binary" $call_i32_binary)
  (export "call_indirect_void" $call_indirect_void)
  (export "call_indirect_i32" $call_indirect_i32)
  (export "tail_call_void_nullary" $tail_call_void_nullary)
  (export "fastcc_tail_call_void_nullary" $fastcc_tail_call_void_nullary)
  (export "coldcc_tail_call_void_nullary" $coldcc_tail_call_void_nullary)
  (func $call_i32_nullary (result i32)
    (return
      (call_import $i32_nullary)
    )
  )
  (func $call_i64_nullary (result i64)
    (return
      (call_import $i64_nullary)
    )
  )
  (func $call_float_nullary (result f32)
    (return
      (call_import $float_nullary)
    )
  )
  (func $call_double_nullary (result f64)
    (return
      (call_import $double_nullary)
    )
  )
  (func $call_void_nullary
    (call_import $void_nullary)
    (return)
  )
  (func $call_i32_unary (param $$0 i32) (result i32)
    (return
      (call_import $i32_unary
        (get_local $$0)
      )
    )
  )
  (func $call_i32_binary (param $$0 i32) (param $$1 i32) (result i32)
    (return
      (call_import $i32_binary
        (get_local $$0)
        (get_local $$1)
      )
    )
  )
  (func $call_indirect_void (param $$0 i32)
    (call_indirect $FUNCSIG$v
      (get_local $$0)
    )
    (return)
  )
  (func $call_indirect_i32 (param $$0 i32) (result i32)
    (return
      (call_indirect $FUNCSIG$i
        (get_local $$0)
      )
    )
  )
  (func $tail_call_void_nullary
    (call_import $void_nullary)
    (return)
  )
  (func $fastcc_tail_call_void_nullary
    (call_import $void_nullary)
    (return)
  )
  (func $coldcc_tail_call_void_nullary
    (call_import $void_nullary)
    (return)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
