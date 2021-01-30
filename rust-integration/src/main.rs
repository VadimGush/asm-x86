extern crate libc;

#[link(name = "multiply", kind = "static")]
extern {
    fn multiply(a: i32, b: i32) -> i32;
}

fn main() {
    let a = 5;
    let b = 7;
    
    let result;
    unsafe {
        result = multiply(a, b);
    }
    println!("{} * {} = {}", a, b, result);
}

/*
fn main() {
    println!("Hello world");
}
*/
