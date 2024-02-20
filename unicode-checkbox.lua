-- file: unicode-checkbox.lua
function Str (s)
  if s.text == '☐' then
    return pandoc.RawInline('html', s.text)
  end
end
