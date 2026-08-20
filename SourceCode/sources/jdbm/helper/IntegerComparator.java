package jdbm.helper;

import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes5.dex */
public final class IntegerComparator implements Comparator, Serializable {
    static final long serialVersionUID = 1;

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj == obj2) {
            return 0;
        }
        if (obj != null) {
            if (obj2 == null) {
                throw new IllegalArgumentException("Argument 'obj2' is null");
            }
            int intValue = ((Integer) obj).intValue();
            int intValue2 = ((Integer) obj2).intValue();
            if (intValue == intValue2) {
                return 0;
            }
            return intValue < intValue2 ? -1 : 1;
        }
        throw new IllegalArgumentException("Argument 'obj1' is null");
    }
}
