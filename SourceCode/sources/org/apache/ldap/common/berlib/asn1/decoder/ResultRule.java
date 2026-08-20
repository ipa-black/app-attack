package org.apache.ldap.common.berlib.asn1.decoder;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.BufferUtils;
import org.apache.ldap.common.message.LdapResult;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.message.ResultResponse;
/* loaded from: classes3.dex */
public class ResultRule extends AbstractRule {
    private LdapResult result = null;

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        this.result = new LdapResultImpl((ResultResponse) getDigester().peek());
        getDigester().push(this.result);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        this.result.setErrorMessage(new String(BufferUtils.getArray((ByteBuffer) getDigester().pop())));
        this.result.setMatchedDn(new String(BufferUtils.getArray((ByteBuffer) getDigester().pop())));
        this.result.setResultCode(ResultCodeEnum.getResultCodeEnum(getDigester().popInt()));
        getDigester().pop();
    }
}
