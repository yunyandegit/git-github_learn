use std::convert::Infallible;
use std::net::SocketAddr;

use hyper::{Body, Method, Request, Response, Server, StatusCode};
use hyper::service::{make_service_fn, service_fn};

async fn hello_world(request: Request<Body>)->Result<Response<Body>, Infallible>{
    let mut response = Response::new(Body::empty());
    match (request.method(), request.uri().path()){
        (&Method::POST, "/api/users")=>{
            *response.body_mut() = Body::from("User created");
        }
        _ => {
            *response.body_mut() = Body::from("Not found");
            *response.status_mut() = StatusCode::from_u16(404).unwrap();
        }
    };

    Ok(response)
}

#[tokio::main]
async fn main() {
    let address = SocketAddr::from(([127, 0, 0, 1], 3000));

    let make_serv = make_service_fn(|_conn| async {
        Ok::<_, Infallible>(service_fn(hello_world))
    });

    let server = Server::bind(&address).serve(make_serv);

    if let Err(e) = server.await{
        eprintln!("Server Error: {}", e)
    };
}
