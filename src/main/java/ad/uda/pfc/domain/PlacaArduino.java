package ad.uda.pfc.domain;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "placa_arduino", schema = "pfc_schema")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "pinArduinoes" })
public class PlacaArduino {
}