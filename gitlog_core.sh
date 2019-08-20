#/bin/bash

thisyear=$(date +'%Y');
thismonth=$(date +'%m');
thismonthname=$(date +'%B');
thisday=$(date +'%d');
repocore="/var/www/vhosts/biopama.org/testalpha.biopama.org";
repotheme="/var/www/vhosts/biopama.org/testalpha.biopama.org/web/themes/custom/bootstrap_barrio_biopama";
repomodule="/var/www/vhosts/biopama.org/testalpha.biopama.org/web/modules/custom/biopama_form_hooks";
thistitle=$thisyear' - '$thismonthname;
header='---\rtitle: '$thistitle'\rauthor: James Davy\rlayout: post\r---\r';
footer='\r</details>';

echo -e '\r<details><summary>BIOPAMA Core</summary>\r\r' > $repocore/change_logs/core/$thisyear-$thismonth-$thisday.md;
git --git-dir=$repocore/.git log \
--since='last month' \
--date=format:'%m-%d' \
--pretty=format:'- %ad - %an - %s' >> $repocore/change_logs/core/$thisyear-$thismonth-$thisday.md;
echo -e $footer >> $repocore/change_logs/core/$thisyear-$thismonth-$thisday.md;

echo -e '\r<details><summary>Theme</summary>\r\r' > $repocore/change_logs/theme/$thisyear-$thismonth-$thisday.md;
git --git-dir=$repotheme/.git log \
--since='last month' \
--date=format:'%m-%d' \
--pretty=format:'- %ad - %an - %s' >> $repocore/change_logs/theme/$thisyear-$thismonth-$thisday.md;
echo -e $footer >> $repocore/change_logs/theme/$thisyear-$thismonth-$thisday.md;

echo -e '\r<details><summary>Module</summary>\r\r' > $repocore/change_logs/module/$thisyear-$thismonth-$thisday.md;
git --git-dir=$repomodule/.git log \
--since='last month' \
--date=format:'%m-%d' \
--pretty=format:'- %ad - %an - %s' >> $repocore/change_logs/module/$thisyear-$thismonth-$thisday.md;
echo -e $footer >> $repocore/change_logs/module/$thisyear-$thismonth-$thisday.md;

echo -e $header > $repocore/_posts/$thisyear-$thismonth-$thisday-$thismonthname-Changes.md;
cat $repocore/change_logs/core/$thisyear-$thismonth-$thisday.md \
$repocore/change_logs/theme/$thisyear-$thismonth-$thisday.md \
$repocore/change_logs/module/$thisyear-$thismonth-$thisday.md \
>> $repocore/_posts/$thisyear-$thismonth-$thisday-$thismonthname-Changes.md;

sed -i 's/AgentJay/James Davy/g' $repocore/_posts/$thisyear-$thismonth-$thisday-$thismonthname-Changes.md;