package org.apache.ldap.common.berlib.asn1.decoder.bind;

import java.nio.ByteBuffer;
import org.apache.ldap.common.berlib.asn1.BufferUtils;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.decoder.ResultResponseRule;
import org.apache.ldap.common.message.BindResponse;
/* loaded from: classes3.dex */
public class BindResponseRule extends ResultResponseRule {
    public BindResponseRule() {
        super(LdapTag.BIND_RESPONSE);
    }

    @Override // org.apache.ldap.common.berlib.asn1.decoder.ResultResponseRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        if (getDigester().getCount() == 0 || !(getDigester().peek() instanceof ByteBuffer)) {
            return;
        }
        ((BindResponse) getDigester().pop()).setServerSaslCreds(BufferUtils.getArray((ByteBuffer) getDigester().pop()));
    }
}
