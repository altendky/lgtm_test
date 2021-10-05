import uuid


def create_a_not_really_a_secret():
    return uuid.uuid4()


def main():
    print(create_a_not_really_a_secret())


main()
