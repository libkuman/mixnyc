===========================================================
{ts}Activity Summary{/ts} - {$activityTypeName}
===========================================================
{if $isCaseActivity}
{ts}Your Case Role(s){/ts} : {$contact.role}
{/if}

{foreach from=$activity.fields item=field}
{if $field.type eq 'Date'}
{$field.label}{if $field.category}({$field.category}){/if} : {$field.value|crmDate:$config->dateformatDatetime}
{else}
{$field.label}{if $field.category}({$field.category}){/if} : {$field.value}
{/if}
{/foreach}

{foreach from=$activity.customGroups key=customGroupName item=customGroup}
==========================================================
{$customGroupName}
==========================================================
{foreach from=$customGroup item=field}
{if $field.type eq 'Date'}
{$field.label} : {$field.value|crmDate:$config->dateformatDatetime}
{else}
{$field.label} : {$field.value}
{/if}
{/foreach}

{/foreach}
