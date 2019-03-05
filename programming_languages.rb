def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,style_languages|
    style_languages.each do |language,lan_data|
      if lan_data[:style].kind_of?(Array)
        lan_data[:style] = lan_data[:style] << style
      else
        lan_data[:style] = [style]
      end
      new_hash[language] = lan_data
    end
  end
  return new_hash
end
