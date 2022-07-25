use env_logger::Env;
use sqlx::PgPool;
use zero2prod::{configuration::get_configration, startup::run};

#[tokio::main]
async fn main() -> std::io::Result<()> {
    env_logger::Builder::from_env(Env::default().default_filter_or("info")).init();

    let configuration = get_configration().expect("Failed to load configuration");

    let connection_pool = PgPool::connect(&configuration.database.connection_string())
        .await
        .expect("Failed to connect to database");

    let address = format!("127.0.0.1:{}", configuration.application_port);
    println!("Starting server on {}", address);
    let listener = std::net::TcpListener::bind(address)?;

    run(listener, connection_pool)?.await
}
