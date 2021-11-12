import myModule

myModule.helloModule()

print(myModule.x)

print(myModule.agents)


# ## renaming a module for convenience
import myModule as mm

mm.helloModule()

print(mm.x)

print(mm.agents)


# partial import of a module
from myModule import helloModule as hm
hm()

