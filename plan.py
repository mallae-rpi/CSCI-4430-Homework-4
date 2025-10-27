class ParseError(SyntaxError):
    pass

class Parser:
    def __init__(self, program: list) -> None:
        self.program: list = program
        self.pos = 0
        
    def input_token(self) -> str | int | list | None:
        if self.pos < len(self.program):
            return self.program[self.pos]
        return None
    
    def consume_input_token(self) -> None:
        self.pos += 1
        
    def match(self, expected: str | int | list) -> str | int | list:
        input_token: str | int | list | None = self.input_token()
        if input_token == expected:
            self.consume_input_token()
            return input_token
        else:
            raise ParseError