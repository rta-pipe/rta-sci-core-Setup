#!/usr/bin/env bash
#First parameter: git username
#Second parameter: -t -> do not use tags

trap exit ERR
echo $2
if [ "$2" != "-t" ] ; then
	echo "USE TAGS"
	#TAG_PIPEMANAGER=v1.0.2
	#TAG_RTALIB=v2.0.0
  #TAG_GAMMAPIPECOMMON=v1.0.0
fi

echo "--------------"
git clone https://$1@github.com/rta-pipe/pipeline_manager.git
cd pipeline_manager
if [ "$2" != "-t" ]; then
	git checkout $TAG_PIPEMANAGER
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/rta-pipe/RTAlib.git
cd RTAlib
if [ "$2" != "-t" ]; then
        git checkout $TAG_RTALIB
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/rta-pipe/GammaPipeCommon.git
cd GammaPipeCommon
if [ "$2" != "-t" ]; then
        git checkout $TAG_GAMMAPIPECOMMON
else
        echo "Use master version"
fi
cd ..
