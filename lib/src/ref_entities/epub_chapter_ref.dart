import 'dart:async';

import 'epub_text_content_file_ref.dart';

class EpubChapterRef {
    EpubTextContentFileRef epubTextContentFileRef;

    EpubChapterRef(EpubTextContentFileRef epubTextContentFileRef)
    {
        this.epubTextContentFileRef = epubTextContentFileRef;
    }

    String Title;
    String ContentFileName;
    String Anchor;
    List<EpubChapterRef> SubChapters;

    Future<String> ReadHtmlContentAsync() async {
        return epubTextContentFileRef.ReadContentAsTextAsync();
    }

    String toString() {
        return "Title: ${Title}, Subchapter count: ${SubChapters.length}";
    }
}