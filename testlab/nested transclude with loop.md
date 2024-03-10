# nested transclude with loop
 - this page tests what happens when nested transclude files try to loop; as in:  
Page1(transcludes Page2)
Page2(transcludes Page3)
Page3(transcludes Page1)