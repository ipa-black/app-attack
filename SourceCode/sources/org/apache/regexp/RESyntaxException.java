package org.apache.regexp;
/* loaded from: classes3.dex */
public class RESyntaxException extends Exception {
    public RESyntaxException(String str) {
        super(new StringBuffer("Syntax error: ").append(str).toString());
    }
}
