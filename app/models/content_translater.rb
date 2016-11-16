require "easy_translate"

class ContentTranslater
  def initialize(chapter)
    @chapter = chapter
  end

  def translate!
    translated_content = ""
    @chapter.content.each_line do |line|
      puts line
      chinese_line = EasyTranslate.translate line, format: "html", to: "zh-TW"
      puts chinese_line

      translated_content << line
      translated_content << "\n"
      translated_content << chinese_line
      translated_content << "\n"
    end
    @chapter.translated_content = translated_content
    @chapter.is_translated = true
    @chapter.save
  end
end
