package antlr;
/* loaded from: classes.dex */
public class DefaultFileLineFormatter extends FileLineFormatter {
    @Override // antlr.FileLineFormatter
    public String getFormatString(String str, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null) {
            stringBuffer.append(new StringBuffer().append(str).append(":").toString());
        }
        if (i != -1) {
            if (str == null) {
                stringBuffer.append("line ");
            }
            stringBuffer.append(i);
            if (i2 != -1) {
                stringBuffer.append(new StringBuffer(":").append(i2).toString());
            }
            stringBuffer.append(":");
        }
        stringBuffer.append(" ");
        return stringBuffer.toString();
    }
}
