package org.altbeacon.beacon;

import java.util.Collection;
/* loaded from: classes5.dex */
public interface RangeNotifier {
    void didRangeBeaconsInRegion(Collection<Beacon> collection, Region region);
}
