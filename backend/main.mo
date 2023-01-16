actor{
    
    var count : Int = 0;

    public func increment() : async () {
        count += 1;
    };

    public func get_value() : async Int {
        count;
    };

    public func greeting( i : Text) : async Text {
        "Hello, there " # i # "!!!";
    };


};