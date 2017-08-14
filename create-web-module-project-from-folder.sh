#!/usr/bin/env bash

project="$1"

cat > ${project}/${project}.iml <<<"<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<module type=\"WEB_MODULE\" version=\"4\">
  <component name=\"NewModuleRootManager\" inherit-compiler-output=\"true\">
    <exclude-output />
    <content url=\"file://\$MODULE_DIR$\" />
    <orderEntry type=\"inheritedJdk\" />
    <orderEntry type=\"sourceFolder\" forTests=\"false\" />
  </component>
</module>
"
mkdir ${project}/.idea
cat > ${project}/.idea/misc.xml <<<"<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<project version=\"4\">
  <component name=\"ProjectRootManager\">
    <output url=\"file://\$PROJECT_DIR$/out\" />
  </component>
</project>
"
cat > ${project}/.idea/modules.xml <<<"<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<project version=\"4\">
  <component name=\"ProjectModuleManager\">
    <modules>
      <module fileurl=\"file://\$PROJECT_DIR$/${project}.iml\" filepath=\"\$PROJECT_DIR$/${project}.iml\" />
    </modules>
  </component>
</project>
"
cat > ${project}/.idea/vcs.xml <<<"<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<project version=\"4\">
  <component name=\"VcsDirectoryMappings\">
    <mapping directory=\"\" vcs=\"Git\" />
  </component>
</project>
"
