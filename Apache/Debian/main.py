import docker
username = 'io'
client = docker.from_env()

service = client.services.create(
    image = 'siriushosting/apache_debian',
    hostname = username,
    name = 'apache_debian_' + username,
    endpoint_spec=docker.types.EndpointSpec(ports={80: 80})
)

service.scale(2)
