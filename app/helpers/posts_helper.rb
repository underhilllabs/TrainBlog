# frozen_string_literal: true

module PostsHelper
  def markdown
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       no_intra_emphasis: true,
                                       fenced_code_blocks: true,
                                       disable_indented_code_blocks: true)
    markdown.render(text).html_safe
  end
end
