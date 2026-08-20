package org.apache.ldap.common.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.util.StringTools;
/* loaded from: classes3.dex */
public class DeepTrimNormalizer implements Normalizer {
    @Override // org.apache.ldap.common.schema.Normalizer
    public Object normalize(Object obj) throws NamingException {
        return StringTools.deepTrim(obj.toString());
    }
}
