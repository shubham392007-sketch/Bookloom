import 'package:flutter/material.dart';
import '../../core/theme.dart';

class Message {
  final String text;
  final bool isAI;
  Message({required this.text, required this.isAI});
}

class AIAssistantScreen extends StatefulWidget {
  const AIAssistantScreen({super.key});
  @override
  State<AIAssistantScreen> createState() => _AIAssistantScreenState();
}

class _AIAssistantScreenState extends State<AIAssistantScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [
    Message(text: 'Hello! I am your BookLoom AI Curator. How can I help you discover your next read?', isAI: true)
  ];

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    
    setState(() {
      _messages.add(Message(text: _controller.text, isAI: false));
    });
    
    String query = _controller.text.toLowerCase();
    _controller.clear();

    Future.delayed(const Duration(seconds: 1), () {
      if(!mounted) return;
      setState(() {
        if(query.contains("startup") || query.contains("business")) {
          _messages.add(Message(text: "Based on what you asked, I highly recommend 'The Lean Startup' by Eric Ries or 'Zero to One'. Would you like the Startup Bundle?", isAI: true));
        } else if (query.contains("history") || query.contains("human")) {
           _messages.add(Message(text: "'Sapiens' by Yuval Noah Harari is exactly what you are looking for. I've added it to your wishlist!", isAI: true));
        } else {
          _messages.add(Message(text: "That's an interesting topic! I suggest exploring our 'Philosophy' genre. Also, check out 'The Architecture of Stillness'.", isAI: true));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: const Text('AI Curator'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(24.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: _buildMessageBubble(msg.text, isAI: msg.isAI),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (_) => _sendMessage(),
                    decoration: InputDecoration(
                      hintText: 'Ask the AI Curator...',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: AppTheme.primary,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: _sendMessage,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(String text, {required bool isAI}) {
    return Align(
      alignment: isAI ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(left: isAI ? 0 : 40, right: isAI ? 40 : 0),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isAI ? Colors.white : AppTheme.primary,
          borderRadius: BorderRadius.circular(16).copyWith(
            bottomLeft: isAI ? const Radius.circular(0) : const Radius.circular(16),
            bottomRight: isAI ? const Radius.circular(16) : const Radius.circular(0),
          ),
          boxShadow: [
            if (isAI) BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5, offset: const Offset(0, 2))
          ],
        ),
        child: Text(text, style: TextStyle(color: isAI ? AppTheme.textMain : Colors.white, height: 1.5)),
      ),
    );
  }
}
