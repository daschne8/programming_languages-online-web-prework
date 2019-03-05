def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,style_languages|
    style_languages.each do |language,lan_data|
      lan_data[:style] = [] << style.to_s
      new_hash[language] = lan_data
    end
  end
  return new_hash
end
