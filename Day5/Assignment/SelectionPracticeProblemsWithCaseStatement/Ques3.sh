read -p "Enter the value: " x;

case $x in
        1)
        echo "Unit"
        ;;
        10)
        echo "Ten"
        ;;
        100)
        echo "Hundred"
        ;;
        10000)
        echo "Thousand"
        ;;
        100000)
        echo "Ten Thousand"
        ;;
        1000000)
        echo "Lakh"
        ;;
        10000000)
        echo "Ten Lakh"
        ;;
        100000000)
        echo "Crore"
esac
