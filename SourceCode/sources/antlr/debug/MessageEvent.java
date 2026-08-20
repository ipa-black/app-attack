package antlr.debug;
/* loaded from: classes.dex */
public class MessageEvent extends Event {
    public static int ERROR = 1;
    public static int WARNING;
    private String text;

    public MessageEvent(Object obj) {
        super(obj);
    }

    public MessageEvent(Object obj, int i, String str) {
        super(obj);
        setValues(i, str);
    }

    public String getText() {
        return this.text;
    }

    void setText(String str) {
        this.text = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i, String str) {
        super.setValues(i);
        setText(str);
    }

    @Override // java.util.EventObject
    public String toString() {
        return new StringBuffer("ParserMessageEvent [").append(getType() == WARNING ? "warning," : "error,").append(getText()).append("]").toString();
    }
}
