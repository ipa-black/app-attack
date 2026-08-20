package jdbm.htree;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
/* loaded from: classes5.dex */
final class HashBucket extends HashNode implements Externalizable {
    public static final int OVERFLOW_SIZE = 8;
    static final long serialVersionUID = 1;
    private int _depth;
    private ArrayList _keys;
    private ArrayList _values;

    public HashBucket() {
    }

    public HashBucket(int i) {
        if (i > 4) {
            throw new IllegalArgumentException(new StringBuffer("Cannot create bucket with depth > MAX_DEPTH+1. Depth=").append(i).toString());
        }
        this._depth = i;
        this._keys = new ArrayList(8);
        this._values = new ArrayList(8);
    }

    public int getElementCount() {
        return this._keys.size();
    }

    public boolean isLeaf() {
        return this._depth > 3;
    }

    public boolean hasRoom() {
        return isLeaf() || this._keys.size() < 8;
    }

    public Object addElement(Object obj, Object obj2) {
        int indexOf = this._keys.indexOf(obj);
        if (indexOf != -1) {
            Object obj3 = this._values.get(indexOf);
            this._values.set(indexOf, obj2);
            return obj3;
        }
        this._keys.add(obj);
        this._values.add(obj2);
        return null;
    }

    public Object removeElement(Object obj) {
        int indexOf = this._keys.indexOf(obj);
        if (indexOf != -1) {
            Object obj2 = this._values.get(indexOf);
            this._keys.remove(indexOf);
            this._values.remove(indexOf);
            return obj2;
        }
        return null;
    }

    public Object getValue(Object obj) {
        int indexOf = this._keys.indexOf(obj);
        if (indexOf != -1) {
            return this._values.get(indexOf);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList getKeys() {
        return this._keys;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList getValues() {
        return this._values;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this._depth);
        int size = this._keys.size();
        objectOutput.writeInt(size);
        for (int i = 0; i < size; i++) {
            objectOutput.writeObject(this._keys.get(i));
        }
        for (int i2 = 0; i2 < size; i2++) {
            objectOutput.writeObject(this._values.get(i2));
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._depth = objectInput.readInt();
        int readInt = objectInput.readInt();
        int max = Math.max(readInt, 8);
        this._keys = new ArrayList(max);
        this._values = new ArrayList(max);
        for (int i = 0; i < readInt; i++) {
            this._keys.add(objectInput.readObject());
        }
        for (int i2 = 0; i2 < readInt; i2++) {
            this._values.add(objectInput.readObject());
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("HashBucket {depth=");
        stringBuffer.append(this._depth);
        stringBuffer.append(", keys=");
        stringBuffer.append(this._keys);
        stringBuffer.append(", values=");
        stringBuffer.append(this._values);
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
