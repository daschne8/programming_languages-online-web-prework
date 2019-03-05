def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,style_languages|
    style_languages.each do |language,lan_data|
      lan_data[:style]  << style
      # if lan_data[:style].kind_of?(Array)
      #   lan_data[:style]  << style
      # else
      #   lan_data[:style] = [style]
      # end
      new_hash[language] = lan_data
    end
  end
  return new_hash
end

def lang_hash
  {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }

    }
  }
end
puts reformat_languages(lang_hash)
