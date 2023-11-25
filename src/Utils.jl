


struct workInProgress end #This is a placeholder for functions.

(::workInProgress)(x...) = error("Working in progress.")


#=
struct StatusEffect
    #???
    #Working in progress.
end


struct TileFeature
    #???
    #Working in progress.
end

struct WeaponFeature
    #???
    #Working in progress.
end
=#
#=
struct Feature
    numbercontent::Dict{String,Float64}
    subfeatures::Dict{String,Feature}
    Feature() = new(Dict{String,Float64}(),Dict{String,Feature}())
end
=#

struct Weapon
    #These are normally integers but can be modified so float they are.
    attack::Float64
    accuracy::Float64
    damage::Float64
    armor_penetration::Float64
    name::String
    #feature::Feature
end

mutable struct Unit
    maxhealth::Float64
    health::Float64 #Only mutate this.
    health_per_unit::Float64
    unitcount::Float64
    armor::Float64
    movement::Int #Status effect might alter this.
    action::Int #Status effect might alter this.
    #status::Feature #Status effects.
    #feature::Feature #Permanent unit features or other features that stay on permanently until some effects.
    weapons::Vector{Weapon}
    name::String
    side::Int
    #selfaction::Vector{workInProgress} #Actions done to self such as healing or changing weapons.
    #actionOn::Vector{workInProgress} #Actions done to a tile.
end

#=
struct costMovingTo
    movementcost::Float64 #The cost of movement.
    logicalcost::Float64 
    moveUnit::workInProgress #A function that units will pay the cost.
end
=#
mutable struct Tile

    #features::Feature
    movement_cost::Int
    height::Int
    unit::Union{Unit,Nothing}
    #adjacenttile::Vector{Tuple{Tile,costMovingTo}}
end

function get_adjacent_tile(tile::Tile)
    error("Working in progress.")
end

function calculate_damage(weapon::Weapon, unit::Unit)
    #Calculation of feature working in progress.
    return min(weapon.attack*unit.health_per_unit, weapon.attack*weapon.damage*weapon.accuracy/16)
end