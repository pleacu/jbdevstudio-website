To convert a multi-layer Gimp xcf file to a multi-page PDF file:

  Open the GIMP file with multiple layers
  Make sure to order the layers in reverse order, page 1 must by the bottom layer, the last page the top layer
  Save the file as a MNG animation. In the dialogue that comes up, select 'save as animation'.
  Now, open the terminal and use the command 'convert document.mng document.pdf' to export the mng file to a pdf file.
    -- From http://pvanb.wordpress.com/2010/10/05/exporting-layers-in-gimp-file-to-single-pdf-file/
