package org.apache.ldap.common.schema;

import javax.naming.NamingException;
import javax.naming.directory.InvalidAttributeValueException;
import org.apache.oro.text.perl.Perl5Util;
/* loaded from: classes3.dex */
public class RegexSyntaxChecker implements SyntaxChecker {
    private final String[] expressions;
    private final String oid;
    private final Perl5Util perl = new Perl5Util();

    public RegexSyntaxChecker(String str, String[] strArr) {
        this.expressions = strArr;
        this.oid = str;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public String getSyntaxOid() {
        return this.oid;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public boolean isValidSyntax(Object obj) {
        String str = obj instanceof String ? (String) obj : null;
        int i = 0;
        boolean z = true;
        while (true) {
            String[] strArr = this.expressions;
            if (i >= strArr.length) {
                break;
            }
            z = z && this.perl.match(strArr[i], str);
            if (!z) {
                break;
            }
            i++;
        }
        return z;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public void assertSyntax(Object obj) throws NamingException {
        if (!isValidSyntax(obj)) {
            throw new InvalidAttributeValueException(new StringBuffer().append(obj).append(" does not conform to the syntax specified by ").append(this.oid).toString());
        }
    }
}
