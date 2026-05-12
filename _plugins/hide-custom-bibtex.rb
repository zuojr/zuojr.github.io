module Jekyll
  module HideCustomBibtex
    def hideCustomBibtex(input)
      config = @context.registers[:site].config
      keywords = config['filtered_bibtex_keywords'] || config.dig('scholar', 'filtered_bibtex_keywords') || []

      keywords.each do |keyword|
        input = input.gsub(/^.*\b#{keyword}\b *= *\{.*$\n/, '')
      end

      # Clean superscripts in author lists
      input = input.gsub(/^.*\bauthor\b *= *\{.*$\n/) { |line| line.gsub(/[*†‡§¶‖&^]/, '') }

      return input
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)
