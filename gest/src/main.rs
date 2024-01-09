fn main() -> Result<(), Box<dyn std::error::Error>> {
    let args: CliArgs = clap::Parser::parse();

    let input = std::fs::read_to_string(args.input_file.clone())?;
    let output = if args.output.is_some() {
        std::fs::File::open(args.output.unwrap())
    } else {
        let mut input_file = args.input_file.clone();
        input_file.push_str(".out");
        std::fs::File::open(input_file)
    };



    println!("Hello, world!");
    Ok(())
}


/// Simple transpiler for the GeST language
#[derive(clap_derive::Parser)]
#[command(author, about, version, long_about = None)]
struct CliArgs {
    /// File to parse
    input_file: String,

    /// Output binary file name
    #[arg(short, long)]
    output: Option<String>,
}