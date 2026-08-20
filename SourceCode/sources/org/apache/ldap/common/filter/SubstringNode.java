package org.apache.ldap.common.filter;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.common.util.StringTools;
import org.apache.regexp.RE;
import org.apache.regexp.RESyntaxException;
/* loaded from: classes3.dex */
public class SubstringNode extends LeafNode {
    private final ArrayList m_any;
    private final String m_final;
    private final String m_initial;
    private transient RE m_regex;

    public SubstringNode(String str, String str2, String str3) {
        super(str, 2);
        this.m_regex = null;
        this.m_any = new ArrayList(2);
        this.m_final = str3;
        this.m_initial = str2;
    }

    public SubstringNode(ArrayList arrayList, String str, String str2, String str3) {
        super(str, 2);
        this.m_regex = null;
        this.m_any = arrayList;
        this.m_final = str3;
        this.m_initial = str2;
    }

    public final String getInitial() {
        return this.m_initial;
    }

    public final String getFinal() {
        return this.m_final;
    }

    public final ArrayList getAny() {
        return this.m_any;
    }

    public final RE getRegex(Normalizer normalizer) throws RESyntaxException, NamingException {
        RE re = this.m_regex;
        if (re != null) {
            return re;
        }
        if (this.m_any.size() > 0) {
            int size = this.m_any.size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = (String) normalizer.normalize(this.m_any.get(i));
            }
            String str = this.m_initial;
            String str2 = str != null ? (String) normalizer.normalize(str) : null;
            String str3 = this.m_final;
            return StringTools.getRegex(str2, strArr, str3 != null ? (String) normalizer.normalize(str3) : null);
        }
        String str4 = this.m_initial;
        String str5 = str4 != null ? (String) normalizer.normalize(str4) : null;
        String str6 = this.m_final;
        return StringTools.getRegex(str5, null, str6 != null ? (String) normalizer.normalize(str6) : null);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        printToBuffer(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void printToBuffer(StringBuffer stringBuffer) {
        stringBuffer.append('(').append(getAttribute()).append('=');
        String str = this.m_initial;
        if (str != null) {
            stringBuffer.append(str).append('*');
        } else {
            stringBuffer.append('*');
        }
        for (int i = 0; i < this.m_any.size(); i++) {
            stringBuffer.append((String) this.m_any.get(i));
            stringBuffer.append('*');
        }
        String str2 = this.m_final;
        if (str2 != null) {
            stringBuffer.append(str2);
        }
        stringBuffer.append(')');
        if (getAnnotations() != null && getAnnotations().containsKey(NewHtcHomeBadger.COUNT)) {
            stringBuffer.append('[');
            stringBuffer.append(getAnnotations().get(NewHtcHomeBadger.COUNT).toString());
            stringBuffer.append("] ");
            return;
        }
        stringBuffer.append(' ');
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void accept(FilterVisitor filterVisitor) {
        if (filterVisitor.canVisit(this)) {
            filterVisitor.visit(this);
        }
    }
}
