// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;



fn main() {
    let arr0 = ArrayTrait::new();
//change is here
    let mut arr1 = fill_arr(arr0.span().snapshot.clone());

    // Do not change the following line!
    arr0.print();
    
      arr1.append(88);

    arr1.span().snapshot.clone().print();//answer is here
}

fn fill_arr(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
