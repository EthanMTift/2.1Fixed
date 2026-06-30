--Adding infinite train breaking as an aquilo science tech
data:extend({
    {
        type = "technology",
        name = "braking-force-8",
        icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
        effects =
        {
          {
            type = "train-braking-force-bonus",
            modifier = 0.15
          }
        },
        prerequisites = {"braking-force-7","cryogenic-science-pack"},
        unit =
        {
          count_formula = "(2^(L-7))*1000",
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"cryogenic-science-pack", 1}
          },
          time = 60
        },
        max_level = "infinite",
        upgrade = true
      },
    })

--Fixing metallic asteroids
data.raw["recipe"]["metallic-asteroid-crushing"].ingredients[1].ignored_by_stats = 0
data.raw["recipe"]["metallic-asteroid-crushing"].results[2].ignored_by_stats = 0
data.raw["recipe"]["metallic-asteroid-crushing"].results[2].independent_probability = 0.2
data.raw["recipe"]["advanced-metallic-asteroid-crushing"].ingredients[1].ignored_by_stats = 0
data.raw["recipe"]["advanced-metallic-asteroid-crushing"].results[3].ignored_by_stats = 0
data.raw["recipe"]["advanced-metallic-asteroid-crushing"].results[3].independent_probability = 0.05

--Fixing carbonic asteroids
data.raw["recipe"]["carbonic-asteroid-crushing"].ingredients[1].ignored_by_stats = 0
data.raw["recipe"]["carbonic-asteroid-crushing"].results[2].ignored_by_stats = 0
data.raw["recipe"]["carbonic-asteroid-crushing"].results[2].independent_probability = 0.2
data.raw["recipe"]["advanced-carbonic-asteroid-crushing"].ingredients[1].ignored_by_stats = 0
data.raw["recipe"]["advanced-carbonic-asteroid-crushing"].results[3].ignored_by_stats = 0
data.raw["recipe"]["advanced-carbonic-asteroid-crushing"].results[3].independent_probability = 0.05

--Fixing oxide asteroids
data.raw["recipe"]["oxide-asteroid-crushing"].ingredients[1].ignored_by_stats = 0
data.raw["recipe"]["oxide-asteroid-crushing"].results[2].ignored_by_stats = 0
data.raw["recipe"]["oxide-asteroid-crushing"].results[2].independent_probability = 0.2
data.raw["recipe"]["advanced-oxide-asteroid-crushing"].ingredients[1].ignored_by_stats = 0
data.raw["recipe"]["advanced-oxide-asteroid-crushing"].results[3].ignored_by_stats = 0
data.raw["recipe"]["advanced-oxide-asteroid-crushing"].results[3].independent_probability = 0.05

--Fixing LDS
data.raw["recipe"]["casting-low-density-structure"].can_set_quality = false

--Fixing promethium science
data.raw["recipe"]["promethium-science-pack"].ingredients = {
        
{
  type = "item",
  name = "promethium-asteroid-chunk",
  amount = 12
},

{
  type = "item",
  name = "quantum-processor",
  amount = 1
},

{
    type = "item",
    name = "uranium-235",
    amount = 2
  },

{
  type = "item",
  name = "biter-egg",
  amount = 10
}
}

--Fixing uranium launch amounts
data.raw["item"]["uranium-238"].weight = 10000
data.raw["item"]["uranium-235"].weight = 10000

--Fixing trees on landfill
table.insert(data.raw.plant["tree-plant"].autoplace.tile_restriction, "landfill")

--Fixing holmium in biochambers
data.raw["recipe"]["holmium-solution"].categories = {
    "chemistry",
    "organic"
}