package com.appsgeyser.multiTabApp.inline;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;
/* loaded from: classes2.dex */
public class StringEscapeUtils {
    private static final char CSV_DELIMITER = ',';
    private static final char CSV_QUOTE = '\"';
    private static final String CSV_QUOTE_STR = String.valueOf('\"');

    public static String escapeJava(String str) {
        try {
            return escapeJavaStyleString(str, false, false);
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static void escapeJava(Writer writer, String str) throws IOException {
        escapeJavaStyleString(writer, str, false, false);
    }

    public static String escapeJavaScript(String str) {
        try {
            return escapeJavaStyleString(str, true, true);
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static void escapeJavaScript(Writer writer, String str) throws IOException {
        escapeJavaStyleString(writer, str, true, true);
    }

    private static String escapeJavaStyleString(String str, boolean z, boolean z2) throws Exception {
        if (str == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(str.length() * 2);
            escapeJavaStyleString(stringWriter, str, z, z2);
            return stringWriter.toString();
        } catch (IOException unused) {
            throw new Exception("escapeJavaStyleString error!");
        }
    }

    private static void escapeJavaStyleString(Writer writer, String str, boolean z, boolean z2) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("The Writer must not be null");
        }
        if (str == null) {
            return;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt > 4095) {
                writer.write("\\u" + hex(charAt));
            } else if (charAt > 255) {
                writer.write("\\u0" + hex(charAt));
            } else if (charAt > 127) {
                writer.write("\\u00" + hex(charAt));
            } else if (charAt < ' ') {
                switch (charAt) {
                    case '\b':
                        writer.write(92);
                        writer.write(98);
                        continue;
                    case '\t':
                        writer.write(92);
                        writer.write(116);
                        continue;
                    case '\n':
                        writer.write(92);
                        writer.write(110);
                        continue;
                    case 11:
                    default:
                        if (charAt > 15) {
                            writer.write("\\u00" + hex(charAt));
                            continue;
                        } else {
                            writer.write("\\u000" + hex(charAt));
                            break;
                        }
                    case '\f':
                        writer.write(92);
                        writer.write(102);
                        continue;
                    case '\r':
                        writer.write(92);
                        writer.write(114);
                        continue;
                }
            } else if (charAt == '\"') {
                writer.write(92);
                writer.write(34);
            } else if (charAt == '\'') {
                if (z) {
                    writer.write(92);
                }
                writer.write(39);
            } else if (charAt == '/') {
                if (z2) {
                    writer.write(92);
                }
                writer.write(47);
            } else if (charAt == '\\') {
                writer.write(92);
                writer.write(92);
            } else {
                writer.write(charAt);
            }
        }
    }

    private static String hex(char c2) {
        return Integer.toHexString(c2).toUpperCase(Locale.ENGLISH);
    }
}
