package jdbm.helper;

import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes5.dex */
public final class StringComparator implements Comparator, Serializable {
    static final long serialVersionUID = 1;

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 == null) {
                throw new IllegalArgumentException("Argument 'obj2' is null");
            }
            return ((String) obj).compareTo((String) obj2);
        }
        throw new IllegalArgumentException("Argument 'obj1' is null");
    }
}
