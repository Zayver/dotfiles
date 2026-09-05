from pyhyprsocket import socketutils

def main():
    m = socketutils.getActiveMonitor()
    print(m)

if __name__ == '__main__':
    main()
