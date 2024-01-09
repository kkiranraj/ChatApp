class ChatModel{
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(this.name,this.msg,this.time,this.pic);

}

List<ChatModel> chatsData = [
  ChatModel('jeo', 'Hi ', '8.00 AM','https://imgs.search.brave.com/_QS-C_ZdFRoEEb83lITyO3dY1Y6syO6ywUb65b2ZRcQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/dzNzY2hvb2xzLmNv/bS9ob3d0by9pbWdf/YXZhdGFyLnBuZw'),
  ChatModel('raj', 'how are you', '9.00 AM','https://imgs.search.brave.com/_QS-C_ZdFRoEEb83lITyO3dY1Y6syO6ywUb65b2ZRcQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/dzNzY2hvb2xzLmNv/bS9ob3d0by9pbWdf/YXZhdGFyLnBuZw'),
  ChatModel('john', 'dude', '11.00 AM','https://imgs.search.brave.com/_QS-C_ZdFRoEEb83lITyO3dY1Y6syO6ywUb65b2ZRcQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/dzNzY2hvb2xzLmNv/bS9ob3d0by9pbWdf/YXZhdGFyLnBuZw'),
];