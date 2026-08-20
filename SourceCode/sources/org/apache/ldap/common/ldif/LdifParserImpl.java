package org.apache.ldap.common.ldif;

import org.apache.ldap.common.util.Base64;
/* loaded from: classes3.dex */
public class LdifParserImpl implements LdifParser {
    public byte[] base64decode(String str) {
        return Base64.decode(str.toCharArray());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0088, code lost:
        throw new org.apache.ldap.common.exception.LdapNamingException(new java.lang.StringBuffer().append("Line ").append(0).append(" [").append(r3).append("] does not correspond to an LDIF entry ").append("attribute value pair.\n{").append(r11).append("}").toString(), org.apache.ldap.common.message.ResultCodeEnum.OTHER);
     */
    @Override // org.apache.ldap.common.ldif.LdifParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parse(javax.naming.directory.Attributes r10, java.lang.String r11) throws javax.naming.NamingException {
        /*
            r9 = this;
            java.io.StringReader r0 = new java.io.StringReader
            r0.<init>(r11)
            java.io.BufferedReader r1 = new java.io.BufferedReader
            r1.<init>(r0)
            r0 = 0
        Lb:
            r2 = r0
        Lc:
            java.lang.String r3 = r1.readLine()     // Catch: java.io.IOException -> L8a
            if (r3 == 0) goto L89
            r4 = 58
            int r5 = r3.indexOf(r4)     // Catch: java.io.IOException -> L8a
            r6 = -1
            if (r5 == r6) goto L4e
            java.lang.String r6 = r3.substring(r0, r5)     // Catch: java.io.IOException -> L8a
            java.lang.String r6 = r6.trim()     // Catch: java.io.IOException -> L8a
            int r5 = r5 + 1
            char r7 = r3.charAt(r5)     // Catch: java.io.IOException -> L8a
            r8 = 1
            if (r7 != r4) goto L2d
            r2 = r8
        L2d:
            int r5 = r5 + r8
            char r4 = r3.charAt(r5)     // Catch: java.lang.StringIndexOutOfBoundsException -> L3c java.io.IOException -> L8a
            r7 = 32
            if (r4 != r7) goto L37
            goto L2d
        L37:
            java.lang.String r3 = r3.substring(r5)     // Catch: java.lang.StringIndexOutOfBoundsException -> L3c java.io.IOException -> L8a
            goto L3e
        L3c:
            java.lang.String r3 = ""
        L3e:
            if (r2 == 0) goto L4a
            if (r3 == 0) goto L4a
            byte[] r2 = r9.base64decode(r3)     // Catch: java.io.IOException -> L8a
            r10.put(r6, r2)     // Catch: java.io.IOException -> L8a
            goto Lb
        L4a:
            r10.put(r6, r3)     // Catch: java.io.IOException -> L8a
            goto Lc
        L4e:
            org.apache.ldap.common.exception.LdapNamingException r10 = new org.apache.ldap.common.exception.LdapNamingException     // Catch: java.io.IOException -> L8a
            java.lang.StringBuffer r1 = new java.lang.StringBuffer     // Catch: java.io.IOException -> L8a
            r1.<init>()     // Catch: java.io.IOException -> L8a
            java.lang.String r2 = "Line "
            java.lang.StringBuffer r1 = r1.append(r2)     // Catch: java.io.IOException -> L8a
            java.lang.StringBuffer r0 = r1.append(r0)     // Catch: java.io.IOException -> L8a
            java.lang.String r1 = " ["
            java.lang.StringBuffer r0 = r0.append(r1)     // Catch: java.io.IOException -> L8a
            java.lang.StringBuffer r0 = r0.append(r3)     // Catch: java.io.IOException -> L8a
            java.lang.String r1 = "] does not correspond to an LDIF entry "
            java.lang.StringBuffer r0 = r0.append(r1)     // Catch: java.io.IOException -> L8a
            java.lang.String r1 = "attribute value pair.\n{"
            java.lang.StringBuffer r0 = r0.append(r1)     // Catch: java.io.IOException -> L8a
            java.lang.StringBuffer r11 = r0.append(r11)     // Catch: java.io.IOException -> L8a
            java.lang.String r0 = "}"
            java.lang.StringBuffer r11 = r11.append(r0)     // Catch: java.io.IOException -> L8a
            java.lang.String r11 = r11.toString()     // Catch: java.io.IOException -> L8a
            org.apache.ldap.common.message.ResultCodeEnum r0 = org.apache.ldap.common.message.ResultCodeEnum.OTHER     // Catch: java.io.IOException -> L8a
            r10.<init>(r11, r0)     // Catch: java.io.IOException -> L8a
            throw r10     // Catch: java.io.IOException -> L8a
        L89:
            return
        L8a:
            org.apache.ldap.common.exception.LdapNamingException r10 = new org.apache.ldap.common.exception.LdapNamingException
            org.apache.ldap.common.message.ResultCodeEnum r11 = org.apache.ldap.common.message.ResultCodeEnum.OTHER
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.common.ldif.LdifParserImpl.parse(javax.naming.directory.Attributes, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        if (r9 == null) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
        if (r4.getModType().equalsIgnoreCase("modify") == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r11 == (-1)) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        r4.addModificationItem(r11, r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        throw new org.apache.ldap.common.exception.LdapNamingException("A modification type must be supplied for a change type of modify", org.apache.ldap.common.message.ResultCodeEnum.OTHER);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
        if (r10 == 0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
        if (r3 == null) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        r4.addAttribute(r2, r3);
     */
    @Override // org.apache.ldap.common.ldif.LdifParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.ldap.common.ldif.LdifEntry parse(java.lang.String r18) throws javax.naming.NamingException {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.common.ldif.LdifParserImpl.parse(java.lang.String):org.apache.ldap.common.ldif.LdifEntry");
    }
}
