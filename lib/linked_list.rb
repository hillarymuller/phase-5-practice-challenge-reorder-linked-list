require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  # reorders the nodes in an instance of LinkedList so that all nodes with odd positions come first, followed by nodes with even positions
 # example 1->2->3->4->5 => 1->3->5->2->4
  def reorder_linked_list
   # if list is empty, no need to continue
    return if head.nil?
   #set odd to first odd node and even to first even node
    odd = head
    even = head.next_node
   #keep a reference to the first even node
    even_head = even
   #change odd's next_node property to point to the next odd node
while even && even.next_node
  odd.next_node = even.next_node
   #reset the odd variable to that node
  odd = odd.next_node
   #change even's next_node property to point to the node after the new odd node - the next even node
even.next_node = odd.next_node
   #reset the even variable to that node
even = even.next_node
end
odd.next_node = even_head
end
   #change the next_node property of the last odd node to point to the first even node
end
