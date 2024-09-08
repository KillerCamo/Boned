tag @a[tag=BonerGuy] add BoneMe
tag @a[tag=BoneMe] add BonerGuy
give @a[tag=BoneMe] bone{Enchantments:[{id:knockback,lvl:5}],display:{Name:'{"text":"you got boned! bone someone else (no tag backs)"}'},Boner:1b}
tag @a[tag=BoneMe] remove BoneMe
kill @e[type=item,nbt={Item:{tag:{Boner:1b}}}]