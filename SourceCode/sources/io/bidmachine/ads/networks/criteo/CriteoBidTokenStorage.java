package io.bidmachine.ads.networks.criteo;

import com.criteo.publisher.Bid;
import io.bidmachine.NetworkAdUnit;
import java.util.Map;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class CriteoBidTokenStorage {
    static final Map<NetworkAdUnit, Bid> bidMap = new WeakHashMap();

    CriteoBidTokenStorage() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void storeBid(NetworkAdUnit networkAdUnit, Bid bid) {
        synchronized (CriteoBidTokenStorage.class) {
            bidMap.put(networkAdUnit, bid);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized Bid takeBid(NetworkAdUnit networkAdUnit) {
        Bid remove;
        synchronized (CriteoBidTokenStorage.class) {
            remove = bidMap.remove(networkAdUnit);
        }
        return remove;
    }
}
