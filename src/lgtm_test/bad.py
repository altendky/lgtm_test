import uuid


def create_a_not_really_a_secret():
    return uuid.uuid4()  # lgtm [py/not-sensitive-data]


def again():
    return uuid.uuid4()  # lgtm [py/not-sensitive-data]


def left_bad():
    return uuid.uuid4()


def main():
    print(create_a_not_really_a_secret())
    print(again())
    print(left_bad())


main()
