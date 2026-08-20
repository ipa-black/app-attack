package org.apache.ldap.common.message;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.ldap.common.AbstractLockable;
import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public class ReferralImpl extends AbstractLockable implements Referral {
    private final HashSet urls;

    public ReferralImpl(Lockable lockable) {
        super(lockable, false);
        this.urls = new HashSet();
    }

    @Override // org.apache.ldap.common.message.Referral
    public Collection getLdapUrls() {
        return Collections.unmodifiableCollection(this.urls);
    }

    @Override // org.apache.ldap.common.message.Referral
    public void addLdapUrl(String str) {
        lockCheck("Atempt to add alternative url to locked Referral!");
        this.urls.add(str);
    }

    @Override // org.apache.ldap.common.message.Referral
    public void removeLdapUrl(String str) {
        lockCheck("Atempt to remove alternative url from locked Referral!");
        this.urls.remove(str);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Referral) {
            Collection ldapUrls = ((Referral) obj).getLdapUrls();
            if (ldapUrls.size() != this.urls.size()) {
                return false;
            }
            Iterator it = this.urls.iterator();
            while (it.hasNext()) {
                if (!ldapUrls.contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
