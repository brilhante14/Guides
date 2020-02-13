
puts "Enter your name: "
name = gets.chomp() #chomp() takes out the \n
puts ("Hello " + name)


puts "Enter the first number: "
n1 = gets.chomp()
puts "Enter the second number: "
n2 = gets.chomp()
puts (n1.to_f + n2.to_f)

# or n1 = gets.chomp().to_f


friends = Array[2, false, "Martha"]
puts friends
puts friends[2]
puts friends[0,2]

flowers = Array.new
flowers[0] = "rose"
flowers[5] = "violet"
puts flowers # >rose    violet

puts flowers.include? "rose" #true
puts flowers.reverse() #violet   rose
puts flowers.sort()


#HASHES

states = {
    :Pennsylvania => "PA",
    "New York" => "NY",
    "Oregon" => "OR"
}

puts states
puts states["Oregon"]
puts states[:Pennsylvania]


#METHODS
def hi
    puts "Hello User"
end

hi

def sayhito(name)
    puts ("Hello " + name)
end

sayhito("Bóris")


def Greet(name="John Doe", age = 0)
    puts ("Hello " + name + ", you are " + age.to_s)
end

Greet("Bóris")




def cube(num)
    num * num * num
end

puts cube(2)

def cube(num)
    num * num * num
    5
end

puts cube(2) #print 5

def cube(num)
    return num * num * num, 70 #ends method
    5
end

puts cube(2) # >8 70
puts cube(2)[0] # >8






#if

ismale = true
istall = true

if ismale and istall
    puts "Yep, you're male aaaand tall"
elsif ismale and !istall
    puts "Nhe, male but not tall"
elsif !ismale and istall
    puts "Wow, female and tall"
else
    puts "Nop, no male at all, and not tall either"
end



def max(n1, n2, n3)
    if n1 >= n2 and n1 >= n3
        return n1
    elsif n2 >= n1 and n2 >= n3
        return n2
    else
        return n3
    end
end

puts max (1,2,3)






def calc(n1, op, n2)
    if op == "+"
        return n1 + n2
    elsif op == "-"
        return n1 - n2
    elsif op == "*"
        return n1 * n2
    elsif op == "/"
        return n1 / n2
    else
        "Invalid operator"
    end
end

puts "Enter the first number: "
n1 = gets.chomp().to_f
puts "Enter the second number: "
n2 = gets.chomp().to_f
puts "Enter the operator: "
op = gets.chomp()

puts calc(n1, op, n2)















def get_date_name(day)
    day_name = ""

    case day
    when "mon" 
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednesday"
    when "thu"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    when "sun"
        day_name = "Sunday"
    else
        day_name = "Invalid"
    end
    return day_name
end

day = gets.chomp()
puts get_date_name(day)








index = 1
while index <= 5
    puts index
    index += 1
end



secret = "Jax"
guess = ""
limit = 3
out_of_guesses = false
guess_count = 0

while guess != secret &&  !out_of_guesses
    puts "Enter ur guess: "
    guess = gets.chomp()
    guess_count += 1
    if guess_count > limit 
        out_of_guesses = true
    end
end
if out_of_guesses
    puts "Loser"
else
    puts "U won"
end


























friends = ["Kevin", "Roger", "Billy", "Merlin", "Silence"]

for friend in friends do
    puts friend
end

friends.each do |friend|
    puts friend
end

for index in 0..5
    puts index #0 1 2 3 4 5
end

6.times do |index|
    puts index
end

def pow(base, pow)
    result = 1
    pow.times do
        result = result * base
    end
    return result
end

























File.open("employees.txt", "r") do |file|
    puts file.read().include? "Molly"
    puts file.readline()        
    puts file.readchar()        
    puts file.readlines()[2]

end


file = File.open("employees.txt", "r") 
puts file.read
file.close()



File.open("employees.txt", "a") do |file|
    file.write("Oscar, Accouting")

end


File.open("employees.txt", "w") do |file|
    file.write("Oscar, Accouting")

end

File.open("index.html", "w") do |file|
    file.write("<h1>Hello</h1>")

end

File.open("employees.txt ", "r+") do |file|
    file.readline()
    file.write("Overridenn")
end

















lucky_nums = [4, 8, 12, 16, 42]

begin
    lucky_nums["dogs"]
rescue 
    puts "Error"
end


begin
    lucky_nums["dogs"]
    num = 10/0
rescue ZeroDivisionError
    puts "Error by zero"
rescue TypeError => variable
    puts variable
end




















class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end
end

book1 = Book.new("Harry Potter", "JK Rowling", 273)


book2 = Book.new("The Lord of the Rings", "JRR Tolkien", 455)











class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    def has_honors
        if @gpa >= 3.5
            return true
        end
        return false
    end
end

student1 = Student.new("New", "Business", 2.6)
student2 = Student.new("Bie", "Art", 3.6)

puts student1.has_honors









class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end


p1 = "Whats L name?\na. Lawliet\nb. Ryuzaak\nc. Unknown"
p2 = "Who is this?\na. Jaws\nb.Scream\nc. Halloween"
questions = [
    Question.new(p1, "c"),
    Question.new(p2, "b")
]

def run_test(questions)
    score = 0
    answer = ""
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got " + score.to_s + "/" + questions.length().to_s)
end

run_test(questions)





























class Chef #superclass
    def make_chicken
        puts "The chef makes chicken"
    end

    def make_salad
        puts "The chef makes salad"
    end

    def make_special_dish
        puts "The chef makes bbq ribs"
    end
end

class ItalianChef < Chef #subclass
    def make_special_dish
        puts "The chef makes eggplant parm"
    end

    def make_pasta
        puts "The chef makes pasta"
    end
end


chef = Chef.new()
chef.make_chicken


italian_chef = ItalianChef.new()






















module Tools
    def say_hi(name)
        puts "Hello #{name}"
    end
    def say_bye(name)
        puts "Bye, #{name}"
    end
end

include Tools
Tools.say_bye("Nubia")

# in another file
require_relative "File_name.rb"
include Tools
Tools.say_hi("Ernio")