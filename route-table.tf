resource "aws_route_table" "rt_custom_internet" {
    vpc_id = aws_vpc.custom_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ig_custom.id
    }

    tags = {
        "Name" : "rt_custom_internet"
    }
}