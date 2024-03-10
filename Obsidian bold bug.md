# Obsidian bold bug

1. **this is bold**

2. **and is this? **

3. **and also this?   **

4. **and
when we
write this stuff**

Obsidian, you have a bug in your Markdown rendering: ` **` is not a Commonmark compliant trailing mark for a leading `**` mark. According to the spec only items (1) and (4) should be rendered as bold.


