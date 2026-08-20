package org.apache.ldap.common.schema;

import org.apache.oro.text.perl.Perl5Util;
/* loaded from: classes3.dex */
public class RegexNormalizer implements Normalizer {
    private final Perl5Util perl = new Perl5Util();
    private String[] regexes;

    public RegexNormalizer(String[] strArr) {
        this.regexes = strArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    @Override // org.apache.ldap.common.schema.Normalizer
    public Object normalize(Object obj) {
        if (obj instanceof String) {
            int i = 0;
            obj = (String) obj;
            while (true) {
                String[] strArr = this.regexes;
                if (i >= strArr.length) {
                    break;
                }
                i++;
                obj = this.perl.substitute(strArr[i], obj);
            }
        }
        return obj;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("RegexNormalizer( ");
        int i = 0;
        while (true) {
            String[] strArr = this.regexes;
            if (i < strArr.length) {
                stringBuffer.append(strArr[i]);
                if (i < this.regexes.length - 1) {
                    stringBuffer.append(", ");
                }
                i++;
            } else {
                stringBuffer.append(" )");
                return stringBuffer.toString();
            }
        }
    }
}
