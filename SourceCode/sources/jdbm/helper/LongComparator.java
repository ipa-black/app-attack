package jdbm.helper;

import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes5.dex */
public final class LongComparator implements Comparator, Serializable {
    static final long serialVersionUID = 1;

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 == null) {
                throw new IllegalArgumentException("Argument 'obj2' is null");
            }
            int i = (((Long) obj).longValue() > ((Long) obj2).longValue() ? 1 : (((Long) obj).longValue() == ((Long) obj2).longValue() ? 0 : -1));
            if (i > 0) {
                return 1;
            }
            return i == 0 ? 0 : -1;
        }
        throw new IllegalArgumentException("Argument 'obj1' is null");
    }
}
