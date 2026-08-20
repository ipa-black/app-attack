package org.apache.ldap.common.berlib.asn1.decoder.modify;

import java.nio.ByteBuffer;
import javax.naming.directory.ModificationItem;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes3.dex */
public class ModifyRequestAttributeValueRule extends PrimitiveOctetStringRule {
    public ModifyRequestAttributeValueRule() {
        super(UniversalTag.OCTET_STRING);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        if (isConstructed()) {
            return;
        }
        ByteBuffer drain = getAccumulator().drain(0);
        ModificationItem modificationItem = (ModificationItem) getDigester().peek();
        if (drain.limit() == drain.capacity() && drain.hasArray()) {
            bArr = drain.array();
        } else {
            byte[] bArr2 = new byte[drain.remaining()];
            drain.get(bArr2);
            bArr = bArr2;
        }
        modificationItem.getAttribute().add(new String(bArr));
        setConstructed(false);
    }
}
