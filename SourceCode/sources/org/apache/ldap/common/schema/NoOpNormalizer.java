package org.apache.ldap.common.schema;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class NoOpNormalizer implements Normalizer, Serializable {
    @Override // org.apache.ldap.common.schema.Normalizer
    public Object normalize(Object obj) {
        return obj;
    }
}
