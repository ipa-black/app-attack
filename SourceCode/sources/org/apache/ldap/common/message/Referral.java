package org.apache.ldap.common.message;

import java.util.Collection;
import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public interface Referral extends Lockable {
    void addLdapUrl(String str);

    Collection getLdapUrls();

    void removeLdapUrl(String str);
}
