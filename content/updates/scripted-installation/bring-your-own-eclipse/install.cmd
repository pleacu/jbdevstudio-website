@echo off

:: Install all of JBT into Eclipse Standard bundle
:: First, unpack eclipse-standard-kepler-R-*.zip into some path like c:\eclipse\eclipse43\eclipse
c:\eclipse\eclipse43\eclipse\eclipse -consolelog -nosplash -data c:\temp -application org.eclipse.ant.core.antRunner -f ^
  c:\path\to\install.xml ^
  -DsourceZip=c:\temp\jbdevstudio-product-universal-7.0.0.GA-v20130720-0044-B364.jar \
  -DtargetDir=c:\eclipse\eclipse43\eclipse\

:: [p2.dir] Installing com.jboss.jbds.product.feature.feature.group 7.0.0.GA-v20130720-0044-B364.
:: [p2.dir] Operation completed in 50795 ms.

:: Install JBT Central, including Subclipse w/ SVNKit into Eclipse JEE bundle
:: First, unpack eclipse-jee-kepler-R-*.zip into some path like c:\eclipse\eclipse43\eclipse
:: To get a list of feature.groups to install, you can use the p2 browser: https://github.com/ifedorenko/p2-browser/
c:\eclipse\eclipse43\eclipse\eclipse -consolelog -nosplash -data c:\temp -application org.eclipse.ant.core.antRunner -f ^
  c:\path\to\install.xml ^
  -DsourceZip=c:\temp\jbosstools-Update-4.1.0.Final_2013-07-19_19-47-52-B380.zip ^
  -DotherRepos=https://devstudio.jboss.com/updates/7.0/central/core/ ^
  -DtargetDir=c:\eclipse\eclipse43\eclipse\ ^
  -Dinstall="com.jboss.jbds.product.feature.feature.group,^
org.tigris.subversion.subclipse.feature.group,^
org.tigris.subversion.clientadapter.svnkit.feature.feature.group,^
com.collabnet.subversion.merge.feature.feature.group,^
net.java.dev.jna.feature.group,^
org.tigris.subversion.clientadapter.feature.feature.group,^
org.tigris.subversion.subclipse.graph.feature.feature.group,^
org.tmatesoft.svnkit.feature.group"

:: [p2.dir] Installing com.jboss.jbds.product.feature.feature.group 7.0.0.GA-v20130720-0044-B364.
:: [p2.dir] Installing org.tigris.subversion.subclipse.feature.group 1.8.20.
:: [p2.dir] Installing org.tigris.subversion.clientadapter.svnkit.feature.feature.group 1.7.9.1.
:: ...
:: [p2.dir] Operation completed in 231507 ms.
