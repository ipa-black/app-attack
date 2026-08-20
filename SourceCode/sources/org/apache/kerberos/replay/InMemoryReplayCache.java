package org.apache.kerberos.replay;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class InMemoryReplayCache implements ReplayCache {
    private static final long TWO_WEEKS = 1209600000;
    private List list = new ArrayList();

    @Override // org.apache.kerberos.replay.ReplayCache
    public synchronized boolean isReplay(KerberosTime kerberosTime, KerberosPrincipal kerberosPrincipal) {
        ReplayCacheEntry replayCacheEntry = new ReplayCacheEntry(kerberosTime, kerberosPrincipal);
        for (ReplayCacheEntry replayCacheEntry2 : this.list) {
            if (replayCacheEntry2.equals(replayCacheEntry)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.kerberos.replay.ReplayCache
    public synchronized void save(KerberosTime kerberosTime, KerberosPrincipal kerberosPrincipal) {
        this.list.add(new ReplayCacheEntry(kerberosTime, kerberosPrincipal));
        purgeExpired();
    }

    private synchronized void purgeExpired() {
        KerberosTime kerberosTime = new KerberosTime(new Date().getTime() - TWO_WEEKS);
        for (ReplayCacheEntry replayCacheEntry : this.list) {
            if (replayCacheEntry.olderThan(kerberosTime)) {
                this.list.remove(replayCacheEntry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class ReplayCacheEntry {
        private KerberosPrincipal _clientPrincipal;
        private KerberosTime _clientTime;

        public ReplayCacheEntry(KerberosTime kerberosTime, KerberosPrincipal kerberosPrincipal) {
            this._clientTime = kerberosTime;
            this._clientPrincipal = kerberosPrincipal;
        }

        public boolean equals(ReplayCacheEntry replayCacheEntry) {
            return this._clientTime.equals(replayCacheEntry._clientTime) && this._clientPrincipal.equals(replayCacheEntry._clientPrincipal);
        }

        public boolean olderThan(KerberosTime kerberosTime) {
            return kerberosTime.greaterThan(this._clientTime);
        }
    }
}
