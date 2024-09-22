# example.py


def example_function(param1, param2, param3):
    # E4: Ambiguous variable name
    a = 5  # This would be flagged as ambiguous by rule E4
    return a + param1 + param2 + param3


def unused_variable_example():
    # F: Unused variable (no reference after assignment)
    unused_var = 42  # This will trigger an unused variable warning
    return 10


# E7: Comparison to boolean
def check_condition(value):
    if value == True:  # This would be flagged by rule E7
        print("Value is true")
    else:
        print("Value is false")
