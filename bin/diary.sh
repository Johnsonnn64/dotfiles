todayd=$(ls -l ~/vimwiki/diary | tail -n 3 | head -n 1 | awk '{print $9}')
dtoday=$(date +"%a, %m-%d")
todaycheck=$(date +"%Y-%m-%d".wiki)

if [[ "$todayd" == "$todaycheck" ]] ; then 
  echo 'already there'
  echo $todayd 
  echo $todaycheck
  exit
else
  echo remade
  sed "s/date/$dtoday/" ~/vimwiki/diary/diaryformat > ~/vimwiki/diary/$todaycheck
fi
