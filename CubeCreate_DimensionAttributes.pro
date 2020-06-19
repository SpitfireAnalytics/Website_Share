#-----------------------------------------------------------------------
# Author: D Rodger
# Creation Date: 2020-02-17
# Purpose: Create a basic }DimensionAttributes cube if it has not 
# been pre-created within the TM1 model.
#
# Process can be executed once and then deleted after confirmation
# that the cube exists.
#-----------------------------------------------------------------------



cDimName = '}Dimensions';

cDimAttr = '}DimensionAttributes';
cCubeName = cDimAttr;


DimensionCreate ( cDimAttr );
DimensionElementInsert ( cDimAttr, '', 'DIMENSION_TYPE', 'S');
DimensionElementInsert ( cDimAttr, '', 'Caption_Default', 'S');
DimensionElementInsert ( cDimAttr, '', 'Caption', 'S');
DimensionElementInsert ( cDimAttr, '', 'DIMENSION_INFO', 'S');
DimensionElementInsert ( cDimAttr, '', 'CORRECT_EXPR', 'N');


CubeCreate ( cCubeName, cDimName, cDimAttr );
