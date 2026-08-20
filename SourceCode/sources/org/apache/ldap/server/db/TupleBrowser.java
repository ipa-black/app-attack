package org.apache.ldap.server.db;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface TupleBrowser {
    boolean getNext(Tuple tuple) throws NamingException;

    boolean getPrevious(Tuple tuple) throws NamingException;
}
