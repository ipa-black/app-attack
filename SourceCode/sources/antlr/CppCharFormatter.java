package antlr;
/* loaded from: classes.dex */
class CppCharFormatter implements CharFormatter {
    @Override // antlr.CharFormatter
    public String escapeChar(int i, boolean z) {
        if (i != 9) {
            if (i != 10) {
                if (i != 13) {
                    if (i == 34) {
                        return z ? "\"" : "\\\"";
                    } else if (i == 39) {
                        return z ? "\\'" : "'";
                    } else if (i != 92) {
                        if (i < 32 || i > 126) {
                            if (i > 255) {
                                return new StringBuffer("\\u").append(Integer.toString(i, 16)).toString();
                            }
                            return new StringBuffer("\\").append(Integer.toString(i, 8)).toString();
                        }
                        return String.valueOf((char) i);
                    } else {
                        return "\\\\";
                    }
                }
                return "\\r";
            }
            return "\\n";
        }
        return "\\t";
    }

    @Override // antlr.CharFormatter
    public String escapeString(String str) {
        String str2 = new String();
        for (int i = 0; i < str.length(); i++) {
            str2 = new StringBuffer().append(str2).append(escapeChar(str.charAt(i), false)).toString();
        }
        return str2;
    }

    @Override // antlr.CharFormatter
    public String literalChar(int i) {
        return new StringBuffer("static_cast<unsigned char>('").append(escapeChar(i, true)).append("')").toString();
    }

    @Override // antlr.CharFormatter
    public String literalString(String str) {
        return new StringBuffer("\"").append(escapeString(str)).append("\"").toString();
    }
}
