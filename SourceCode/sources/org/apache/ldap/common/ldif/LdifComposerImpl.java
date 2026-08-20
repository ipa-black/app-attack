package org.apache.ldap.common.ldif;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Collection;
import java.util.Iterator;
import org.apache.ldap.common.util.Base64;
import org.apache.ldap.common.util.MultiMap;
/* loaded from: classes3.dex */
public class LdifComposerImpl implements LdifComposer {
    @Override // org.apache.ldap.common.ldif.LdifComposer
    public String compose(MultiMap multiMap) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        for (String str : multiMap.keySet()) {
            Collection collection = (Collection) multiMap.get(str);
            Iterator it = collection.iterator();
            if (!collection.isEmpty()) {
                if (collection.size() == 1) {
                    printWriter.print(str);
                    printWriter.print(':');
                    Object next = it.next();
                    if (next.getClass().isArray()) {
                        printWriter.print(": ");
                        printWriter.println(base64encode((byte[]) next));
                    } else {
                        printWriter.print(' ');
                        printWriter.println(next);
                    }
                } else {
                    while (it.hasNext()) {
                        printWriter.print(str);
                        printWriter.print(':');
                        Object next2 = it.next();
                        if (next2.getClass().isArray()) {
                            printWriter.print(": ");
                            printWriter.println(base64encode((byte[]) next2));
                        } else {
                            printWriter.print(' ');
                            printWriter.println(next2);
                        }
                    }
                }
            }
        }
        return stringWriter.getBuffer().toString();
    }

    public char[] base64encode(byte[] bArr) {
        return Base64.encode(bArr);
    }
}
