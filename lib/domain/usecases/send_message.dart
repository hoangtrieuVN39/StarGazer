class SendMessage {
  Future<Response> execute(String message) async {
    // Placeholder for sending a message logic
    // This should interact with your backend or service to send the message
    return Response(text: "Message sent: $message");
  }
}

class Response {
  final String text;

  Response({required this.text});
}
