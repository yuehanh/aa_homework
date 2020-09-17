function titleize(names, cb){
    let arr = names.map(element => {
        return `Mx. ${element} Jingleheimer Schmidt`
    });
    arr.forEach(element => {
        cb(element);        
    });
}

function printCallback(el){
    console.log(el);
}

titleize(["Mary", "Brian", "Leo"], printCallback);



function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;

};

Elephant.prototype.trumpet = function (){
    console.log(`${this} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function (){
    this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
    this.tricks.push(trick);
};

Elephant.prototype.play = function(){
    idx = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[idx]}!`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];   

Elephant.paradeHelper = function (el) {
    console.log(`${el.name} is trotting by!`);
};


herd.forEach(el => Elephant.paradeHelper(el));

function dinerBreakfast (){
    let order = "I'd like cheesy scrambled eggs please.";
    
    return function(food){
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    };
};