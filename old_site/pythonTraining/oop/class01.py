class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age
    self.bankBalance = 0
    
  def tellaboutYourself(self):
    print("Hello my name is " + self.name)
    
  def takeMoney(self,x):
      self.bankBalance = self.bankBalance + x


# add more members
class Agent(Person):
    def __init__(self, name, age, department):
        super().__init__(name, age)
        self.dept = department     
    
x07 = Agent('ajit',38,'hacking')