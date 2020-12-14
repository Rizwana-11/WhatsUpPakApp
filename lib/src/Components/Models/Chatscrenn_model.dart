class ChatScreenModel {
  final String imageUrl;
  final String title;
  final String msg;
  final int nMsgs;
  final bool seen;

  ChatScreenModel({this.imageUrl, this.title, this.msg, this.nMsgs, this.seen});
}

final List<ChatScreenModel> currentMsg = [
  ChatScreenModel(
    imageUrl:
        'https://s3.amazonaws.com/pixpa.com/com/articles/1567147079-440035-headshot-2jpg.png',
    msg: 'hy hello whats up bro',
    nMsgs: 2,
    title: 'Hamza Mehmood',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ31aKUp7IRXVN9KpX4gSRoPiWetgJolO6RVOyB8yjciO-zdIAKou4sFCzHaxHQFYVit6qUqqiDhMXwVlV9duwrJjZZQQSUVuYHXg&usqp=CAU&ec=45699844',
    msg: 'hy hello whats up bro',
    nMsgs: 3,
    title: 'Naveed Ullah',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQb7_scNzO45Qe0lnFYgeQxQQzgM_7YfdrzjogwCvpJ2HyZNNyQvPtsDVMdC9qCTCb_cO53yEwZgEcXZO0eipIsoxC_ao_C_8qlSw&usqp=CAU&ec=45699844',
    msg: 'hi how are you guy',
    nMsgs: 9,
    title: 'Asad khan',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://bostudio121.com/blog/wp-content/uploads/2018/03/waverly-cedarfalls-waterloo-Iowa-business-headshots-bostudio121-000014_03-e1521497792653.jpg',
    msg: 'flutter is UI framework',
    nMsgs: 10,
    title: 'Haroon',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ31aKUp7IRXVN9KpX4gSRoPiWetgJolO6RVOyB8yjciO-zdIAKou4sFCzHaxHQFYVit6qUqqiDhMXwVlV9duwrJjZZQQSUVuYHXg&usqp=CAU&ec=45699844',
    msg: 'hy hello whats up bro',
    nMsgs: 2,
    title: 'Hamza Mehmood',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://s3.amazonaws.com/pixpa.com/com/articles/1567147079-440035-headshot-2jpg.png',
    msg: 'hy hello whats up bro',
    nMsgs: 3,
    title: 'Naveed Ullah',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://bostudio121.com/blog/wp-content/uploads/2018/03/waverly-cedarfalls-waterloo-Iowa-business-headshots-bostudio121-000014_03-e1521497792653.jpg',
    msg: 'hi how are you guy',
    nMsgs: 9,
    title: 'Asad khan',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ31aKUp7IRXVN9KpX4gSRoPiWetgJolO6RVOyB8yjciO-zdIAKou4sFCzHaxHQFYVit6qUqqiDhMXwVlV9duwrJjZZQQSUVuYHXg&usqp=CAU&ec=45699844',
    msg: 'flutter is UI framework',
    nMsgs: 10,
    title: 'Haroon',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ31aKUp7IRXVN9KpX4gSRoPiWetgJolO6RVOyB8yjciO-zdIAKou4sFCzHaxHQFYVit6qUqqiDhMXwVlV9duwrJjZZQQSUVuYHXg&usqp=CAU&ec=45699844',
    msg: 'hi how are you guy',
    nMsgs: 9,
    title: 'Asad khan',
    seen: true,
  ),
  ChatScreenModel(
    imageUrl:
        'https://bostudio121.com/blog/wp-content/uploads/2018/03/waverly-cedarfalls-waterloo-Iowa-business-headshots-bostudio121-000014_03-e1521497792653.jpg',
    msg: 'flutter is UI framework',
    nMsgs: 10,
    title: 'Haroon',
    seen: true,
  )
];
