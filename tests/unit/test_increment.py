from app.increment import increment


def test_increment():
    assert increment(5) == 6
