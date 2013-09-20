#!/bin/bash

# Install JBDS into Eclipse Standard bundle
target=${HOME}/eclipse/eclipse43; cd ${target}; rm -fr ${target}/eclipse
tar xzf /tmp/eclipse-standard-kepler-R-linux-gtk-x86_64.tar.gz
${target}/eclipse/eclipse -consolelog -nosplash -data /tmp -application org.eclipse.ant.core.antRunner -f \
  install.xml \
  -DsourceZip=/tmp/jbdevstudio-product-universal-7.0.0.GA-v20130720-0044-B364.jar \
  -DtargetDir=${target}/eclipse/

# [p2.dir] Installing com.jboss.jbds.product.feature.feature.group 7.0.0.GA-v20130720-0044-B364.
# [p2.dir] Operation completed in 50795 ms.

# Install JBDS and Subclipse w/ SVNKit adapter into Eclipse JEE bundle
target=${HOME}/eclipse/eclipse43; cd ${target}; rm -fr ${target}/eclipse
tar xzf /tmp/eclipse-jee-kepler-R-linux-gtk-x86_64.tar.gz
${target}/eclipse/eclipse -consolelog -nosplash -data /tmp -application org.eclipse.ant.core.antRunner -f \
  install.xml \
  -DsourceZip=/tmp/jbdevstudio-product-universal-7.0.0.GA-v20130720-0044-B364.jar \
  -DotherRepos=https://devstudio.jboss.com/updates/7.0/central/core/ \
  -DtargetDir=${target}/eclipse/ \
  -Dinstall="org.jboss.tools.community.central.feature.feature.group,\
org.tigris.subversion.subclipse.feature.group,\
org.tigris.subversion.clientadapter.svnkit.feature.feature.group,\
com.collabnet.subversion.merge.feature.feature.group,\
net.java.dev.jna.feature.group,\
org.tigris.subversion.clientadapter.feature.feature.group,\
org.tigris.subversion.subclipse.graph.feature.feature.group,\
org.tmatesoft.svnkit.feature.group"

# [p2.dir] Installing com.jboss.jbds.product.feature.feature.group 7.0.0.GA-v20130720-0044-B364.
# [p2.dir] Installing org.tigris.subversion.subclipse.feature.group 1.8.20.
# [p2.dir] Installing org.tigris.subversion.clientadapter.svnkit.feature.feature.group 1.7.9.1.
# ...
# [p2.dir] Operation completed in 231507 ms.