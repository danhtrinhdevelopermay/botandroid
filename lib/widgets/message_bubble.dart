import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:intl/intl.dart';
import '../models/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isUser = message.isUser;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        child: Column(
          crossAxisAlignment:
              isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isUser
                    ? colorScheme.primaryContainer
                    : colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(16).copyWith(
                  topLeft: isUser ? const Radius.circular(16) : Radius.zero,
                  topRight: isUser ? Radius.zero : const Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: isUser
                  ? Text(
                      message.content,
                      style: TextStyle(
                        color: colorScheme.onPrimaryContainer,
                        fontSize: 16,
                      ),
                    )
                  : MarkdownBody(
                      data: message.content,
                      styleSheet: MarkdownStyleSheet(
                        p: TextStyle(
                          color: colorScheme.onSecondaryContainer,
                          fontSize: 16,
                        ),
                        code: TextStyle(
                          backgroundColor:
                              colorScheme.surfaceVariant.withOpacity(0.5),
                          color: colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                DateFormat('HH:mm').format(message.timestamp),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
