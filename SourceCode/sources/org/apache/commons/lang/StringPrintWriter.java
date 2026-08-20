package org.apache.commons.lang;

import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes5.dex */
class StringPrintWriter extends PrintWriter {
    public StringPrintWriter() {
        super(new StringWriter());
    }

    public StringPrintWriter(int i) {
        super(new StringWriter(i));
    }

    public String getString() {
        flush();
        return ((StringWriter) ((PrintWriter) this).out).toString();
    }
}
