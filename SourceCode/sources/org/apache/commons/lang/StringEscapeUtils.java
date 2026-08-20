package org.apache.commons.lang;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang.exception.NestableRuntimeException;
/* loaded from: classes5.dex */
public class StringEscapeUtils {
    public static String escapeJava(String str) {
        return escapeJavaStyleString(str, false);
    }

    public static void escapeJava(Writer writer, String str) throws IOException {
        escapeJavaStyleString(writer, str, false);
    }

    public static String escapeJavaScript(String str) {
        return escapeJavaStyleString(str, true);
    }

    public static void escapeJavaScript(Writer writer, String str) throws IOException {
        escapeJavaStyleString(writer, str, true);
    }

    private static String escapeJavaStyleString(String str, boolean z) {
        if (str == null) {
            return null;
        }
        try {
            StringPrintWriter stringPrintWriter = new StringPrintWriter(str.length() * 2);
            escapeJavaStyleString(stringPrintWriter, str, z);
            return stringPrintWriter.getString();
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static void escapeJavaStyleString(Writer writer, String str, boolean z) throws IOException {
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
                writer.write(new StringBuffer("\\u").append(hex(charAt)).toString());
            } else if (charAt > 255) {
                writer.write(new StringBuffer("\\u0").append(hex(charAt)).toString());
            } else if (charAt > 127) {
                writer.write(new StringBuffer("\\u00").append(hex(charAt)).toString());
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
                            writer.write(new StringBuffer("\\u00").append(hex(charAt)).toString());
                            continue;
                        } else {
                            writer.write(new StringBuffer("\\u000").append(hex(charAt)).toString());
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
            } else if (charAt == '\\') {
                writer.write(92);
                writer.write(92);
            } else {
                writer.write(charAt);
            }
        }
    }

    private static String hex(char c2) {
        return Integer.toHexString(c2).toUpperCase();
    }

    public static String unescapeJava(String str) {
        if (str == null) {
            return null;
        }
        try {
            StringPrintWriter stringPrintWriter = new StringPrintWriter(str.length());
            unescapeJava(stringPrintWriter, str);
            return stringPrintWriter.getString();
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void unescapeJava(Writer writer, String str) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("The Writer must not be null");
        }
        if (str == null) {
            return;
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(4);
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (z2) {
                stringBuffer.append(charAt);
                if (stringBuffer.length() == 4) {
                    try {
                        writer.write((char) Integer.parseInt(stringBuffer.toString(), 16));
                        stringBuffer.setLength(0);
                        z = false;
                        z2 = false;
                    } catch (NumberFormatException e2) {
                        throw new NestableRuntimeException(new StringBuffer("Unable to parse unicode value: ").append((Object) stringBuffer).toString(), e2);
                    }
                } else {
                    continue;
                }
            } else if (z) {
                if (charAt == '\"') {
                    writer.write(34);
                } else if (charAt == '\'') {
                    writer.write(39);
                } else if (charAt == '\\') {
                    writer.write(92);
                } else if (charAt == 'b') {
                    writer.write(8);
                } else if (charAt == 'f') {
                    writer.write(12);
                } else if (charAt == 'n') {
                    writer.write(10);
                } else if (charAt == 'r') {
                    writer.write(13);
                } else if (charAt == 't') {
                    writer.write(9);
                } else if (charAt != 'u') {
                    writer.write(charAt);
                } else {
                    z = false;
                    z2 = true;
                }
                z = false;
            } else if (charAt == '\\') {
                z = true;
            } else {
                writer.write(charAt);
            }
        }
        if (z) {
            writer.write(92);
        }
    }

    public static String unescapeJavaScript(String str) {
        return unescapeJava(str);
    }

    public static void unescapeJavaScript(Writer writer, String str) throws IOException {
        unescapeJava(writer, str);
    }

    public static String escapeHtml(String str) {
        if (str == null) {
            return null;
        }
        return Entities.HTML40.escape(str);
    }

    public static String unescapeHtml(String str) {
        if (str == null) {
            return null;
        }
        return Entities.HTML40.unescape(str);
    }

    public static String escapeXml(String str) {
        if (str == null) {
            return null;
        }
        return Entities.XML.escape(str);
    }

    public static String unescapeXml(String str) {
        if (str == null) {
            return null;
        }
        return Entities.XML.unescape(str);
    }

    public static String escapeSql(String str) {
        if (str == null) {
            return null;
        }
        return StringUtils.replace(str, "'", "''");
    }
}
