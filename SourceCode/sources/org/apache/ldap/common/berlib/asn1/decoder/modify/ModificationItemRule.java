package org.apache.ldap.common.berlib.asn1.decoder.modify;

import java.nio.ByteBuffer;
import javax.naming.directory.ModificationItem;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.LockableAttributeImpl;
import org.apache.ldap.common.message.ModifyRequest;
/* loaded from: classes3.dex */
public class ModificationItemRule extends PrimitiveOctetStringRule {
    public ModificationItemRule() {
        super(UniversalTag.OCTET_STRING);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        if (isConstructed()) {
            return;
        }
        ByteBuffer drain = getAccumulator().drain(0);
        if (drain.limit() == drain.capacity() && drain.hasArray()) {
            bArr = drain.array();
        } else {
            byte[] bArr2 = new byte[drain.remaining()];
            drain.get(bArr2);
            bArr = bArr2;
        }
        int popInt = getDigester().popInt();
        int i = 1;
        if (popInt != 0) {
            if (popInt != 1) {
                i = 2;
                if (popInt != 2) {
                    throw new IllegalStateException(new StringBuffer("Expecting 0, 1, 2 int value for add, delete, or replace operation on entry attribute but got a ").append(popInt).toString());
                }
            } else {
                i = 3;
            }
        }
        ModificationItem modificationItem = new ModificationItem(i, new LockableAttributeImpl(new String(bArr)));
        ((ModifyRequest) getDigester().peek()).addModification(modificationItem);
        getDigester().push(modificationItem);
        setConstructed(false);
    }
}
