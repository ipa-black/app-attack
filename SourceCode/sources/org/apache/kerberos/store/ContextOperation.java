package org.apache.kerberos.store;

import java.io.Serializable;
import javax.naming.Name;
import javax.naming.directory.DirContext;
/* loaded from: classes5.dex */
public interface ContextOperation extends Serializable {
    Object execute(DirContext dirContext, Name name) throws Exception;
}
