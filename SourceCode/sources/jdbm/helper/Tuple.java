package jdbm.helper;
/* loaded from: classes5.dex */
public final class Tuple {
    private Object _key;
    private Object _value;

    public Tuple() {
    }

    public Tuple(Object obj, Object obj2) {
        this._key = obj;
        this._value = obj2;
    }

    public Object getKey() {
        return this._key;
    }

    public void setKey(Object obj) {
        this._key = obj;
    }

    public Object getValue() {
        return this._value;
    }

    public void setValue(Object obj) {
        this._value = obj;
    }
}
