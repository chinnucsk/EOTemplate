#!/bin/bash

if(($#!=1))
then
    echo "Usage: $$ <application name>"
    exit -1;
fi

appname=$1

if [ -d $appname ];
then
    echo "the same name exits, please rename the application"
    exit -1;
fi

mkdir $appname
cd $appname
mkdir doc
mkdir ebin
mkdir include
mkdir priv
mkdir src

cd ebin
touch $appname.app
echo "{application, $appname,
        [{description, \"\"},
        {vsn, \"\"},
        {modules, []},
        {registered, []},
        {applications, [kernel, stdlib]},
        {mod, {,[]}}
        ]}." >> $appname.app

echo "Done"