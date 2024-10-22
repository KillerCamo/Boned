$attribute @a[tag=BonedTransfer,limit=1] max_health base set $(totem_health_max)
advancement revoke @a only camo:boned/function/boned
schedule function camo:boned/transfer/totem_return 1.75s
# we