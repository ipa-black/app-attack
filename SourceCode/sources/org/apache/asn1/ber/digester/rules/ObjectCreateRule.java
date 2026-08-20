package org.apache.asn1.ber.digester.rules;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.asn1.ber.digester.BERDigester;
import org.apache.commons.lang.exception.NestableRuntimeException;
/* loaded from: classes5.dex */
public class ObjectCreateRule extends AbstractRule {
    private final Class clazz;

    public ObjectCreateRule(BERDigester bERDigester, Class cls) {
        this.clazz = cls;
        setDigester(bERDigester);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        try {
            getDigester().push(this.clazz.newInstance());
        } catch (IllegalAccessException e2) {
            throw new NestableRuntimeException(e2);
        } catch (InstantiationException e3) {
            throw new NestableRuntimeException(e3);
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        getDigester().pop();
    }
}
