import DynamicLib

@main
enum Core {
    public static func main() {
        let res = DynamicLib.dynamicFunc()
        print("Hello from Core!" + res)
    }
}

