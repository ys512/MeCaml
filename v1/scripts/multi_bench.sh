echo "MECAML"
for i in {1..25}; do 
    TIMEFORMAT="%3U";
    time mecaml_code/$1.exe; 
done

echo "--------------------------------"
echo "OCAML"
for i in {1..25}; do 
    TIMEFORMAT="%3U";
    time ocaml_code/$1.exe;
done