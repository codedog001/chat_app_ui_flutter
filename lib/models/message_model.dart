import '../models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// Chat on home screen (This should hold last msg)
List<Message> chats = [
  Message(
    sender: teacher,
    time: '5:30 PM',
    text: 'Hello There!',
    unread: true,
  ),
  Message(
    sender: student2,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
];

// (Messages as in chat screen)
List<Message> messages = [
  Message(
    sender: teacher,
    time: '5:30 PM',
    text: 'If you\'ve any doubt, drop me a msg.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Ok mam',
    unread: true,
  ),
  Message(
    sender: teacher,
    time: '3:45 PM',
    text: 'Submit it by tomorrow.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Ok mam',
    unread: true,
  ),
  Message(
    sender: teacher,
    time: '2:00 PM',
    text: 'This is your assignment.',
    unread: true,
  ),
];
