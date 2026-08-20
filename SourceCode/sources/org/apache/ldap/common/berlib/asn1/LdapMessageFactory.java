package org.apache.ldap.common.berlib.asn1;

import org.apache.ldap.common.message.AbandonRequestImpl;
import org.apache.ldap.common.message.AddRequestImpl;
import org.apache.ldap.common.message.AddResponseImpl;
import org.apache.ldap.common.message.BindRequestImpl;
import org.apache.ldap.common.message.BindResponseImpl;
import org.apache.ldap.common.message.CompareRequestImpl;
import org.apache.ldap.common.message.CompareResponseImpl;
import org.apache.ldap.common.message.DeleteRequestImpl;
import org.apache.ldap.common.message.DeleteResponseImpl;
import org.apache.ldap.common.message.ExtendedRequestImpl;
import org.apache.ldap.common.message.ExtendedResponseImpl;
import org.apache.ldap.common.message.Message;
import org.apache.ldap.common.message.ModifyDnRequestImpl;
import org.apache.ldap.common.message.ModifyDnResponseImpl;
import org.apache.ldap.common.message.ModifyRequestImpl;
import org.apache.ldap.common.message.ModifyResponseImpl;
import org.apache.ldap.common.message.SearchRequestImpl;
import org.apache.ldap.common.message.SearchResponseDoneImpl;
import org.apache.ldap.common.message.SearchResponseEntryImpl;
import org.apache.ldap.common.message.SearchResponseReferenceImpl;
import org.apache.ldap.common.message.UnbindRequestImpl;
/* loaded from: classes3.dex */
public final class LdapMessageFactory {
    public static final Message create(LdapTag ldapTag, int i) {
        return create(ldapTag.getTagId(), i);
    }

    public static final Message create(int i, int i2) {
        if (i != 19) {
            if (i != 23) {
                if (i != 24) {
                    switch (i) {
                        case 0:
                            return new BindRequestImpl(i2);
                        case 1:
                            return new BindResponseImpl(i2);
                        case 2:
                            return new UnbindRequestImpl(i2);
                        case 3:
                            return new SearchRequestImpl(i2);
                        case 4:
                            return new SearchResponseEntryImpl(i2);
                        case 5:
                            return new SearchResponseDoneImpl(i2);
                        case 6:
                            return new ModifyRequestImpl(i2);
                        case 7:
                            return new ModifyResponseImpl(i2);
                        case 8:
                            return new AddRequestImpl(i2);
                        case 9:
                            return new AddResponseImpl(i2);
                        case 10:
                            return new DeleteRequestImpl(i2);
                        case 11:
                            return new DeleteResponseImpl(i2);
                        case 12:
                            return new ModifyDnRequestImpl(i2);
                        case 13:
                            return new ModifyDnResponseImpl(i2);
                        case 14:
                            return new CompareRequestImpl(i2);
                        case 15:
                            return new CompareResponseImpl(i2);
                        case 16:
                            return new AbandonRequestImpl(i2);
                        default:
                            throw new IllegalStateException("shouldn't happen - if it does then we have issues");
                    }
                }
                return new ExtendedResponseImpl(i2);
            }
            return new ExtendedRequestImpl(i2);
        }
        return new SearchResponseReferenceImpl(i2);
    }
}
