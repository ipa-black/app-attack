package jdbm.helper;
/* loaded from: classes5.dex */
public class CacheEvictionException extends Exception {
    protected Exception _nested;

    public CacheEvictionException(Exception exc) {
        this._nested = exc;
    }

    public Exception getNestedException() {
        return this._nested;
    }
}
