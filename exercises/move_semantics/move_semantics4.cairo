// move_semantics4.cairo
// Refactor this code so that instead of passing `arr0` into the `fill_arr` function,
// the Array gets created in the function itself and passed back to the main
// function.
// Execute `starklings hint move_semantics4` or use the `hint` watch subcommand for a hint.

// I AM NOT DONE
use array::ArrayTrait;
use array::ArrayTCloneImpl;
use array::SpanTrait;
use clone::Clone;
use debug::PrintTrait;

fn main() {
    let mut arr1 = fill_arr();//answer here removed aurgument

    arr1.span().snapshot.clone().print();

    arr1.append(88);

    arr1.clone().print();
}

// `fill_arr()` should no longer takes `arr: Array<felt252>` as argument
fn fill_arr() -> Array<felt252> {//aswer is here removed aurgument
    let  mut arr = ArrayTrait::<felt252>::new();//answer here made is mut 
    // let mut arr = arr; //answer commented thi out

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
