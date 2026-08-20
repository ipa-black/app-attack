package org.apache.ldap.server.db.jdbm;

import java.io.IOException;
import javax.naming.NamingException;
import jdbm.helper.Tuple;
import org.apache.ldap.server.db.TupleBrowser;
/* loaded from: classes3.dex */
public class JdbmTupleBrowser implements TupleBrowser {
    private jdbm.helper.TupleBrowser jdbmBrowser;
    private Tuple jdbmTuple = new Tuple();

    public JdbmTupleBrowser(jdbm.helper.TupleBrowser tupleBrowser) {
        this.jdbmBrowser = tupleBrowser;
    }

    @Override // org.apache.ldap.server.db.TupleBrowser
    public boolean getNext(org.apache.ldap.server.db.Tuple tuple) throws NamingException {
        boolean next;
        synchronized (this.jdbmTuple) {
            try {
                try {
                    next = this.jdbmBrowser.getNext(this.jdbmTuple);
                    if (next) {
                        tuple.setKey(this.jdbmTuple.getKey());
                        tuple.setValue(this.jdbmTuple.getValue());
                    }
                } catch (IOException e2) {
                    NamingException namingException = new NamingException("Failed on call to jdbm TupleBrowser.getNext()");
                    namingException.setRootCause(e2);
                    throw namingException;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return next;
    }

    @Override // org.apache.ldap.server.db.TupleBrowser
    public boolean getPrevious(org.apache.ldap.server.db.Tuple tuple) throws NamingException {
        boolean previous;
        synchronized (this.jdbmTuple) {
            try {
                try {
                    previous = this.jdbmBrowser.getPrevious(this.jdbmTuple);
                    if (previous) {
                        tuple.setKey(this.jdbmTuple.getKey());
                        tuple.setValue(this.jdbmTuple.getValue());
                    }
                } catch (IOException e2) {
                    NamingException namingException = new NamingException("Failed on call to jdbm TupleBrowser.getPrevious()");
                    namingException.setRootCause(e2);
                    throw namingException;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return previous;
    }
}
