
Stack1 = []
Stack2 = []

def Enqueue(element):
  Stack1.append(element)

def Dequeue():
  if len(Stack2) == 0:
    if len(Stack1) == 0:
        return 'Cannot dequeue because queue is empty'
      while len(Stack1) > 0:
        p = Stack1.pop()
        Stack2.append(p)
  return Stack2.pop()
