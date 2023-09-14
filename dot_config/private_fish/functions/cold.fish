function c


  read -l density --prompt-str="(-density): "
  echo -e "Choose density value: $density \n"
  set -f cstr "Choose compression algorithm (1-4): "
  echo "1. Zip (default)"
  echo "2. JPEG"
  echo "3. LZW"
  while read -l compress_val --prompt-str=$cstr
      or return 1
    switch $compress_val
      case '2'
        set compress JPEG 
        break
      case '3'
        set compress LZW 
        break
      case '*'
        set compress Zip
        break
    end
    echo -e "Compression algorithm set to: $compress \n"
  end


  for dir in ./*.pdf;
    set -f file_with_ext (basename $dir)
    set -f file_without_ext (basename $dir .pdf)
    set -f delim _
    set -f is_compressed compressed
    set -f addpdf .pdf
    set -f output_str $file_without_ext$delim$is_compressed$addpdf
    echo "Compressing ($density / $compress): $file_with_ext --> $output_str";
    command convert -density $density -compress $compress $file_with_ext $output_str;
  end
  echo "Compression done!"
end
