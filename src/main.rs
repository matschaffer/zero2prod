use zero2prod::run;

#[tokio::main]
async fn main() -> std::io::Result<()> {
    let addr = "127.0.0.1:8080";
    let listener = std::net::TcpListener::bind(addr);
    run(listener?)?.await
}
