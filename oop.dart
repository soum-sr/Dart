void main(){
  var s = Stack();
  s.push('A');
  s.push('B');
  s.push('C');
  s.getStack();
  s.pop();
  s.getStack();

}

class Stack{
  // Property
  var items = [];

  // Methods
  push(item){
    items.add(item);
  }
  pop(){
    items.removeAt(items.length - 1);
    print("ITEM REMOVED: ${items[items.length-1]}");
  
  }
  getStack(){
    print(this.items);
  }

}