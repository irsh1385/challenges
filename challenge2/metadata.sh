#!/usr/bin/sh
#clear

complete_metadata()
{
        echo "Complete VM metadat::"
        curl -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2020-09-01" | /usr/local/bin/jq
        exit
}
key_metadata()
{
        echo "Enter the spefic key name from VM metadata"
        read key
        curl -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2020-09-01" | /usr/local/bin/jq .compute.$key
        exit
}
while true;do
        echo "1: For complete VM Metadata"
        echo "2: For specisfic key from VM MetaData"
        echo "e: Exit"
        read x

        case $x in
                1) complete_metadata;;
                2) key_metadata;;
                *)exit;;
esac
done
