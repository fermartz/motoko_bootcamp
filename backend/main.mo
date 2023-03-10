import Bool "mo:base/Bool";
import Int "mo:base/Int";
import Nat "mo:base/Nat";

actor {  
    

    // *************************
    // ******* GREETING ********
    // *************************
    
    public func greeting( i : Text) : async Text {
        "Hello, there " # i # "!!!";
    };

    // *************************
    // ******** COUNTER ********
    // *************************

    // mutable variable
    var count : Int = 0;

    public func increment() : async () {
        count += 1;
    };

    public query func get_value() : async Int {
        count;
    };

    // *************************
    // *** MIN MAX FUNCTIONS ***
    // *************************

    public func get_min_value(x : Int, y : Int) : async Int {
        let min = Int.min(x, y);

        min;
    };

    public func get_max_value(x : Int, y : Int) : async Int {
        let max = Int.max(x, y);

        max;
    };

    // *************************
    // *** CODING CHALLENGES ***
    // ******* DAY ONE *********

    public func multiply(m : Nat, n : Nat) : async Nat {
        m * n;
    };

    public func volume(x : Nat) : async Nat {
       Nat.pow(x,3);
    };

    public func hours_to_minutes(n : Nat) : async Nat {
        Nat.mul(n,60);
    };

    stable var myCounter : Nat = 0;
    public func set_counter(n : Nat) : async Nat {
        myCounter := n;
        myCounter;

    };

    public query func get_counter() : async Nat {
        myCounter;
    };

    public func test_divide(n : Nat, m: Nat) : async Bool {        
        if(n > m  or n== m and m != 0){
            true;
        } else {
            false;
        };
    };

    public func is_even(n : Nat) : async Bool {
        let res = Nat.rem(n,2);

        if(res == 0){
            true;
        } else {
            false;
        };
    };

    // *************************
    // *** CODING CHALLENGES ***
    // ******* DAY TWO *********

    
};