ShowWorkAreas = {};

ShowWorkAreas.modDir = g_currentModDirectory;
ShowWorkAreas.currentModName = g_currentModName;

print("2020 Copyright Bjarnerdr");

function ShowWorkAreas.prerequisitesPresent(specializations)
    return true; 
end;


function ShowWorkAreas.registerEventListeners(vehicleType)
	for _, spec in pairs({"onLoad", "onDelete", "onUpdate", "onDraw", "onReadStream", "onWriteStream"}) do
		SpecializationUtil.registerEventListener(vehicleType, spec, ShowWorkAreas)
	end
end


function ShowWorkAreas:onLoad(savegame)
	self.ShowWorkAreas = {};
	self.ShowWorkAreas.load = 0;
	self.ShowWorkAreas.bar1 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#bar1"), self.i3dMappings);
	self.ShowWorkAreas.icon1 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon1"), self.i3dMappings);
	self.ShowWorkAreas.icon2 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon2"), self.i3dMappings);
	self.ShowWorkAreas.icon3 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon3"), self.i3dMappings);
	self.ShowWorkAreas.icon4 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon4"), self.i3dMappings);
	self.ShowWorkAreas.icon5 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon5"), self.i3dMappings);
	self.ShowWorkAreas.icon6 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon6"), self.i3dMappings);
	self.ShowWorkAreas.icon7 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon7"), self.i3dMappings);
	self.ShowWorkAreas.icon8 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon8"), self.i3dMappings);
	self.ShowWorkAreas.icon9 = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon9"), self.i3dMappings);
	
	self.ShowWorkAreas.icon1b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon1b"), self.i3dMappings);
	self.ShowWorkAreas.icon2b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon2b"), self.i3dMappings);
	self.ShowWorkAreas.icon3b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon3b"), self.i3dMappings);
	self.ShowWorkAreas.icon4b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon4b"), self.i3dMappings);
	self.ShowWorkAreas.icon5b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon5b"), self.i3dMappings);
	self.ShowWorkAreas.icon6b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon6b"), self.i3dMappings);
	self.ShowWorkAreas.icon7b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon7b"), self.i3dMappings);
	self.ShowWorkAreas.icon8b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon8b"), self.i3dMappings);
	self.ShowWorkAreas.icon9b = I3DUtil.indexToObject(self.components, getXMLString(self.xmlFile, "vehicle.ShowWorkAreas#icon9b"), self.i3dMappings);
end;


function ShowWorkAreas:onUpdate(dt)
	local specAttacherJoints = self.spec_attacherJoints;
	
	if specAttacherJoints ~= nil then
		for attachedImplement = 1, #specAttacherJoints.attachedImplements do
			local object = specAttacherJoints.attachedImplements[attachedImplement].object;
			
			if object.getWorkAreaByIndex ~= nil then
				if object.getIsWorkAreaActive ~= nil then
					
				   local workArea1 = object:getWorkAreaByIndex(1);

                   if workArea1 ~= nil and object:getIsWorkAreaActive(workArea1) == true then
                       setVisibility(self.showworkareas.icon1, true);
                   else
                       setVisibility(self.showworkareas.icon1, false);
                   end
				   
				   local workArea2 = object:getWorkAreaByIndex(2);

                   if workArea2 ~= nil and object:getIsWorkAreaActive(workArea2) == true then
                       setVisibility(self.showworkareas.icon2, true);
                   else
                       setVisibility(self.showworkareas.icon2, false);
                   end
					
				   local workArea3 = object:getWorkAreaByIndex(3);

                   if workArea3 ~= nil and object:getIsWorkAreaActive(workArea3) == true then
                       setVisibility(self.showworkareas.icon3, true);
                   else
                       setVisibility(self.showworkareas.icon3, false);
                   end
	
				   local workArea4 = object:getWorkAreaByIndex(4);

                   if workArea4 ~= nil and object:getIsWorkAreaActive(workArea4) == true then
                       setVisibility(self.showworkareas.icon4, true);
                   else
                       setVisibility(self.showworkareas.icon4, false);
                   end
					
				   local workArea5 = object:getWorkAreaByIndex(5);

                   if workArea5 ~= nil and object:getIsWorkAreaActive(workArea5) == true then
                       setVisibility(self.showworkareas.icon5, true);
                   else
                       setVisibility(self.showworkareas.icon5, false);
                   end
	
			       local workArea6 = object:getWorkAreaByIndex(6);

                   if workArea6 ~= nil and object:getIsWorkAreaActive(workArea6) == true then
                       setVisibility(self.showworkareas.icon6, true);
                   else
                       setVisibility(self.showworkareas.icon6, false);
                   end
					
				   local workArea7 = object:getWorkAreaByIndex(7);

                   if workArea7 ~= nil and object:getIsWorkAreaActive(workArea7) == true then
                       setVisibility(self.showworkareas.icon7, true);
                   else
                       setVisibility(self.showworkareas.icon7, false);
                   end
	
				   local workArea8 = object:getWorkAreaByIndex(8);

                   if workArea8 ~= nil and object:getIsWorkAreaActive(workArea8) == true then
                       setVisibility(self.showworkareas.icon8, true);
                   else
                       setVisibility(self.showworkareas.icon8, false);
                   end
					
				   local workArea9 = object:getWorkAreaByIndex(9);

                   if workArea9 ~= nil and object:getIsWorkAreaActive(workArea9) == true then
                       setVisibility(self.showworkareas.icon9, true);
                   else
                       setVisibility(self.showworkareas.icon9, false);
                   end
				end;
	
				if object.getIsWorkAreaProcessing ~= nil then
				   local workArea1 = object:getWorkAreaByIndex(1);

                   if workArea1 ~= nil and object:getIsWorkAreaProcessing(workArea1) == true then
                       setVisibility(self.showworkareas.icon1b, true);
                   else
                       setVisibility(self.showworkareas.icon1b, false);
                   end
		
				   local workArea2 = object:getWorkAreaByIndex(2);

                   if workArea2 ~= nil and object:getIsWorkAreaProcessing(workArea2) == true then
                       setVisibility(self.showworkareas.icon2b, true);
                   else
                       setVisibility(self.showworkareas.icon2b, false);
                   end
					
				   local workArea3 = object:getWorkAreaByIndex(3);

                   if workArea3 ~= nil and object:getIsWorkAreaProcessing(workArea3) == true then
                       setVisibility(self.showworkareas.icon3b, true);
                   else
                       setVisibility(self.showworkareas.icon3b, false);
                   end
		
				   local workArea4 = object:getWorkAreaByIndex(4);

                   if workArea4 ~= nil and object:getIsWorkAreaProcessing(workArea4) == true then
                       setVisibility(self.showworkareas.icon4b, true);
                   else
                       setVisibility(self.showworkareas.icon4b, false);
                   end
					
				   local workArea5 = object:getWorkAreaByIndex(5);

                   if workArea5 ~= nil and object:getIsWorkAreaProcessing(workArea5) == true then
                       setVisibility(self.showworkareas.icon5b, true);
                   else
                       setVisibility(self.showworkareas.icon5b, false);
                   end
		
				   local workArea6 = object:getWorkAreaByIndex(6);

                   if workArea6 ~= nil and object:getIsWorkAreaProcessing(workArea6) == true then
                       setVisibility(self.showworkareas.icon6b, true);
                   else
                       setVisibility(self.showworkareas.icon6b, false);
                   end
					
				   local workArea7 = object:getWorkAreaByIndex(7);

                   if workArea7 ~= nil and object:getIsWorkAreaProcessing(workArea7) == true then
                       setVisibility(self.showworkareas.icon7b, true);
                   else
                       setVisibility(self.showworkareas.icon7b, false);
                   end
		
				   local workArea8 = object:getWorkAreaByIndex(8);

                   if workArea8 ~= nil and object:getIsWorkAreaProcessing(workArea8) == true then
                       setVisibility(self.showworkareas.icon8b, true);
                   else
                       setVisibility(self.showworkareas.icon8b, false);
                   end
					
			       local workArea9 = object:getWorkAreaByIndex(9);

                   if workArea9 ~= nil and object:getIsWorkAreaProcessing(workArea9) == true then
                       setVisibility(self.showworkareas.icon9b, true);
                   else
                       setVisibility(self.showworkareas.icon9b, false);
                   end
				end;
			end;
		end;
	end;
end;

function ShowWorkAreas:onDelete()
end;

function ShowWorkAreas:onReadStream(streamId, connection)
end;

function ShowWorkAreas:onWriteStream(streamId, connection)
end;

function ShowWorkAreas:onDraw(isActiveForInput, isSelected)
end