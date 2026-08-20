package antlr;
/* loaded from: classes.dex */
public abstract class FileLineFormatter {
    private static FileLineFormatter formatter = new DefaultFileLineFormatter();

    public abstract String getFormatString(String str, int i, int i2);

    public static FileLineFormatter getFormatter() {
        return formatter;
    }

    public static void setFormatter(FileLineFormatter fileLineFormatter) {
        formatter = fileLineFormatter;
    }
}
