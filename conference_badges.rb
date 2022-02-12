require 'pry'

array = ["Arel", "Carol"]

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    badges = []
    array.map { |name| badges << "Hello, my name is #{name}." }
    return badges
end

def assign_rooms(array)
    assigned_rooms = []
    room_number = 1
    while (room_number < 9) && (room_number <= array.length) do
        array.map do |name| 
        assigned_rooms << "Hello, #{name}! You'll be assigned to room #{room_number}!"
        room_number += 1
        end
    end       
    return assigned_rooms
end

def printer(array)
    batch_badge_creator(array).each { |badge| puts badge }
    assign_rooms(array).each { |assignment| puts assignment }
end