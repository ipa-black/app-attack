package org.apache.ldap.common.berlib.asn1.decoder.delete;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.ldap.common.berlib.asn1.BufferUtils;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.DeleteRequest;
import org.apache.ldap.common.message.DeleteRequestImpl;
/* loaded from: classes3.dex */
public class DeleteRequestRule extends PrimitiveOctetStringRule {
    public DeleteRequestRule() {
        super(LdapTag.DEL_REQUEST);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        getDigester().push(new DeleteRequestImpl(getDigester().popInt()));
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        ((DeleteRequest) getDigester().pop()).setName(new String(BufferUtils.getArray((ByteBuffer) getDigester().pop())));
    }
}
