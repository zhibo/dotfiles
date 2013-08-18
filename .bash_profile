export PATH=/usr/local/share/python:/usr/local/sbin:/Users/Bo/Scripts:/Applications/MAMP/Library/bin:$PATH
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad
export PS1='\[\e[32;1m\]\u@ \w\n\[\e[35;1m\]\$ >>>\[\e[0m\] '
set -o vi

ts(){
curl -s \
        "http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule&smartresult=ugc&sessionFrom=dict.top" \
         -d \
        "type=AUTO& i=$1&doctype=json&xmlVersion=1.4&keyfrom=fanyi.web&ue=UTF-8&typoResult=true&flag=false" \
            | sed -E -n 's/.*tgt":"([^"]+)".*/\1/p' ; 

return 0;
}

#ts(){                                                                       
#result=`curl -s \
#            "http://dict.cn/ws.php?utf8=true&q=$1" `;
#            
#echo $result | sed -E -n 's/.*<def>([^<]+)<\/def>.*/\1/p'; 
#
##examples
#echo $result \
#    | sed -E -n 's/.*def> (<sent><orig>.*<\/sent>).*/\1/p' \
#    | sed 's/&lt;em&gt;//g' \
#    | sed 's/&lt;\/em&gt;//g' \
#    | sed 's/<trans>/^M^L/g' \
#    | sed 's/<orig>/^M^L/g' \
#    | sed 's/<[^<>]*>//g' ;
#    
#    return 0;
#
#}
