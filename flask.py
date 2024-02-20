import sys

def main():
    result = f"You passed {len(sys.argv)} arguments in the command line:"
    for arg in sys.argv:
        result += f"\n\t - {str(arg)}"
    cowsay.cow(result)
if __name__ == "__main__":
    main()