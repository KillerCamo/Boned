$attribute @a[tag=BonedTransfer,limit=1] generic.max_health base set $(totem_health_max)
#$attribute @a[tag=BonedTransfer,limit=1] generic.max_absorption base set $(totem_health_absorption)
advancement revoke @a only camo:boned/function/boned
schedule function camo:boned/transfer/totem_return 1.75s
