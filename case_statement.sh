name="john1"

case $name in 
  "john")
    echo "John"
    ;;

  "others" | "others2")
    echo "other names"
    ;;
  
  *)
  
    echo "Default name"
    ;;

esac

