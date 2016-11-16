module ChaptersHelper
  def render_prev_chapter_button(chapter)
    if chapter.prev_item
      ibutton("Prev", read_book_chapter_path(chapter.book_id, chapter.prev_item), iclass: "fa fa-arrow-left")
    end
  end

  def render_next_chapter_button(chapter)
    if chapter.next_item
      link_to read_book_chapter_path(chapter.book_id, chapter.next_item) do
        concat "Next "
        concat content_tag(:span, "", class: "fa fa-arrow-right")
      end
    end
  end

  def render_highlight_title(chapter, query_string)
    link_to(highlight(chapter.title, query_string), chapter_path(chapter))
  end

  def render_highlight_content(chapter, query_string)
    highlight(excerpt(chapter.content, query_string, radius: 500), query_string)
  end
end
