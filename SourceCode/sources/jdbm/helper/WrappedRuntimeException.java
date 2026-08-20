package jdbm.helper;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes5.dex */
public class WrappedRuntimeException extends RuntimeException {
    private final Exception _except;

    public WrappedRuntimeException(String str, Exception exc) {
        super(str == null ? "No message available" : str);
        Exception exc2;
        if ((exc instanceof WrappedRuntimeException) && (exc2 = ((WrappedRuntimeException) exc)._except) != null) {
            this._except = exc2;
        } else {
            this._except = exc;
        }
    }

    public WrappedRuntimeException(Exception exc) {
        super((exc == null || exc.getMessage() == null) ? "No message available" : exc.getMessage());
        Exception exc2;
        if ((exc instanceof WrappedRuntimeException) && (exc2 = ((WrappedRuntimeException) exc)._except) != null) {
            this._except = exc2;
        } else {
            this._except = exc;
        }
    }

    public Exception getException() {
        return this._except;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        Exception exc = this._except;
        if (exc == null) {
            super.printStackTrace();
        } else {
            exc.printStackTrace();
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        Exception exc = this._except;
        if (exc == null) {
            super.printStackTrace(printStream);
        } else {
            exc.printStackTrace(printStream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        Exception exc = this._except;
        if (exc == null) {
            super.printStackTrace(printWriter);
        } else {
            exc.printStackTrace(printWriter);
        }
    }
}
