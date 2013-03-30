// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ad.uda.pfc.web.converter;

import ad.uda.pfc.domain.TipusSensor;
import ad.uda.pfc.web.converter.TipusSensorConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect TipusSensorConverter_Roo_Converter {
    
    declare parents: TipusSensorConverter implements Converter;
    
    declare @type: TipusSensorConverter: @FacesConverter("ad.uda.pfc.web.converter.TipusSensorConverter");
    
    public Object TipusSensorConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Integer id = Integer.parseInt(value);
        return TipusSensor.findTipusSensor(id);
    }
    
    public String TipusSensorConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof TipusSensor ? ((TipusSensor) value).getId().toString() : "";
    }
    
}