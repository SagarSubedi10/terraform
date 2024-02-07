resource "aws_internet_gateway" "ig_custom" {
    vpc_id = aws_vpc.custom_vpc.id

    tags = {
        "Name" = "ig_custom"
    }

}