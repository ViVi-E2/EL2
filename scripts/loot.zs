
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.loot.conditions.vanilla.LootTableId;
import crafttweaker.api.loot.modifiers.CommonLootModifiers;
import crafttweaker.api.item.IItemStack;

println("BEGIN loot.zs");

loot.modifiers.register(
  "have_a_heart",
  LootConditionBuilder.createForSingle<LootTableId>(condition => { condition.withTableId(<resource:minecraft:chests/buried_treasure>); }),
  CommonLootModifiers.add(<item:minecraft:heart_of_the_sea>)
);

loot.modifiers.register(
  "not_more_mappers",
  LootConditionBuilder.createForSingle<LootTableId>(condition => { condition.withTableId(<resource:minecraft:chests/simple_dungeon>); }),
  CommonLootModifiers.replaceAllStacksWith({
    <item:mapperbase:steel_ingot>  : <item:immersiveengineering:ingot_steel>,
    <item:mapperbase:steel_nugget> : <item:immersiveengineering:nugget_steel>
    } as IItemStack[IItemStack] )
);

println("END loot.zs");
