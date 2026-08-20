package jdbm.helper;
/* loaded from: classes5.dex */
public class IterationException extends WrappedRuntimeException {
    public IterationException(String str, Exception exc) {
        super(str, exc);
    }

    public IterationException(String str) {
        super(str, null);
    }

    public IterationException(Exception exc) {
        super(exc);
    }
}
