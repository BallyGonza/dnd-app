import 'package:flutter/material.dart';

class NoteListItem extends StatelessWidget {
  const NoteListItem({
    required this.onTap,
    required this.title,
    required this.content,
    required this.date,
    required this.color,
    required this.index,
    super.key,
  });

  final String title;
  final String content;
  final String date;
  final int color;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: content.length > 100 || content.contains('\n')
            ? 150
            : content.isEmpty || title.isEmpty
                ? content.length > 50 || content.contains('\n')
                    ? 120
                    : content.length > 25 || content.contains('\n')
                        ? 110
                        : 90
                : 130,
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title.isNotEmpty)
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color:
                      color == Colors.white.value ? Colors.black : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            else
              const SizedBox.shrink(),
            if (content.isNotEmpty)
              const SizedBox(height: 8)
            else
              const SizedBox.shrink(),
            if (content.isNotEmpty)
              Text(
                content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: color == Colors.white.value
                      ? Colors.black.withOpacity(0.6)
                      : Colors.white.withOpacity(0.6),
                  fontSize: 16,
                ),
              )
            else
              const SizedBox.shrink(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    color: color == Colors.white.value
                        ? Colors.black.withOpacity(0.6)
                        : Colors.white.withOpacity(0.6),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
